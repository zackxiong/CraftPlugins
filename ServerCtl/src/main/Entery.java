package main;

import communicater.Controller;
import communicater.Head;
import gui.Gui;

public class Entery {

	/**
	 * @param args
	 */
	@SuppressWarnings("unused")
	public static void main(String[] args) {
		Gui.startGui(args);
		Head.setup();
		Controller ctlr = new Controller();
	}

}
