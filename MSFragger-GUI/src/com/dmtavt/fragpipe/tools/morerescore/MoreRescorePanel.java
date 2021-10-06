package com.dmtavt.fragpipe.tools.morerescore;

import com.dmtavt.fragpipe.Fragpipe;
import com.dmtavt.fragpipe.tabs.TabMsfragger;
import com.dmtavt.fragpipe.tools.percolator.PercolatorPanel;
import com.github.chhh.utils.SwingUtils;
import com.github.chhh.utils.swing.JPanelBase;
import com.github.chhh.utils.swing.MigUtils;
import com.github.chhh.utils.swing.UiCheck;
import java.awt.Component;
import java.awt.ItemSelectable;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MoreRescorePanel extends JPanelBase {
  private static final Logger log = LoggerFactory.getLogger(MoreRescorePanel.class);
  private static final String PREFIX = "morerescore.";
  private JPanel pTop;
  private static final MigUtils mu = MigUtils.get();
  private UiCheck checkRun;

  public MoreRescorePanel() {
    super();
  }

  @Override
  protected ItemSelectable getRunCheckbox() {
    return checkRun;
  }

  @Override
  protected Component getEnablementToggleComponent() {
    return null;
  }

  @Override
  protected String getComponentNamePrefix() {
    return PREFIX;
  }

  @Override
  protected void init() {
    mu.layout(this, mu.lcFillXNoInsetsTopBottom());
    mu.border(this, "Rescoring Using Deep Learning Prediction");

    pTop = createPanelTop();

    mu.add(this, pTop).growX().wrap();
  }

  private JPanel createPanelTop() {

    JPanel p = mu.newPanel(null, mu.lcFillXNoInsetsTopBottom());

    checkRun = new UiCheck("Run MoreRescore", null, false);
    checkRun.setName("run-morerescore");
    JLabel info = new JLabel("<html>Rescoring using deep learning prediction.");

    mu.add(p, checkRun).split();
    mu.add(p, info).gapLeft("80px").wrap();
    return p;
  }

  public boolean isRun() {
    return SwingUtils.isEnabledAndChecked(checkRun);
  }

  @Override
  public void initMore() {
    checkRun.addItemListener(e -> {
      if (isRun()) {
        final TabMsfragger tabMsfragger = Fragpipe.getStickyStrict(TabMsfragger.class);
        if (tabMsfragger.isOpenMassOffsetSearch()) {
          JOptionPane.showMessageDialog(this, "<html>MoreRescore is incompatible with open search or mass offset search. Uncheck it.", "Incompatible options", JOptionPane.WARNING_MESSAGE);
          checkRun.setSelected(false);
        } else {
          final PercolatorPanel percolatorPanel = Fragpipe.getStickyStrict(PercolatorPanel.class);
          percolatorPanel.checkRun.setSelected(true);
          tabMsfragger.uiComboOutputType.setSelectedIndex(5);
        }
      }
    });

    updateEnabledStatus(this, true);
    super.initMore();
  }
}
