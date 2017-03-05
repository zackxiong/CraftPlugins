package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Dialog;
import android.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.p139c.ah.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.ck */
public class ck extends av implements OnItemClickListener, ProGuard {
    private DialogFragment f8336b;
    private int f8337c;
    private String f8338d;
    private String f8339e;
    private String[] f8340f;
    private ListView f8341g;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.ck.a */
    private class ProGuard extends BaseAdapter {
        final /* synthetic */ ck f8352a;

        private ProGuard(ck ckVar) {
            this.f8352a = ckVar;
        }

        public int getCount() {
            return this.f8352a.f8340f.length;
        }

        public Object getItem(int i) {
            return this.f8352a.f8340f[i];
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate;
            if (view == null) {
                inflate = LayoutInflater.from(this.f8352a.getActivity()).inflate(R.layout.select_item, viewGroup, false);
            } else {
                inflate = view;
            }
            ((TextView) inflate).setText(this.f8352a.f8340f[i]);
            return inflate;
        }
    }

    public ck() {
        this.f8340f = new String[0];
    }

    protected void m10364d(int i) {
        this.f8337c = i;
    }

    protected void m10363c(String str) {
        this.f8338d = str;
    }

    protected void m10365d(String str) {
        this.f8339e = str;
    }

    protected View m10359a() {
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.select_option, null);
        View findViewById = inflate.findViewById(R.id.title_bar);
        findViewById.findViewById(R.id.at_edit).setVisibility(8);
        ((TextView) findViewById.findViewById(R.id.at_tv_title)).setText(this.f8339e);
        findViewById.findViewById(R.id.at_back).setOnClickListener(new cl(this));
        ListView listView = (ListView) inflate.findViewById(R.id.option_list);
        this.f8341g = listView;
        listView.setAdapter(new ProGuard());
        listView.setSelection(this.f8337c);
        listView.setItemChecked(this.f8337c, true);
        listView.setOnItemClickListener(new cm(this));
        return inflate;
    }

    protected void m10360a(Dialog dialog) {
        super.m10164a(dialog);
        dialog.setOnKeyListener(new cn(this));
    }

    protected void m10366e() {
        m10167b();
    }

    protected void m10368f() {
        ah.m10187a(getChildFragmentManager(), "select", getString(R.string.sure_to_save_modifying));
    }

    protected void m10367e(String str) {
        this.f8336b = az.m10242a(getChildFragmentManager(), str);
    }

    protected void m10369g() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.f8336b);
    }

    protected ListView m10370h() {
        return this.f8341g;
    }

    protected void m10362a(String[] strArr) {
        this.f8340f = strArr;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
    }

    public void m10361a(String str, boolean z) {
    }
}
