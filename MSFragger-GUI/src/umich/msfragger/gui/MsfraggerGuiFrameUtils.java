package umich.msfragger.gui;

import static umich.msfragger.params.fragger.FraggerMigPanel.PROP_FILECHOOSER_LAST_PATH;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.Desktop;
import java.awt.Font;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Optional;
import java.util.Properties;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import javax.swing.Box;
import javax.swing.JEditorPane;
import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.SwingUtilities;
import javax.swing.event.HyperlinkEvent;
import javax.swing.event.HyperlinkListener;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.DefaultTableModel;
import javax.swing.text.JTextComponent;
import net.java.balloontip.BalloonTip;
import net.java.balloontip.styles.RoundedBalloonStyle;
import org.greenrobot.eventbus.EventBus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import umich.msfragger.Version;
import umich.msfragger.cmd.CmdMsfragger;
import umich.msfragger.gui.api.SearchTypeProp;
import umich.msfragger.messages.MessageSearchType;
import umich.msfragger.messages.MessageShowAboutDialog;
import umich.msfragger.params.ThisAppProps;
import umich.msfragger.params.philosopher.PhilosopherProps;
import umich.msfragger.util.FileListing;
import umich.msfragger.util.IValidateString;
import umich.msfragger.util.OsUtils;
import umich.msfragger.util.PythonInfo;
import umich.msfragger.util.StringUtils;
import umich.msfragger.util.SwingUtils;
import umich.msfragger.util.VersionComparator;
import umich.swing.console.TextConsole;

public class MsfraggerGuiFrameUtils {
  private static final Logger log = LoggerFactory.getLogger(MsfraggerGuiFrameUtils.class);
  private MsfraggerGuiFrameUtils() {}


  public static Path userShowLoadFileDialog(String title, FileNameExtensionFilter filter, Component owner) {
    JFileChooser fc = new JFileChooser();
    fc.setApproveButtonText("Load");
    fc.setDialogTitle(title);
    fc.setMultiSelectionEnabled(false);

    fc.setAcceptAllFileFilterUsed(true);
    if (filter != null) {
      fc.setFileFilter(filter);
    }

    final String propName = ThisAppProps.PROP_FRAGGER_PARAMS_FILE_IN;
    ThisAppProps.load(propName, fc);

    Component parent = SwingUtils.findParentFrameForDialog(owner);
    int saveResult = fc.showOpenDialog(parent);
    if (JFileChooser.APPROVE_OPTION == saveResult) {
      File selectedFile = fc.getSelectedFile();
      Path path = Paths.get(selectedFile.getAbsolutePath());
      ThisAppProps.save(propName, path.toString());
      if (Files.exists(path)) {
        return path;
      } else {
        JOptionPane.showMessageDialog(parent, "<html>This is strange,<br/> "
                + "but the file you chose to load doesn't exist anymore.", "Strange",
            JOptionPane.ERROR_MESSAGE);
      }
    }
    return null;
  }

  /**
   * @param selectedFn can be null.
   * @param owner can be null. Used for positioning the dialog on the screen.
   */
  public static Path userShowSaveFileDialog(String title, String selectedFn, Component owner) {
    JFileChooser fc = new JFileChooser();
    fc.setApproveButtonText("Save");
    fc.setDialogTitle(title);
    fc.setMultiSelectionEnabled(false);
    SwingUtils.setFileChooserPath(fc, ThisAppProps.load(PROP_FILECHOOSER_LAST_PATH));
//    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
//    Date now = new Date();
//    fc.setSelectedFile(new File(String.format("log_%s.txt", df.format(now))));
    if (selectedFn != null) {
      fc.setSelectedFile(new File(selectedFn));
    }
    Component parent = SwingUtils.findParentFrameForDialog(owner);
    int saveResult = fc.showSaveDialog(parent);

    if (JFileChooser.APPROVE_OPTION != saveResult) {
      return null;
    }
    File selectedFile = fc.getSelectedFile();
    Path path = Paths.get(selectedFile.getAbsolutePath());
    // if exists, overwrite
    if (Files.exists(path)) {
      int overwrite = JOptionPane
          .showConfirmDialog(parent, "<html>File exists, overwrtie?<br/><br/>" + path.toString(), "Overwrite",
              JOptionPane.OK_CANCEL_OPTION);
      if (JOptionPane.OK_OPTION == overwrite) {
        try {
          Files.delete(path);
        } catch (IOException ex) {
          JOptionPane.showMessageDialog(parent, "Could not overwrite", "Overwrite",
              JOptionPane.ERROR_MESSAGE);
          return null;
        }
      }
    }
    // do something with the path
    return path;
  }

