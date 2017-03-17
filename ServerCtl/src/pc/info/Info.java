package pc.info;

import java.io.OutputStream;

public interface Info {
	public boolean printAll(OutputStream stream);
	public boolean printAll();//默认输出到log
	public String getAll();
	@Override
	public String toString();
}
