package communicater.packages;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import communicater.Head;

public class DePhaser {
	int length = 800;
	Package pak = new Package();
	DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	DocumentBuilder builder;
	
	public DePhaser(int length) throws ParserConfigurationException {
		super();
		this.length = length;
		builder = factory.newDocumentBuilder();
	}

	public Package dePhase(String data) throws SAXException, IOException{
        Document doc = builder.parse(data);
        Element element = doc.getDocumentElement();
		if(data.startsWith(Head.INVALID+"")){
			return pak;//默认即为invalid
		}
		if(data.startsWith(Head.CLOSE_CONNECTION+"")){
			return pak;
		}
		if(data.startsWith(Head.ERROR+"")){
			return pak;
		}
		return null;
	}

}
