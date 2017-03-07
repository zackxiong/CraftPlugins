package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.yf.gattlib.client.p113b.aq;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.p140b.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.da */
public class da extends ProGuard {
    private ProGuard f8397b;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.da.a */
    public interface ProGuard {
        void m8913a(int i);
    }

    public static boolean m10409a(FragmentManager fragmentManager, String str) {
        Object c = ProGuard.m10759a().m10780c();
        if (TextUtils.isEmpty(c)) {
            return false;
        }
        UserData e = ProGuard.m10759a().m10785e(c);
        if (e.getCalorieValue() <= 0 || e.getStature() <= 0 || e.getWeight() <= 0) {
            return false;
        }
        da.m10408a(fragmentManager, str, e.getWeight(), e.getStature(), e.getCalorieValue());
        return true;
    }

    public static void m10408a(FragmentManager fragmentManager, String str, int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putString(LightAppTableDefine.DB_TABLE_MESSAGE, str);
        bundle.putInt("weight", i);
        bundle.putInt("height", i2);
        bundle.putInt("goal", i3);
        DialogFragment daVar = new da();
        daVar.setArguments(bundle);
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(daVar, fragmentManager, "synchronize user info");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8397b = (ProGuard) m10171c();
        Bundle arguments = getArguments();
        m10200c(arguments.getString(LightAppTableDefine.DB_TABLE_MESSAGE, ""));
        new aq(new db(this), arguments.getInt("weight"), arguments.getInt("height"), arguments.getInt("goal")).m7498f();
    }
}
