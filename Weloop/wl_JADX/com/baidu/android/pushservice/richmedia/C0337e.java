package com.baidu.android.pushservice.richmedia;

import android.app.AlertDialog.Builder;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

/* renamed from: com.baidu.android.pushservice.richmedia.e */
class C0337e implements OnItemLongClickListener {
    final /* synthetic */ MediaListActivity f3446a;

    C0337e(MediaListActivity mediaListActivity) {
        this.f3446a = mediaListActivity;
    }

    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        new Builder(this.f3446a).setTitle("\u63d0\u793a").setMessage("\u786e\u5b9a\u8981\u5220\u9664\u8be5\u8bb0\u5f55\uff1f").setPositiveButton("\u786e\u5b9a", new C0339g(this, j)).setNegativeButton("\u53d6\u6d88", new C0338f(this)).show();
        return true;
    }
}
