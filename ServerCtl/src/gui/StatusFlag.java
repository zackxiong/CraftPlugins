package gui;

import java.awt.Color;

public class StatusFlag{
	private static boolean//优先级从高到低
			isOffline = false,
			isError = false,
			isWarning = false,
			isPending = false,
			isOk = false;
	/*private static int//优先级从高到低
			countOffline = 0,
			countError = 0,
			countWarning = 0,
			countPending = 0,
			countOk = 0;
	int topCount = 0;*/
	
	public static Color getHighestStatus(){
		if(isOffline){
			isOffline = false;
			return MyColor.color_offline;
		}
		if(isError){
			isError = false;
			return MyColor.color_error;
		}
		if(isWarning){
			isWarning = false;
			return MyColor.color_warning;
		}
		if(isPending){
			isPending = false;
			return MyColor.color_pending;
		}
		if(isOk){
			return MyColor.color_ok;
		}
		else{
			return MyColor.color_offline;
		}
	}

	public static boolean isOffline() {
		return isOffline;
	}

	public static void setOffline(boolean isOffline) {
		StatusFlag.isOffline = isOffline;
	}

	public static boolean isError() {
		return isError;
	}

	public static void setError(boolean isError) {
		StatusFlag.isError = isError;
	}

	public static boolean isWarning() {
		return isWarning;
	}

	public static void setWarning(boolean isWarning) {
		StatusFlag.isWarning = isWarning;
	}

	public static boolean isPending() {
		return isPending;
	}

	public static void setPending(boolean isPending) {
		StatusFlag.isPending = isPending;
	}

	public static boolean isOk() {
		return isOk;
	}

	public static void setOk(boolean isOk) {
		StatusFlag.isOk = isOk;
	}
}