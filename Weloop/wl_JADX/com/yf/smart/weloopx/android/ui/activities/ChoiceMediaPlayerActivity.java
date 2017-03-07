package com.yf.smart.weloopx.android.ui.activities;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yf.smart.weloopx.dist.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

@SuppressLint({"HandlerLeak"})
/* compiled from: ProGuard */
public class ChoiceMediaPlayerActivity extends Activity {
    private String f7382a;
    private ListView f7383b;
    private ProgressBar f7384c;
    private ProGuard f7385d;
    private Set<String> f7386e;
    private ArrayList<HashMap<String, Object>> f7387f;
    private int f7388g;

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.ChoiceMediaPlayerActivity.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ ChoiceMediaPlayerActivity f7373a;

        private ProGuard(ChoiceMediaPlayerActivity choiceMediaPlayerActivity) {
            this.f7373a = choiceMediaPlayerActivity;
        }

        public int getCount() {
            return this.f7373a.f7387f.size();
        }

        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            ProGuard proGuard;
            HashMap hashMap = (HashMap) this.f7373a.f7387f.get(i);
            if (view == null) {
                view = LayoutInflater.from(this.f7373a).inflate(R.layout.app_info_item2, null);
                ProGuard proGuard2 = new ProGuard(this.f7373a);
                proGuard2.f7374a = (TextView) view.findViewById(R.id.aii_tv_app_name);
                proGuard2.f7375b = (TextView) view.findViewById(R.id.aii_tv_topline);
                proGuard2.f7376c = (TextView) view.findViewById(R.id.aii_tv_bottom_line);
                proGuard2.f7377d = (TextView) view.findViewById(R.id.aii_tv_bottom_center_line);
                proGuard2.f7378e = (ImageView) view.findViewById(R.id.aii_iv_del);
                proGuard2.f7379f = (ImageView) view.findViewById(R.id.aii_iv_icon);
                proGuard2.f7380g = (RelativeLayout) view.findViewById(R.id.aii_rl_parent);
                view.setTag(proGuard2);
                proGuard = proGuard2;
            } else {
                proGuard = (ProGuard) view.getTag();
            }
            if (i == 0) {
                proGuard.f7375b.setVisibility(0);
            } else {
                proGuard.f7375b.setVisibility(8);
            }
            if (i != this.f7373a.f7387f.size() - 1) {
                proGuard.f7376c.setVisibility(8);
                proGuard.f7377d.setVisibility(0);
            } else {
                proGuard.f7376c.setVisibility(0);
                proGuard.f7377d.setVisibility(8);
            }
            proGuard.f7374a.setText(hashMap.get("appName").toString());
            Drawable drawable = (Drawable) hashMap.get("image");
            if (drawable != null) {
                proGuard.f7379f.setBackground(drawable);
            } else {
                proGuard.f7379f.setBackgroundResource(R.drawable.default_app_icon);
            }
            if (i == this.f7373a.f7388g) {
                proGuard.f7378e.setBackgroundResource(R.drawable.app_choice);
            } else {
                proGuard.f7378e.setBackgroundResource(R.drawable.app_unchoice);
            }
            view.setOnClickListener(new ProGuard(this, i));
            return view;
        }
    }

    /* renamed from: com.yf.smart.weloopx.android.ui.activities.ChoiceMediaPlayerActivity.b */
    class ProGuard {
        TextView f7374a;
        TextView f7375b;
        TextView f7376c;
        TextView f7377d;
        ImageView f7378e;
        ImageView f7379f;
        RelativeLayout f7380g;
        final /* synthetic */ ChoiceMediaPlayerActivity f7381h;

        ProGuard(ChoiceMediaPlayerActivity choiceMediaPlayerActivity) {
            this.f7381h = choiceMediaPlayerActivity;
        }
    }

    public ChoiceMediaPlayerActivity() {
        this.f7382a = "mobile";
        this.f7388g = -1;
    }

    private void m9284a() {
        Set hashSet = new HashSet();
        this.f7386e = hashSet;
        hashSet.add("com.android.music");
        hashSet.add("com.htc.music");
        hashSet.add("fm.last.android");
        hashSet.add("com.sec.android.app.music");
        hashSet.add("com.nullsoft.winamp");
        hashSet.add("com.amazon.mp3");
        hashSet.add("com.miui.player");
        hashSet.add("com.real");
        hashSet.add("com.sonyericsson.music");
        hashSet.add("com.rdio.android");
        hashSet.add("com.samsung.sec.android");
        hashSet.add("com.andrew.apollo");
        hashSet.add("com.kugou.android");
        hashSet.add("com.ting.mp3.android");
        hashSet.add("com.google.android.music");
        hashSet.add("com.vivo.dream.music");
        hashSet.add("com.android.bbkmusic");
        hashSet.add("fm.xiami.main");
        hashSet.add("com.oppo.music");
        hashSet.add("com.lge.music");
        hashSet.add("com.duomi.android.sony");
        hashSet.add("com.duomi.android");
        hashSet.add("com.spotify.music");
        hashSet.add("cn.kuwo.player");
        hashSet.add("com.netease.cloudmusic");
        hashSet.add("com.sds.android.ttpod");
        hashSet.add("com.meizu.media.music");
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.choice_media_player);
        m9284a();
        this.f7383b = (ListView) findViewById(R.id.cmp_lv);
        this.f7384c = (ProgressBar) findViewById(R.id.cmp_pb);
        this.f7384c.setVisibility(0);
        this.f7387f = new ArrayList();
        new ProGuard(this).start();
        findViewById(R.id.cmp_btn_always).setOnClickListener(new ProGuard(this));
    }

    private void m9288b() {
        runOnUiThread(new ProGuard(this));
    }

    private void m9290c() {
        runOnUiThread(new ProGuard(this));
    }

    private void m9286a(String str) {
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().m7413a("music player package", str);
    }

    private String m9291d() {
        return com.yf.gattlib.p108a.ProGuard.m7368a().m7387q().getString("music player package", null);
    }
}