  public static void validateAndSavePython(final String binPath, boolean showPopupOnError, Component popupParent) {
    log.debug("Inside validateAndSavePython, thread not yet started");
    new Thread(() -> {
      log.debug("Inside validateAndSavePython, from started thread");
      boolean ok;
      PythonInfo pi = PythonInfo.get();
      try {
        ok = PythonInfo.get().setPythonCommand(binPath);
      } catch (Exception e) {
        ok = false;
      }
      if (ok) {
        ThisAppProps.save(ThisAppProps.PROP_BIN_PATH_PYTHON, pi.getCommand());
      } else {
        ThisAppProps.save(ThisAppProps.PROP_BIN_PATH_PYTHON, "");
      }
      if (!ok && showPopupOnError) {
        JOptionPane.showMessageDialog(popupParent,
            "Not a valid Python binary path:\n\n" + binPath, "Not a Python binary",
            JOptionPane.WARNING_MESSAGE);
      }
    }).start();
  }

  public static void validatePhilosopherVersion(MsfraggerGuiFrame msfraggerGuiFrame, String binPath,
      Pattern regexNewerVerFound,
      Pattern regexVersion, Pattern regexOldPhiVer, VersionComparator vc) {
    // get the vesrion reported by the current executable
    // if we couldn't download remote properties, try using local ones
    // if we have some philosopher properties (local or better remote)
    // then check if this version is known to be compatible

    ProcessBuilder pb = new ProcessBuilder(binPath, "version");
    pb.redirectErrorStream(true);

    boolean isNewVersionStringFound = false;
    String curVersionAndBuild = null;
    String curPhiVer = null;

    // get the vesrion reported by the current executable
    String oldUnusedDownloadLink = null;
    try {
      Process pr = pb.start();
      BufferedReader in = new BufferedReader(new InputStreamReader(pr.getInputStream()));
      String line;
      while ((line = in.readLine()) != null) {
        Matcher m = regexNewerVerFound.matcher(line);
        if (m.find()) {
          isNewVersionStringFound = true;
          oldUnusedDownloadLink = m.group(1);
        }
        Matcher mVer = regexVersion.matcher(line);
        if (mVer.find()) {
          curVersionAndBuild = mVer.group("version") + " (build " + mVer.group("build") + ")";
          curPhiVer = mVer.group("version");
          log.debug("Detected philosopher version: {}", curPhiVer);
        }
      }

      msfraggerGuiFrame.philosopherVer = StringUtils
          .isNullOrWhitespace(curVersionAndBuild) ? MsfraggerGuiFrame.UNKNOWN_VERSION
          : curVersionAndBuild;
      msfraggerGuiFrame.getLabelPhilosopherInfo().setText(String.format(
          "Philosopher version: %s. %s", msfraggerGuiFrame.philosopherVer, OsUtils.OsInfo()));

      int returnCode = pr.waitFor();
      JEditorPane ep = null;

      String vCurMajor = Version.version().split("[-_]+")[0];
      Properties props = PhilosopherProps.getProperties();
      String propKeyStubMin = PhilosopherProps.PROP_LOWEST_COMPATIBLE_VERSION + "." + vCurMajor;
      Optional<String> propKeyMin = props.stringPropertyNames().stream()
          .filter(name -> name.startsWith(propKeyStubMin)).findFirst();
      String minPhiVer = propKeyMin.map(props::getProperty).orElse(null);
      String propKeyStubMax = PhilosopherProps.PROP_LATEST_COMPATIBLE_VERSION + "." + vCurMajor;
      Optional<String> propKeyMax = props.stringPropertyNames().stream()
          .filter(name -> name.startsWith(propKeyStubMax)).findFirst();
      String maxPhiVer = propKeyMax.map(props::getProperty).orElse(null);

      String link = PhilosopherProps.getProperties().getProperty(PhilosopherProps.PROP_DOWNLOAD_URL, "https://github.com/Nesvilab/philosopher/releases");

      boolean isOldVersionScheme = curPhiVer != null && regexOldPhiVer.matcher(curPhiVer).find();
      if (isOldVersionScheme)
        log.debug("Old philosopher versioning scheme detected");

      if (returnCode != 0 || isOldVersionScheme || curPhiVer == null) {
        StringBuilder sb = new StringBuilder("This Philosopher version is no longer supported by FragPipe.<br/>\n");
        if (minPhiVer != null)
          sb.append("Minimum required version: ").append(minPhiVer).append("<br/>\n");
        if (maxPhiVer != null)
          sb.append("Latest known compatible version: ").append(maxPhiVer).append("<br/>\n");
        sb.append("Please <a href=\"").append(link).append("\">click here</a> to download a newer one.");
        ep = SwingUtils.createClickableHtml(sb.toString(), msfraggerGuiFrame.balloonBgColor);

      } else {

        if (minPhiVer != null && vc.compare(curPhiVer, minPhiVer) < 0) {
          // doesn't meet min version requirement
          StringBuilder sb = new StringBuilder("Philosopher version ")
              .append(curPhiVer).append(" is no longer supported by FragPipe.<br/>\n");
          sb.append("Minimum required version: ").append(minPhiVer).append("<br/>\n");
          if (maxPhiVer != null)
            sb.append("Latest known compatible version: ").append(maxPhiVer).append("<br/>\n");
          sb.append("Please <a href=\"").append(link).append("\">click here</a> to download a newer one.");
          ep = SwingUtils.createClickableHtml(sb.toString(), msfraggerGuiFrame.balloonBgColor);

        } else if (isNewVersionStringFound) {
          StringBuilder sb = new StringBuilder();
          sb.append("Newer version of Philosopher available.<br/>\n");
          sb.append("<a href=\"").append(link).append("\">Click here</a> to download.<br/>\n");

          if (maxPhiVer == null) {
            sb.append(
                "<br>\nHowever, we have not yet checked if it's fully compatible with this version of ")
                .append(Version.PROGRAM_TITLE).append(".");
          } else { // max ver != null
            int cmp = vc.compare(curPhiVer, maxPhiVer);
            if (cmp == 0) {
              sb.append(
                  "<br>\nHowever, <b>you currently have the latest known tested version</b>.");
            } else if (cmp < 0) {
              sb.append("<br>\nThe latest known tested version is<br>\n")
                  .append("<b>Philosopher ").append(maxPhiVer).append("</b>.<br/>\n");
              sb.append(
                  "It is not recommended to upgrade to newer versions unless they are tested.");
            } else if (cmp > 0) {
              sb.append("<br>\nYour current version is higher than the last known tested version.");
            }
          }
          ep = SwingUtils.createClickableHtml(sb.toString(), msfraggerGuiFrame.balloonBgColor);
        }
      }

      if (ep != null) {
        if (msfraggerGuiFrame.balloonPhilosopher != null) {
          msfraggerGuiFrame.balloonPhilosopher.closeBalloon();
        }
        msfraggerGuiFrame.balloonPhilosopher = new BalloonTip(msfraggerGuiFrame.getTextPhilosopherBin(), ep,
            new RoundedBalloonStyle(5, 5, msfraggerGuiFrame.balloonBgColor, Color.BLACK), true);
        msfraggerGuiFrame.balloonPhilosopher.setVisible(true);
      }

    } catch (IOException | InterruptedException e) {
      throw new IllegalStateException(
          "Error while creating a java process for Philosopher test.");
    }
  }

