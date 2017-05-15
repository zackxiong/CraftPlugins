package gui.panels.controlPanel;

import gui.Gui;

import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class FileChooserPanel extends JPanel{

	private static final long serialVersionUID = -6143438348516086903L; 
	
	public FilePanel fileChooser = new FilePanel();
	public CommandPanel commandChooser = new CommandPanel();
	static GridLayout mainLayout = new GridLayout(2,2);
	
	public FileChooserPanel(){
		this.setLayout(mainLayout);
		this.add(fileChooser);
		this.add(commandChooser);
		Gui.log("Chooser init.");
	}
	
}

class FilePanel extends JPanel implements ActionListener{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3092189214187218711L;
	JLabel pathLabel = new JLabel("Chooser a file");
	JButton selectButton = new JButton("Choose");
	JButton clearButton = new JButton("Clear");
	JFileChooser fileChooser = new JFileChooser("D:\\");
	File selectedFile;
	
	public FilePanel(){
		clearButton.setActionCommand("clear");
		selectButton.setActionCommand("select");
		this.add(pathLabel);
		this.add(selectButton);
		this.add(clearButton);
		this.selectButton.addActionListener(this);
		Gui.log("File chooser init.");
	}
	
	public File select(){
		fileChooser.setFileSelectionMode(JFileChooser.FILES_ONLY);
		int returnVal = fileChooser.showOpenDialog(fileChooser);
		if(returnVal == JFileChooser.FILES_ONLY){
			this.selectedFile = this.fileChooser.getSelectedFile();
			this.pathLabel.setText(this.selectedFile.getAbsolutePath());
			return fileChooser.getSelectedFile();
		}
		return (File)null;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getActionCommand()=="select"){
			this.select();
		}
		if(e.getActionCommand()=="clear"){
			Gui.getTester().clearFile();
		}
	}
}

class CommandPanel extends JPanel implements ActionListener{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3856685421974058865L;
	JButton enterButton = new JButton("Enter");
	JButton clearButton = new JButton("Clear");
	JTextField commandBox = new JTextField(50);
	
	public CommandPanel(){
		this.commandBox.setText("Enter your command here.");
		enterButton.setActionCommand("enter");
		clearButton.setActionCommand("clear");
		commandBox.setActionCommand("enter");
		this.add(commandBox);
		this.add(enterButton);
		this.add(clearButton);
		this.enterButton.addActionListener(this);
		this.clearButton.addActionListener(this);
		this.commandBox.addActionListener(this);
		Gui.log("Command chooser init.");
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getActionCommand()=="enter"){
			Gui.getTester().useCommand(this.commandBox.getText());
			Gui.getTester().start();
		}
		if(e.getActionCommand()=="clear"){
			Gui.getTester().clearCommand();
		}
	}
}


