package com.yf.smart.weloopx.android.ui.activities;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.widget.ProGuard;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
class fr extends ProGuard {
    final /* synthetic */ fp f8046a;

    fr(fp fpVar) {
        this.f8046a = fpVar;
    }

    public int m9917a(int i) {
        return this.f8046a.getResources().getColor(R.color.ranking_subtitle_focused_color);
    }

    public int m9919b(int i) {
        return 0;
    }

    public void m9918a(int i, View view, boolean z) {
        ((TextView) view).setTextColor(this.f8046a.getResources().getColor(z ? R.color.ranking_subtitle_focused_color : R.color.ranking_subtitle_default_color));
        view.setBackgroundColor(this.f8046a.getResources().getColor(z ? R.color.ranking_subtitle_focused_bg_color : R.color.ranking_subtitle_default_bg_color));
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f8046a.getActivity()).inflate(R.layout.ranking_sub_title, viewGroup);
        }
        TextView textView = (TextView) viewGroup.getChildAt(i);
        textView.setText(i == 0 ? R.string.match : R.string.friend_title);
        textView.setBackgroundColor(this.f8046a.getResources().getColor(R.color.ranking_subtitle_default_bg_color));
        return view;
    }
}
