package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ak;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Toast;

/* compiled from: ProGuard */
public class ActionMenuItemView extends android.support.v7.widget.ProGuard implements android.support.v7.internal.view.menu.ProGuard.ProGuard, android.support.v7.widget.ActionMenuView.ProGuard, OnClickListener, OnLongClickListener {
    private ProGuard f875a;
    private CharSequence f876b;
    private Drawable f877c;
    private android.support.v7.internal.view.menu.ProGuard.ProGuard f878d;
    private android.support.v7.widget.ProGuard.ProGuard f879e;
    private ProGuard f880f;
    private boolean f881g;
    private boolean f882h;
    private int f883i;
    private int f884j;
    private int f885k;

    /* renamed from: android.support.v7.internal.view.menu.ActionMenuItemView.a */
    private class ProGuard extends android.support.v7.widget.ProGuard.ProGuard {
        final /* synthetic */ ActionMenuItemView f874a;

        public ProGuard(ActionMenuItemView actionMenuItemView) {
            this.f874a = actionMenuItemView;
            super(actionMenuItemView);
        }

        public android.support.v7.widget.ProGuard m1922a() {
            if (this.f874a.f880f != null) {
                return this.f874a.f880f.m1925a();
            }
            return null;
        }

        protected boolean m1923b() {
            if (this.f874a.f878d == null || !this.f874a.f878d.m1939a(this.f874a.f875a)) {
                return false;
            }
            android.support.v7.widget.ProGuard a = m1922a();
            if (a == null || !a.m2283b()) {
                return false;
            }
            return true;
        }

        protected boolean m1924c() {
            android.support.v7.widget.ProGuard a = m1922a();
            if (a == null) {
                return false;
            }
            a.m2274a();
            return true;
        }
    }

    /* renamed from: android.support.v7.internal.view.menu.ActionMenuItemView.b */
    public static abstract class ProGuard {
        public abstract android.support.v7.widget.ProGuard m1925a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.f881g = resources.getBoolean(android.support.v7.appcompat.ProGuard.bool.abc_config_allowActionMenuItemTextWithIcon);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.ProGuard.styleable.ActionMenuItemView, i, 0);
        this.f883i = obtainStyledAttributes.getDimensionPixelSize(android.support.v7.appcompat.ProGuard.styleable.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f885k = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        setOnLongClickListener(this);
        this.f884j = -1;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        this.f881g = getContext().getResources().getBoolean(android.support.v7.appcompat.ProGuard.bool.abc_config_allowActionMenuItemTextWithIcon);
        m1933e();
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.f884j = i;
        super.setPadding(i, i2, i3, i4);
    }

    public ProGuard getItemData() {
        return this.f875a;
    }

    public void m1934a(ProGuard proGuard, int i) {
        this.f875a = proGuard;
        setIcon(proGuard.getIcon());
        setTitle(proGuard.m2058a((android.support.v7.internal.view.menu.ProGuard.ProGuard) this));
        setId(proGuard.getItemId());
        setVisibility(proGuard.isVisible() ? 0 : 8);
        setEnabled(proGuard.isEnabled());
        if (proGuard.hasSubMenu() && this.f879e == null) {
            this.f879e = new ProGuard(this);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f875a.hasSubMenu() && this.f879e != null && this.f879e.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void onClick(View view) {
        if (this.f878d != null) {
            this.f878d.m1939a(this.f875a);
        }
    }

    public void setItemInvoker(android.support.v7.internal.view.menu.ProGuard.ProGuard proGuard) {
        this.f878d = proGuard;
    }

    public void setPopupCallback(ProGuard proGuard) {
        this.f880f = proGuard;
    }

    public boolean m1935a() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f882h != z) {
            this.f882h = z;
            if (this.f875a != null) {
                this.f875a.m2073h();
            }
        }
    }

    private void m1933e() {
        int i = 0;
        int i2 = !TextUtils.isEmpty(this.f876b) ? 1 : 0;
        if (this.f877c == null || (this.f875a.m2078m() && (this.f881g || this.f882h))) {
            i = 1;
        }
        setText((i2 & i) != 0 ? this.f876b : null);
    }

    public void setIcon(Drawable drawable) {
        this.f877c = drawable;
        if (drawable != null) {
            float f;
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > this.f885k) {
                f = ((float) this.f885k) / ((float) intrinsicWidth);
                intrinsicWidth = this.f885k;
                intrinsicHeight = (int) (((float) intrinsicHeight) * f);
            }
            if (intrinsicHeight > this.f885k) {
                f = ((float) this.f885k) / ((float) intrinsicHeight);
                intrinsicHeight = this.f885k;
                intrinsicWidth = (int) (((float) intrinsicWidth) * f);
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        m1933e();
    }

    public boolean m1936b() {
        return !TextUtils.isEmpty(getText());
    }

    public void setTitle(CharSequence charSequence) {
        this.f876b = charSequence;
        setContentDescription(this.f876b);
        m1933e();
    }

    public boolean m1937c() {
        return m1936b() && this.f875a.getIcon() == null;
    }

    public boolean m1938d() {
        return m1936b();
    }

    public boolean onLongClick(View view) {
        if (m1936b()) {
            return false;
        }
        int[] iArr = new int[2];
        Rect rect = new Rect();
        getLocationOnScreen(iArr);
        getWindowVisibleDisplayFrame(rect);
        Context context = getContext();
        int width = getWidth();
        int height = getHeight();
        int i = iArr[1] + (height / 2);
        int i2 = iArr[0] + (width / 2);
        if (ak.m1033e(view) == 0) {
            i2 = context.getResources().getDisplayMetrics().widthPixels - i2;
        }
        Toast makeText = Toast.makeText(context, this.f875a.getTitle(), 0);
        if (i < rect.height()) {
            makeText.setGravity(8388661, i2, height);
        } else {
            makeText.setGravity(81, 0, height);
        }
        makeText.show();
        return true;
    }

    protected void onMeasure(int i, int i2) {
        boolean b = m1936b();
        if (b && this.f884j >= 0) {
            super.setPadding(this.f884j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        size = mode == Integer.MIN_VALUE ? Math.min(size, this.f883i) : this.f883i;
        if (mode != 1073741824 && this.f883i > 0 && measuredWidth < size) {
            super.onMeasure(MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
        }
        if (!b && this.f877c != null) {
            super.setPadding((getMeasuredWidth() - this.f877c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }
}
