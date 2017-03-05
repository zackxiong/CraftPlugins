package com.yf.smart.weloopx.data.models;

import com.yf.smart.weloopx.p140b.ProGuard;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.text.ParseException;
import java.util.Calendar;

/* compiled from: ProGuard */
public class LocationModel {
    private static final String TAG = "LocationModel";
    public String LABEL_ID;
    public String LOCATION_ALTITUTE;
    public String LOCATION_DATE;
    public String LOCATION_DEVICE_ID;
    public String LOCATION_DIRECTION;
    public int LOCATION_ID;
    public String LOCATION_IS_SUBMIT;
    public String LOCATION_LAT;
    public String LOCATION_LOCATION_INFO;
    public String LOCATION_LON;
    public String LOCATION_RADIUS;
    public String LOCATION_SPEED;
    public String LOCATION_TIME;
    public String LOCATION_USER_ID;

    public LocationModel() {
        this.LOCATION_ID = 0;
        this.LABEL_ID = "";
        this.LOCATION_DATE = "";
        this.LOCATION_TIME = "";
        this.LOCATION_LAT = "";
        this.LOCATION_LON = "";
        this.LOCATION_ALTITUTE = "";
        this.LOCATION_DIRECTION = "";
        this.LOCATION_SPEED = "";
        this.LOCATION_DEVICE_ID = "";
        this.LOCATION_USER_ID = "";
        this.LOCATION_IS_SUBMIT = "";
        this.LOCATION_LOCATION_INFO = "";
        this.LOCATION_RADIUS = "";
    }

    public String getLOCATION_RADIUS() {
        return this.LOCATION_RADIUS;
    }

    public void setLOCATION_RADIUS(String str) {
        this.LOCATION_RADIUS = str;
    }

    public String getLABEL_ID() {
        return this.LABEL_ID;
    }

    public void setLABEL_ID(String str) {
        this.LABEL_ID = str;
    }

    public int getLOCATION_ID() {
        return this.LOCATION_ID;
    }

    public void setLOCATION_ID(int i) {
        this.LOCATION_ID = i;
    }

    public String getLOCATION_DATE() {
        return this.LOCATION_DATE;
    }

    public void setLOCATION_DATE(String str) {
        this.LOCATION_DATE = str;
    }

    public String getLOCATION_TIME() {
        return this.LOCATION_TIME;
    }

    public void setLOCATION_TIME(String str) {
        this.LOCATION_TIME = str;
    }

    public String getLOCATION_LAT() {
        return this.LOCATION_LAT;
    }

    public void setLOCATION_LAT(String str) {
        this.LOCATION_LAT = str;
    }

    public String getLOCATION_LON() {
        return this.LOCATION_LON;
    }

    public void setLOCATION_LON(String str) {
        this.LOCATION_LON = str;
    }

    public String getLOCATION_ALTITUTE() {
        return this.LOCATION_ALTITUTE;
    }

    public void setLOCATION_ALTITUTE(String str) {
        this.LOCATION_ALTITUTE = str;
    }

    public String getLOCATION_DIRECTION() {
        return this.LOCATION_DIRECTION;
    }

    public void setLOCATION_DIRECTION(String str) {
        this.LOCATION_DIRECTION = str;
    }

    public String getLOCATION_SPEED() {
        return this.LOCATION_SPEED;
    }

    public void setLOCATION_SPEED(String str) {
        this.LOCATION_SPEED = str;
    }

    public String getLOCATION_DEVICE_ID() {
        return this.LOCATION_DEVICE_ID;
    }

    public void setLOCATION_DEVICE_ID(String str) {
        this.LOCATION_DEVICE_ID = str;
    }

    public String getLOCATION_USER_ID() {
        return this.LOCATION_USER_ID;
    }

    public void setLOCATION_USER_ID(String str) {
        this.LOCATION_USER_ID = str;
    }

    public String getLOCATION_IS_SUBMIT() {
        return this.LOCATION_IS_SUBMIT;
    }

