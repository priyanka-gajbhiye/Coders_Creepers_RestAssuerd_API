package api.utilities;

import com.mongodb.diagnostics.logging.Logger;
import org.apache.logging.log4j.LogManager;

public class Loggerload {
	
	private static Logger logger = (Logger) LogManager.getLogger();

    

  	 public static void info(String message) {

		 logger.info(message); 			

		 }

	 public static void warn(String message) {

		 logger.warn(message);

		}

	 public static void error(String message) {
		 logger.error(message);
	 }
	 public static void fatal(String message) {
		 ((Loggerload) logger).fatal(message);
	 }
	 public static void debug(String message) {
		 logger.debug(message);
	 }


}
