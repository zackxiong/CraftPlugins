package com.yf.gattlib.db;

import com.roscopeco.ormdroid.Entity;
import com.roscopeco.ormdroid.Query;
import java.util.List;

/* compiled from: ProGuard */
public class WhiteApp extends Entity {
    public int id;
    public String pkg;

    public static void addWhiteApp(String str) {
        if (((WhiteApp) Entity.query(WhiteApp.class).where(Query.eql("pkg", str)).execute()) == null) {
            WhiteApp whiteApp = new WhiteApp();
            whiteApp.pkg = str;
            whiteApp.save();
        }
    }

    public static void removeWhiteApp(String str) {
        WhiteApp whiteApp = (WhiteApp) Entity.query(WhiteApp.class).where(Query.eql("pkg", str)).execute();
        if (whiteApp != null) {
            whiteApp.delete();
        }
    }

    public static List<WhiteApp> obtainAllWhiteApp() {
        return Entity.query(WhiteApp.class).executeMulti();
    }
}