    public void setLOCATION_IS_SUBMIT(String str) {
        this.LOCATION_IS_SUBMIT = str;
    }

    public String getLOCATION_LOCATION_INFO() {
        return this.LOCATION_LOCATION_INFO;
    }

    public void setLOCATION_LOCATION_INFO(String str) {
        this.LOCATION_LOCATION_INFO = str;
    }

    public static LocationModel decode(String str, String str2) {
        LocationModel locationModel = new LocationModel();
        locationModel.setLOCATION_DATE(str2);
        locationModel.setLOCATION_LOCATION_INFO(str);
        locationModel.setLOCATION_DEVICE_ID("");
        locationModel.setLOCATION_IS_SUBMIT("1");
        locationModel.setLOCATION_USER_ID(ProGuard.m10759a().m10778b());
        ByteBuffer wrap = ByteBuffer.wrap(com.yf.gattlib.p117p.ProGuard.m8265a(str, 0, str.length()));
        wrap.order(obtainByteOrder(wrap, str2));
        wrap.position(0);
        try {
            locationModel.setLOCATION_TIME(hexToDateTime(wrap.getInt()));
        } catch (Exception e) {
            com.yf.gattlib.p117p.ProGuard.m8292a("LocationModel \u65f6\u95f4\u89e3\u6790\u51fa\u9519");
        }
        try {
            locationModel.setLOCATION_LAT(String.valueOf(wrap.getInt()));
        } catch (Exception e2) {
            com.yf.gattlib.p117p.ProGuard.m8292a("LocationModel \u7cbe\u5ea6\u89e3\u6790\u51fa\u9519  = " + e2.toString());
        }
        try {
            locationModel.setLOCATION_LON(String.valueOf((long) wrap.getInt()));
        } catch (Exception e22) {
            com.yf.gattlib.p117p.ProGuard.m8292a("LocationModel \u7eac\u5ea6\u89e3\u6790\u51fa\u9519  = " + e22.toString());
        }
        try {
            locationModel.setLOCATION_ALTITUTE(String.valueOf(wrap.getInt()));
        } catch (Exception e222) {
            com.yf.gattlib.p117p.ProGuard.m8292a("LocationModel strAli\u89e3\u6790\u51fa\u9519  = " + e222.toString());
        }
        try {
            locationModel.setLOCATION_DIRECTION(String.valueOf(wrap.getInt()));
        } catch (Exception e2222) {
            com.yf.gattlib.p117p.ProGuard.m8292a("LocationModel \u89d2\u5ea6\u89e3\u6790\u51fa\u9519  = " + e2222.toString());
        }
        try {
            locationModel.setLOCATION_SPEED(String.valueOf(wrap.getInt()));
        } catch (Exception e22222) {
            com.yf.gattlib.p117p.ProGuard.m8292a("LocationModel E  = " + e22222.toString());
        }
        return locationModel;
    }

    public static ByteOrder obtainByteOrder(ByteBuffer byteBuffer, String str) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        byteBuffer.position(0);
        try {
            return hexToDateTime(byteBuffer.getInt()).startsWith(str) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
        } catch (ParseException e) {
            e.printStackTrace();
            return ByteOrder.LITTLE_ENDIAN;
        }
    }

    public static String hexToDateTime(int i) {
        String str = "yyyy-MM-dd HH:mm:ss";
        Calendar a = com.yf.smart.weloopx.p145g.ProGuard.m11350a("2015-01-01 00:00:00", str);
        a.add(13, i);
        return com.yf.smart.weloopx.p145g.ProGuard.m11349a(a, str);
    }

    public static String encodeLocationInfo(int i, double d, double d2, double d3, float f, float f2) {
        ByteBuffer allocate = ByteBuffer.allocate(24);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(i);
        allocate.putInt((int) d);
        allocate.putInt((int) d2);
        allocate.putInt((int) d3);
        allocate.putInt((int) f);
        allocate.putInt((int) f2);
        return com.yf.gattlib.p117p.ProGuard.m8263a(allocate.array(), 0, allocate.position());
    }
}
