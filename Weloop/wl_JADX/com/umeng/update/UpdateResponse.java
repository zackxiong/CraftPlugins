package com.umeng.update;

import android.content.Context;
import java.io.Serializable;
import org.json.JSONObject;
import p028c.p029a.ProGuard;

/* compiled from: ProGuard */
public class UpdateResponse extends ProGuard implements Serializable {
    private static final long f5472a = -7768683594079202710L;
    public boolean delta;
    public boolean display_ads;
    public boolean hasUpdate;
    public String new_md5;
    public String origin;
    public String patch_md5;
    public String path;
    public String proto_ver;
    public String size;
    public String target_size;
    public String updateLog;
    public String version;

    public UpdateResponse(JSONObject jSONObject) {
        super(jSONObject);
        this.hasUpdate = false;
        this.updateLog = null;
        this.version = null;
        this.delta = false;
        m7179a(jSONObject);
    }

    private void m7179a(JSONObject jSONObject) {
        try {
            this.hasUpdate = "Yes".equalsIgnoreCase(jSONObject.optString(UpdateConfig.f5440a));
            if (this.hasUpdate) {
                this.updateLog = jSONObject.getString("update_log");
                this.version = jSONObject.getString("version");
                this.path = jSONObject.getString("path");
                this.target_size = jSONObject.optString("target_size");
                this.new_md5 = jSONObject.optString("new_md5");
                this.delta = jSONObject.optBoolean(ProGuard.f5484l);
                this.display_ads = jSONObject.optBoolean("display_ads", false);
                if (this.delta) {
                    this.patch_md5 = jSONObject.optString("patch_md5");
                    this.size = jSONObject.optString("size");
                    this.origin = jSONObject.optString("origin");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String m7180a(Context context, boolean z) {
        String string = context.getString(ProGuard.m2816a(context).m2820d("UMNewVersion"));
        String string2 = context.getString(ProGuard.m2816a(context).m2820d("UMTargetSize"));
        String string3 = context.getString(ProGuard.m2816a(context).m2820d("UMUpdateSize"));
        String string4 = context.getString(ProGuard.m2816a(context).m2820d("UMUpdateContent"));
        String string5 = context.getString(ProGuard.m2816a(context).m2820d("UMDialog_InstallAPK"));
        if (z) {
            return String.format("%s %s\n%s\n\n%s\n%s\n", new Object[]{string, this.version, string5, string4, this.updateLog});
        }
        if (this.delta) {
            string3 = String.format("\n%s %s", new Object[]{string3, ProGuard.m2855c(this.size)});
        } else {
            string3 = "";
        }
        return String.format("%s %s\n%s %s%s\n\n%s\n%s\n", new Object[]{string, this.version, string2, ProGuard.m2855c(this.target_size), string3, string4, this.updateLog});
    }
}
