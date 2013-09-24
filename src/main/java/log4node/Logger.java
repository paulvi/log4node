package log4node;

import java.util.ArrayList;
import java.util.List;

public class Logger  implements ICanLog{
	
	List<Appender> appenders = new ArrayList<Appender>();

	public void log(String message) {
		for (Appender appender : appenders){
			appender.log(message);
		} 	
	}

}
