package com.yf.smart.weloopx.android.ui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
public class DeviceTitle extends RelativeLayout {
    private TextView f8520a;

    public DeviceTitle(Context context) {
        this(context, null);
    }

    public DeviceTitle(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeviceTitle(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.device_title_layout, this, true);
        ((TextView) findViewById(R.id.at_tv_title)).setText(R.string.device_settings);
        this.f8520a = (TextView) findViewById(R.id.title_more);
        this.f8520a.setText(R.string.device_more);
    }

    public void m10551a() {
        Drawable drawable = getResources().getDrawable(R.drawable.update_back);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        this.f8520a.setCompoundDrawables(drawable, null, null, null);
        this.f8520a.setCompoundDrawablePadding(3);
        this.f8520a.setText(R.string.back);
        this.f8520a.setVisibility(0);
    }

    public void m10552b() {
        this.f8520a.setCompoundDrawables(null, null, null, null);
        this.f8520a.setText(R.string.device_more);
        this.f8520a.setVisibility(0);
    }

    public void setLeftOnClickListener(OnClickListener onClickListener) {
        this.f8520a.setOnClickListener(onClickListener);
    }
}