  public static void findToolsAction(MsfraggerGuiFrame msfraggerGuiFrame) {
    String fraggerFoundPath = null;
    String philosopherFoundPath = null;

    JFileChooser fileChooser = new JFileChooser();
    fileChooser.setApproveButtonText("Search here");
    fileChooser.setApproveButtonToolTipText("Search this directory recursively");
    fileChooser.setDialogTitle("Select path to search for binaries");
    fileChooser.setMultiSelectionEnabled(false);
    fileChooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);

    List<String> props = Arrays
        .asList(ThisAppProps.PROP_BIN_PATH_MSFRAGGER, ThisAppProps.PROP_BINARIES_IN,
            ThisAppProps.PROP_BIN_PATH_PHILOSOPHER);
    String fcPath = ThisAppProps.tryFindPath(props, true);
    SwingUtils.setFileChooserPath(fileChooser, fcPath);

    int showOpenDialog = fileChooser.showOpenDialog(SwingUtils.findParentFrameForDialog(
        msfraggerGuiFrame));
    switch (showOpenDialog) {
      case JFileChooser.APPROVE_OPTION:
        File f = fileChooser.getSelectedFile();

        // Fragger first
        Pattern regexFragger = Pattern
            .compile(".*?MSFragger[^\\/]+?\\.jar", Pattern.CASE_INSENSITIVE);
        FileListing listing = new FileListing(Paths.get(f.getAbsolutePath()), regexFragger);
        List<Path> foundFiles = listing.findFiles();
        for (Path foundFile : foundFiles) {
          if (msfraggerGuiFrame.validateAndSaveMsfraggerPath(foundFile.toString())) {
            fraggerFoundPath = foundFile.toString();
            ThisAppProps.save(ThisAppProps.PROP_BINARIES_IN, fraggerFoundPath);
            JOptionPane.showMessageDialog(msfraggerGuiFrame, "Found MSFragger jar.\n"
                + fraggerFoundPath, "Info", JOptionPane.INFORMATION_MESSAGE);
            break;
          }
        }
        if (fraggerFoundPath == null) {
          JOptionPane.showMessageDialog(msfraggerGuiFrame, "Could not locate MSFragger jar.", "Info",
              JOptionPane.INFORMATION_MESSAGE);
        }

        // now philosopher
        Pattern regexPhilosopher = Pattern
            .compile(".*?philosopher[^\\/]*", Pattern.CASE_INSENSITIVE);
        foundFiles = new FileListing(Paths.get(f.getAbsolutePath()), regexPhilosopher).findFiles();
        for (Path foundFile : foundFiles) {
          if (msfraggerGuiFrame.validateAndSavePhilosopherPath(foundFile.toString())) {
            philosopherFoundPath = foundFile.toString();
            ThisAppProps.save(ThisAppProps.PROP_BINARIES_IN, philosopherFoundPath);
            JOptionPane.showMessageDialog(msfraggerGuiFrame, "Found Philosopher.\n"
                + philosopherFoundPath, "Info", JOptionPane.INFORMATION_MESSAGE);
            break;
          }
        }
        if (philosopherFoundPath == null) {
          JOptionPane.showMessageDialog(msfraggerGuiFrame, "Could not locate Philosopher.", "Info",
              JOptionPane.INFORMATION_MESSAGE);
        }

        break;
    }
  }

  public static void userBrowsePhilosopherBin(MsfraggerGuiFrame msfraggerGuiFrame) {
    JFileChooser fc = new JFileChooser();
    fc.setApproveButtonText("Select");
    fc.setDialogTitle("Select Philosopher binary");
    fc.setMultiSelectionEnabled(false);
//    if (OsUtils.isWindows()) {
//      FileNameExtensionFilter fileNameExtensionFilter = new FileNameExtensionFilter("Executables",
//          "exe");
//      fc.setFileFilter(fileNameExtensionFilter);
//    }

    fc.setFileSelectionMode(JFileChooser.FILES_ONLY);

    // ==============================================================
    Path current = msfraggerGuiFrame.tryFindStartingPath(msfraggerGuiFrame.getTextPhilosopherBin().getText());
    if (current != null) {
      SwingUtils.setFileChooserPath(fc, current);
    } else {
      List<String> props = Arrays.asList(ThisAppProps.PROP_BIN_PATH_PHILOSOPHER, ThisAppProps.PROP_BINARIES_IN);
      String fcPath = ThisAppProps.tryFindPath(props, false);
      SwingUtils.setFileChooserPath(fc, fcPath);
    }
    // ==============================================================

    if (JFileChooser.APPROVE_OPTION == fc
        .showOpenDialog(SwingUtils.findParentFrameForDialog(msfraggerGuiFrame))) {
      String path = fc.getSelectedFile().getAbsolutePath();
      if (msfraggerGuiFrame.validateAndSavePhilosopherPath(path)) {
        // already saved to PROP_PHILOSOPHER, now save to general PROP_BINARIES
        ThisAppProps.save(ThisAppProps.PROP_BINARIES_IN, path);
      }
    }
  }

  public static boolean validateAndSave(final HashMap<String, BalloonTip> tipMap,
      final JTextComponent comp, final String propName,
      final String newText, final IValidateString valid) {

    final String updText = newText != null ? newText : comp.getText().trim();
    final boolean isValid = valid.test(updText);
    comp.setText(updText);
    if (isValid) {
      ThisAppProps.save(propName, updText);
    }

    SwingUtilities.invokeLater(new Runnable() {
      @Override
      public void run() {
        BalloonTip tip = tipMap.get(propName);
        if (tip != null) {
          tip.closeBalloon();
        }

        if (!isValid) {
          tip = new BalloonTip(comp, "Invalid format.");
          tip.setVisible(true);
          tipMap.put(propName, tip);
        }
      }
    });

    return isValid;
  }

  /**
   * Collects all tabs' components that have names with values from the map.
   * @param tabPane
   */
  public static Map<String, String> formTo(JTabbedPane tabPane) {
    // getting tab names
    Map<Integer, String> mapTabNameToIdx = new HashMap<>();
    for (int i = 0, tabCount = tabPane.getTabCount(); i < tabCount; i++) {
      mapTabNameToIdx.put(i, tabPane.getTitleAt(i));
    }

    final Function<Component, Map<String, String>> compToMap = awtComponent -> {
      if (!(awtComponent instanceof Container)) {
        return Collections.emptyMap();
      }
      Container awtContainer = (Container)awtComponent;
//      final Pattern re = Pattern.compile("ui\\.name\\..*");
//      Predicate<String> filter = re.asPredicate();
      Predicate<String> filter = s -> true;
      Map<String, String> map = SwingUtils.valuesToMap(awtContainer, filter);
      return map;
    };

    Map<String, String> whole = new HashMap<>();
    for (int i = 0; i < tabPane.getTabCount(); i++) {
      Component compAt = tabPane.getComponentAt(i);
      final String tabname = mapTabNameToIdx.getOrDefault(i, "?");
      Map<String, String> map = compToMap.apply(compAt);
      final String badName = "Spinner.formattedTextField";
      if (map.containsKey(badName)) {
        map.remove(badName);
      }
      if (map.isEmpty()) {
        log.debug("No mapping for Tab #{} [{}]", i, tabname);
      } else {

        log.debug("Got mapping for Tab #{} [{}]: {}", i, tabname, map);
        for (Entry<String, String> e : map.entrySet()) {
          whole.merge(e.getKey(), e.getValue(), (s1, s2) -> {
            String msg = String.format("Duplicate ui-element key '%s' in tab [%s]", e.getKey(), tabname);
            throw new IllegalStateException(msg);
          });
        }
      }
    }
    return whole;
  }

  public static void onShowAbout(MsfraggerGuiFrame guiFrame, MessageShowAboutDialog m) {
    // for copying style
    JLabel label = new JLabel();
    Font font = label.getFont();

    // create some css from the label's font
    StringBuilder style = new StringBuilder("font-family:" + font.getFamily() + ";");
    style.append("font-weight:").append(font.isBold() ? "bold" : "normal").append(";");
    style.append("font-size:").append(font.getSize()).append("pt;");


    final Properties p = ThisAppProps.getRemotePropertiesWithLocalDefaults();
    String linkDl = p.getProperty(Version.PROP_DOWNLOAD_URL, "");
    String linkSite = p.getProperty(ThisAppProps.PROP_LAB_SITE_URL, "http://nesvilab.org");
    String linkToPaper = p.getProperty(ThisAppProps.PROP_MANUSCRIPT_URL, "http://www.nature.com/nmeth/journal/v14/n5/full/nmeth.4256.html");

    JEditorPane ep = new JEditorPane("text/html", "<html><body style=\"" + style + "\">"
        + "MSFragger - Ultrafast Proteomics Search Engine<br/>"
        + "FragPipe (v" + Version.version() + ")<br/>"
        + "Dmitry Avtonomov<br/>"
        + "University of Michigan, 2017<br/><br/>"
        + "<a href=\"" + linkDl
        + "\">Click here to download</a> the latest version<br/><br/>"
        + "<a href=\"" + linkSite + "\">Alexey Nesvizhskii lab</a><br/>&nbsp;<br/>&nbsp;"
        + "MSFragger authors and contributors:<br/>"
        + "<ul>"
        + "<li>Andy Kong</li>"
        + "<li>Dmitry Avtonomov</li>"
        + "<li>Guo-Ci Teo</li>"
        + "<li>Fengchao Yu</li>"
        + "<li>Alexey Nesvizhskii</li>"
        + "</ul>"
        + "<a href=\"" + linkToPaper + "\">Link to the research manuscript</a><br/>"
        + "Reference: <b>doi:10.1038/nmeth.4256</b><br/><br/>"
        + "Components and Downstream tools:"
        + "<ul>"
        + "<li><a href='https://philosopher.nesvilab.org/'>Philosopher</a>: Felipe Leprevost</li>"
        + "<li>PTM-Shepherd: Andy Kong</li>"
        + "<li>Crystal-C: Hui-Yin Chang</li>"
        + "<li>Spectral library generation: Guo-Ci Teo</li>"
        + "<li><a href='https://diaumpire.nesvilab.org/'>DIA-Umpire</a>: Chih-Chiang Tsou</li>"
        + "</ul>"
        + "</body></html>");

    // handle link messages
    ep.addHyperlinkListener(new HyperlinkListener() {
      @Override
      public void hyperlinkUpdate(HyperlinkEvent e) {
        if (e.getEventType().equals(HyperlinkEvent.EventType.ACTIVATED)) {
          try {
            Desktop.getDesktop().browse(e.getURL().toURI());
          } catch (URISyntaxException | IOException ex) {
            java.util.logging.Logger
                .getLogger(MsfraggerGuiFrame.class.getName()).log(Level.SEVERE, null, ex);
          }
        }
      }
    });
    ep.setEditable(false);
    ep.setBackground(label.getBackground());

    // show
    JOptionPane.showMessageDialog(guiFrame, ep, "About", JOptionPane.INFORMATION_MESSAGE);
  }

  static void checkPreviouslySavedParams(MsfraggerGuiFrame guiFrame) {
    log.debug("entered checkPreviouslySavedParams");
    ThisAppProps cached = ThisAppProps.loadFromTemp();
    if (cached != null) {
      // if there was a cached version of properties
      VersionComparator vc = new VersionComparator();
      String storedVer = cached.getProperty(Version.PROP_VER, "0.0");
      if (vc.compare(storedVer, "4.0") < 0) {
        // and the version was less than 4.0
        String msg = String.format(Locale.ROOT, "Looks like you've upgraded from an "
            + "older version to 4.0+,\n"
            + "it is HIGHLY recommended to reset the default parameters.\n\n"
            + "Reset the parameters now? \n\n"
            + "This message won't be displayed again.");
        String[] options = {"Cancel", "Load defaults for Closed", "Load defaults of Open"};
        int result = JOptionPane.showOptionDialog(guiFrame, msg, "Reset to defautls",
            JOptionPane.DEFAULT_OPTION, JOptionPane.QUESTION_MESSAGE, null, options, options[0]);
        switch (result) {
          case 1:
            EventBus.getDefault().post(new MessageSearchType(SearchTypeProp.closed));
            break;
          case 2:
            EventBus.getDefault().post(new MessageSearchType(SearchTypeProp.open));
            break;
        }

        // rewrite the cached params file with a versioned one
        ThisAppProps.save(Version.PROP_VER, Version.version());
      } else if (vc.compare(storedVer, "4.0") >= 0 && vc.compare(storedVer, "5.1") <= 0) {
        // and the version between 4.0 and 5.1
        final String prop = ThisAppProps.PROP_TEXT_CMD_PEPTIDE_PROPHET;
        String oldPepProphStr = ThisAppProps.load(prop);
        Pattern re = Pattern.compile("--clevel\\s+2");
        if (oldPepProphStr != null) {
          Matcher m = re.matcher(oldPepProphStr);
          if (m.find()) {
            String replaced = oldPepProphStr.replaceAll(re.pattern(), "--clevel -2");
            ThisAppProps.save(prop, replaced);
            ThisAppProps.load(prop, guiFrame.getTextPepProphCmd());

            String msg = String.format(Locale.ROOT,
                "<html>We've noticed a cached leftover buggy option for PeptideProphet "
                    + "'--clevel 2' and automatically replaced \n"
                    + "it with '--clevel -2'.\n\n"
                    + "If you know what you're doing and intended it to be '--clevel 2' "
                    + "please change it back on PeptideProphet tab.\n\n"
                    + "You also have the option to reload defaults. "
                    + "This message won't be displayed again.");
            String[] options = {"Ok", "Load defaults for Closed Search",
                "Load defaults of Open Search"};
            int result = JOptionPane
                .showOptionDialog(guiFrame, msg, "Cached option automatically replaced",
                    JOptionPane.DEFAULT_OPTION, JOptionPane.QUESTION_MESSAGE, null, options,
                    options[0]);
            switch (result) {
              case 1:
                EventBus.getDefault().post(new MessageSearchType(SearchTypeProp.closed));
                break;
              case 2:
                EventBus.getDefault().post(new MessageSearchType(SearchTypeProp.open));
                break;
            }
          }
        }

        // rewrite the cached params file with a versioned one
        ThisAppProps.save(Version.PROP_VER, Version.version());
      }
    }
  }

  static void actionSelectWorkingDir(MsfraggerGuiFrame guiFrame) {
    JFileChooser fc = new JFileChooser();
    //FileNameExtensionFilter fileNameExtensionFilter = new FileNameExtensionFilter("FASTA files", "fa", "fasta");
    //fileChooser.setFileFilter(fileNameExtensionFilter);
    fc.setApproveButtonText("Select directory");
    fc.setApproveButtonToolTipText("Select");
    fc.setDialogTitle("Choose working directory");
    fc.setMultiSelectionEnabled(false);
    fc.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);

    // use either current text in the field or saved cache
    log.debug("Preparing work dir file chooser, ThisAppProps.PROP_FILE_OUT is: {}", ThisAppProps.load(ThisAppProps.PROP_FILE_OUT));
    final String text = guiFrame.getTxtWorkingDir().getText().trim();
    if (!StringUtils.isNullOrWhitespace(text)) {
      try {
        Path p = Paths.get(guiFrame.getTxtWorkingDir().getText());
        if (Files.exists(p)) {
          fc.setSelectedFile(p.toFile());
        }
      } catch (Exception ignored) {}
    } else {
      ThisAppProps.load(ThisAppProps.PROP_FILE_OUT, fc);
    }

    int showOpenDialog = fc.showOpenDialog(guiFrame);
    switch (showOpenDialog) {
      case JFileChooser.APPROVE_OPTION:
        File f = fc.getSelectedFile();
        guiFrame.getTxtWorkingDir().setText(f.getAbsolutePath());
        ThisAppProps.save(ThisAppProps.PROP_FILE_OUT, f.getAbsolutePath());
        break;
    }
  }

  static void exportLogToFile(MsfraggerGuiFrame guiFrame) {
    if (guiFrame.console == null) {
      return;
    }

    JFileChooser fc = new JFileChooser();
    fc.setApproveButtonText("Save");
    fc.setDialogTitle("Export to");
    fc.setMultiSelectionEnabled(false);
    SwingUtils.setFileChooserPath(fc, ThisAppProps.load(PROP_FILECHOOSER_LAST_PATH));
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
    Date now = new Date();
    fc.setSelectedFile(new File(String.format("log_%s.txt", df.format(now))));
    Component parent = SwingUtils.findParentFrameForDialog(guiFrame);
    int saveResult = fc.showSaveDialog(parent);
    if (JFileChooser.APPROVE_OPTION == saveResult) {
      File selectedFile = fc.getSelectedFile();
      Path path = Paths.get(selectedFile.getAbsolutePath());
      // if exists, overwrite
      if (Files.exists(path)) {
        int overwrite = JOptionPane
            .showConfirmDialog(parent, "<html>File exists, overwrtie?<br/><br/>" + path.toString(), "Overwrite",
                JOptionPane.OK_CANCEL_OPTION);
        if (JOptionPane.OK_OPTION == overwrite) {
          try {
            Files.delete(path);
          } catch (IOException ex) {
            JOptionPane.showMessageDialog(parent, "Could not overwrite", "Overwrite",
                JOptionPane.ERROR_MESSAGE);
            return;
          }
        }
      }
      saveLogToFile(guiFrame.console, path);
    }

  }

  static void saveLogToFile(TextConsole console, Path path) {
    final String text = console.getText().replaceAll("[^\n]+\u200B\r\n", "");
    byte[] bytes = text.getBytes(StandardCharsets.UTF_8);
    try {
      Files.write(path, bytes, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING);
    } catch (IOException e) {
      log.error("Error writing log to file", e);
    }
  }

  static void checkPython(MsfraggerGuiFrame guiFrame) {
    String path = ThisAppProps.load(ThisAppProps.PROP_BIN_PATH_PYTHON);
    PythonInfo pi = PythonInfo.get();
    if (path != null) {
      try {
        if (!pi.setPythonCommand(path)) {
          throw new Exception("Could not set python command to the old value");
        }
      } catch (Exception e) {
        ThisAppProps.save(ThisAppProps.PROP_BIN_PATH_PYTHON, "");
        int yesNo = JOptionPane.showConfirmDialog(guiFrame,
            "Previously stored Python location is now invalid:\n"
                + "\t" + path + "\n\nDo you want to try automatically find the Python binary?",
            "Previously used Python not available", JOptionPane.YES_NO_OPTION,
            JOptionPane.WARNING_MESSAGE);
        if (JOptionPane.YES_OPTION == yesNo) {
          try {
            pi.findPythonCommand();
            if (!pi.isInitialized()) {
              throw new Exception("Python command not found");
            }
          } catch (Exception e1) {
            JOptionPane.showMessageDialog(guiFrame,
                "Python not found.\n\n"
                    + "You can manually select Python binary\n"
                    + "if you know where it is located.",
                "Error", JOptionPane.WARNING_MESSAGE);
          }
        }
      }
      return;
    }
    // No python location was stored. It's only stored when a user manually changes the location.
    // try to auto-detect Python binary
    try {
      PythonInfo.get().findPythonCommand();
    } catch (Exception ignored) {
    }
  }

  public static class LcmsFileAddition {
    List<Path> paths;
    List<Path> toAdd;

    public LcmsFileAddition(List<Path> paths, List<Path> toAdd) {
      this.paths = paths;
      this.toAdd = toAdd;
    }
  }

  public static void processAddedLcmsPaths(LcmsFileAddition files, MsfraggerGuiFrame guiFrame) {
    // save locations
    ThisAppProps.save(ThisAppProps.PROP_LCMS_FILES_IN, files.paths.get(files.paths.size()-1).toString());

    // vet/check input LCMS files for bad naming
    final javax.swing.filechooser.FileFilter ff = CmdMsfragger.getFileChooserFilter(guiFrame.getExtBinSearchPaths());
    final HashMap<Path, Set<String>> reasonsDir = new HashMap<>();
    final HashMap<Path, Set<String>> reasonsFn = new HashMap<>();
    //final HashMap<String, List<Path>> reasonsRev = new HashMap<>();
    final String allowedChars = "[A-Za-z0-9-_+.\\[\\]()]";
    Pattern re = Pattern.compile(allowedChars + "+");
    final String REASON_NON_ASCII = "Non-ASCII chars";
    final String REASON_PATH_SPACES = "Path contains spaces";
    final String REASON_FN_DOTS = "Filename contains dots";
    final String REASON_UNSUPPORTED = "Not supported";
    final String REASON_DISALLOWED_CHARS = "Contains characters other than: " + allowedChars;

    for (Path path : files.paths) {
      Set<String> why = InputLcmsFile.validatePath(path.getParent().toString());
      if (!why.isEmpty()) {
        reasonsDir.put(path, why);
      }
    }

    for (Path path : files.paths) {
      Set<String> why = InputLcmsFile.validateFilename(path.getFileName().toString());
      if (!why.isEmpty()) {
        reasonsFn.put(path, why);
      }
    }

    // in case there were suspicious paths
    if (!reasonsDir.isEmpty() || !reasonsFn.isEmpty()) {
      HashMap<Path, String> path2reasons = new HashMap<>();
      for (Entry<Path, Set<String>> kv : reasonsDir.entrySet()) {
        for (String reason : kv.getValue()) {
          path2reasons.compute(kv.getKey(), (path, s) -> s == null ? "Direcotry " + reason : s.concat(", Direcotry " + reason));
        }
      }
      for (Entry<Path, Set<String>> kv : reasonsFn.entrySet()) {
        for (String reason : kv.getValue()) {
          path2reasons.compute(kv.getKey(), (path, s) -> s == null ? "File name " + reason : s.concat(", File name " + reason));
        }
      }
      String[] columns = {"Reasons", "Path"};
      String[][] data = new String[path2reasons.size()][2];
      int index = -1;
      for (Entry<Path, String> kv : path2reasons.entrySet()) {
        data[++index][0] = kv.getValue();
        data[index][1] = kv.getKey().toString();
      }

      DefaultTableModel model = new DefaultTableModel(data, columns);
      JTable table = new JTable(model);
      table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);
      JPanel panel = new JPanel(new BorderLayout());
      panel.add(new JLabel("<html>Found problems with some files (" + path2reasons.size() + " of " + files.paths.size() + ").<br/>"
          + "This <b>will likely cause trouble</b> with some of processing tools.<br/><br/>"
          + "What do you want to do with these files?<br/>"), BorderLayout.NORTH);
      panel.add(Box.createVerticalStrut(100), BorderLayout.CENTER);
      panel.add(new JScrollPane(table), BorderLayout.CENTER);
      SwingUtils.makeDialogResizable(panel);

      String[] options;
      if (!reasonsFn.isEmpty()) {
        options = new String[]{"Cancel", "Add anyway", "Only add well-behaved files", "Try rename files"};
      } else {
        options = new String[]{"Cancel", "Add anyway", "Only add well-behaved files"};
      }

      int confirmation = JOptionPane
          .showOptionDialog(guiFrame, panel, "Add these files?",
              JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE, null, options, options[0]);

      switch (confirmation) {
        case 0:
          return;
        case 1:
          break;
        case 2:
          files.toAdd = files.toAdd.stream().filter(path -> !path2reasons.containsKey(path)).collect(Collectors.toList());
          break;
        case 3: // rename files
          int confirm1 = SwingUtils.showConfirmDialog(guiFrame, new JLabel(
              "<html>Attempt to rename files without moving them.<br/>\n" +
                  "This is a non-reversible operation.<br/><br/>\n" +
                  "We'll show you a preview before proceeding with actual renaming.<br/>\n" +
                  "Do you want to continue?"));
          if (JOptionPane.YES_OPTION != confirm1) {
            return;
          }
          final Map<Path, Path> toRename = reasonsFn.keySet().stream()
              .collect(Collectors.toMap(Function.identity(), InputLcmsFile::renameBadFile));
          Set<Path> uniqueRenamed = new HashSet<>(toRename.values());
          if (uniqueRenamed.size() != reasonsFn.size()) {
            SwingUtils.showDialog(guiFrame, new JLabel(
                    "<html>Renaming given files according to our scheme would result<br/>\n" +
                        "in clashing file paths. Renaming cancelled. Consider renaming manually.<br/>\n" +
                        "It is preferable to not have spaces in file names, not have more than one dot<br/>\n" +
                        "and to not use non-latin characters."),
                "Not safe to rename files", JOptionPane.WARNING_MESSAGE);
            return;
          }

          final Map<Path, Path> existingRenames = new HashMap<>();
          for (Entry<Path, Path> kv : toRename.entrySet()) {
            if (Files.exists(kv.getValue())) {
              existingRenames.put(kv.getKey(), kv.getValue());
            }
          }
          if (!existingRenames.isEmpty()) {
            JPanel pane = new JPanel(new BorderLayout());
            pane.add(new JLabel("<html>Renaming given files according to our scheme would result<br/>\n" +
                "in file paths that already exist on your computer.<br/>\n" +
                "Renaming cancelled."), BorderLayout.NORTH);

            pane.add(new JScrollPane(SwingUtils.tableFromTwoSiblingFiles(existingRenames)));
            SwingUtils.showDialog(guiFrame, pane,
                "Not safe to rename files", JOptionPane.WARNING_MESSAGE);
            return;
          }

        {
          JPanel pane = new JPanel(new BorderLayout());
          pane.add(new JLabel("<html>Proposed renaming scheme, do you agree?<br/>\n"));
          pane.add(new JScrollPane(SwingUtils.tableFromTwoSiblingFiles(toRename)));
          int confirm2 = SwingUtils.showConfirmDialog(guiFrame, pane);
          if (JOptionPane.YES_OPTION != confirm2) {
            return;
          }
        }

        final Map<Path, Path> couldNotRename = new HashMap<>();
        final Map<Path, Path> renamedOk = new HashMap<>();
        Runnable runnable = () -> {
          for (Entry<Path, Path> kv : toRename.entrySet()) {
            try {
              Files.move(kv.getKey(), kv.getValue());
              renamedOk.put(kv.getKey(), kv.getValue());
            } catch (Exception e) {
              log.error(String.format("From '%s' to '%s' at '%s'",
                  kv.getKey().getFileName(), kv.getValue().getFileName(), kv.getKey().getParent()));
              couldNotRename.put(kv.getKey(), kv.getValue());
            }
          }
        };

        SwingUtils.DialogAndThread dat = SwingUtils.runThreadWithProgressBar("Renaming files", guiFrame, runnable);
        dat.thread.start();
        dat.dialog.setVisible(true);

        if (!couldNotRename.isEmpty()) {
          JPanel pane = new JPanel(new BorderLayout());
          pane.add(new JLabel("<html>Unfortunately could not rename some of the files:<br/>"), BorderLayout.NORTH);
          pane.add(new JScrollPane(SwingUtils.tableFromTwoSiblingFiles(couldNotRename)), BorderLayout.CENTER);
          SwingUtils.showDialog(guiFrame, pane, "Renaming failed", JOptionPane.WARNING_MESSAGE);
          return;
        }

        // renaming succeeded, change paths to renamed ones
        files.toAdd = files.toAdd.stream().map(path -> renamedOk.getOrDefault(path, path)).collect(Collectors.toList());

        break;
      }
    }
  }
}
