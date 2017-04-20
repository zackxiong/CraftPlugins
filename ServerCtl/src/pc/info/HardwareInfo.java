package pc.info;

import java.io.OutputStream;

public class HardwareInfo implements Info {

	@Override
	public boolean printAll(OutputStream stream) {
		
		return false;
	}

	@Override
	public boolean printAll() {
		
		return false;
	}

	@Override
	public String getAll() {
		
		return null;
	}

}
