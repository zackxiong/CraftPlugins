package com.yf.lib.ui.views;

import android.app.FragmentManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.yf.lib.ProGuard;
import com.yf.lib.ui.fragments.FragmentTabHost;

/* compiled from: ProGuard */
public class BottomTabLayout extends LinearLayout {
    private FragmentTabHost f6785a;
    private View f6786b;

    public BottomTabLayout(Context context) {
        this(context, null);
    }

    public BottomTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(1);
        LayoutInflater.from(context).inflate(ProGuard.layout.libyf_bottom_tab_layout, this, true);
        this.f6785a = (FragmentTabHost) findViewById(16908306);
        this.f6786b = findViewById(ProGuard.id.libyf_divider);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProGuard.styleable.BottomTabLayout);
        try {
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(ProGuard.styleable.BottomTabLayout_libyf_BottomTabLayout_dividerHeight, 0);
            if (dimensionPixelOffset > 0) {
                this.f6786b.setVisibility(0);
                this.f6786b.getLayoutParams().height = dimensionPixelOffset;
            }
            this.f6786b.setBackgroundDrawable(obtainStyledAttributes.getDrawable(ProGuard.styleable.BottomTabLayout_libyf_BottomTabLayout_dividerDrawable));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public View getDivider() {
        return this.f6786b;
    }

    public void setup(FragmentManager fragmentManager) {
        this.f6785a.m8640a(getContext(), fragmentManager, ProGuard.id.realtabcontent);
        this.f6785a.getTabWidget().setDividerDrawable(null);
    }

    public FragmentTabHost getTabHost() {
        return this.f6785a;
    }
}
