package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import com.yf.smart.weloopx.android.ui.ProGuard;
import com.yf.smart.weloopx.data.models.Watchface;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dm */
public class dm extends ProGuard {
    private Watchface f8442b;
    private ProGuard f8443c;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.dm.a */
    public interface ProGuard {
        void m10460a(int i, Watchface watchface);
    }

    public static void m10462a(FragmentManager fragmentManager, Watchface watchface) {
        Bundle bundle = new Bundle();
        bundle.putString("1", watchface.toString());
        DialogFragment dmVar = new dm();
        dmVar.setArguments(bundle);
        ProGuard.m10544a(dmVar, fragmentManager, "wdf");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8442b = (Watchface) com.yf.smart.weloopx.data.ProGuard.fromJson(getArguments().getString("1"), Watchface.class);
        this.f8443c = (ProGuard) m10171c();
    }

    protected View m10464a() {
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.watchface_detial, null);
        com.yf.smart.weloopx.p143f.ProGuard.m11186b().m3884a(inflate.findViewById(R.id.watchface_img), this.f8442b.getWatchfaceImageURL());
        com.yf.smart.weloopx.android.ui.widget.ProGuard a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(inflate, R.id.name);
        a.f8640a.setText(R.string.tag_watchface_name);
        a.f8641b.setText(this.f8442b.getWatchName());
        a.f8641b.setMovementMethod(new ScrollingMovementMethod());
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(inflate, R.id.author);
        a.f8640a.setText(R.string.tag_watchface_author);
        a.f8641b.setText(this.f8442b.getAuthor());
        a.f8641b.setMovementMethod(new ScrollingMovementMethod());
        a = com.yf.smart.weloopx.android.ui.widget.ProGuard.m10644a(inflate, R.id.download);
        a.f8640a.setText(R.string.tag_watchface_download_count);
        a.f8641b.setText("" + this.f8442b.getDownloadCount());
        a.f8641b.setMovementMethod(new ScrollingMovementMethod());
        inflate.findViewById(R.id.sync).setOnClickListener(new dn(this));
        inflate.findViewById(R.id.exit_favorite).setOnClickListener(new ProGuard(this));
        return inflate;
    }

    protected void m10465a(Dialog dialog) {
        super.m10164a(dialog);
        setCancelable(true);
    }
}
