package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ak;
import android.support.v4.view.be;
import android.support.v4.view.bl;
import android.support.v7.internal.view.ProGuard;
import android.support.v7.widget.ActionMenuView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;

/* compiled from: ProGuard */
public class ActionBarContextView extends ProGuard implements bl {
    private CharSequence f1088j;
    private CharSequence f1089k;
    private View f1090l;
    private View f1091m;
    private LinearLayout f1092n;
    private TextView f1093o;
    private TextView f1094p;
    private int f1095q;
    private int f1096r;
    private Drawable f1097s;
    private boolean f1098t;
    private int f1099u;
    private ProGuard f1100v;
    private boolean f1101w;
    private int f1102x;

    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public /* bridge */ /* synthetic */ void setSplitView(ViewGroup viewGroup) {
        super.setSplitView(viewGroup);
    }

    public /* bridge */ /* synthetic */ void setSplitWhenNarrow(boolean z) {
        super.setSplitWhenNarrow(z);
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, android.support.v7.appcompat.ProGuard.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ac a = ac.m2328a(context, attributeSet, android.support.v7.appcompat.ProGuard.styleable.ActionMode, i, 0);
        setBackgroundDrawable(a.m2332a(android.support.v7.appcompat.ProGuard.styleable.ActionMode_background));
        this.f1095q = a.m2344f(android.support.v7.appcompat.ProGuard.styleable.ActionMode_titleTextStyle, 0);
        this.f1096r = a.m2344f(android.support.v7.appcompat.ProGuard.styleable.ActionMode_subtitleTextStyle, 0);
        this.h = a.m2342e(android.support.v7.appcompat.ProGuard.styleable.ActionMode_height, 0);
        this.f1097s = a.m2332a(android.support.v7.appcompat.ProGuard.styleable.ActionMode_backgroundSplit);
        this.f1099u = a.m2344f(android.support.v7.appcompat.ProGuard.styleable.ActionMode_closeItemLayout, android.support.v7.appcompat.ProGuard.layout.abc_action_mode_close_item_material);
        a.m2336b();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.d != null) {
            this.d.m2526d();
            this.d.m2528f();
        }
    }

    public void setSplitToolbar(boolean z) {
        if (this.f != z) {
            if (this.d != null) {
                LayoutParams layoutParams = new LayoutParams(-2, -1);
                ViewGroup viewGroup;
                if (z) {
                    this.d.m2510a(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    this.d.m2520b(Integer.MAX_VALUE);
                    layoutParams.width = -1;
                    layoutParams.height = this.h;
                    this.c = (ActionMenuView) this.d.m2508a((ViewGroup) this);
                    this.c.setBackgroundDrawable(this.f1097s);
                    viewGroup = (ViewGroup) this.c.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.c);
                    }
                    this.e.addView(this.c, layoutParams);
                } else {
                    this.c = (ActionMenuView) this.d.m2508a((ViewGroup) this);
                    this.c.setBackgroundDrawable(null);
                    viewGroup = (ViewGroup) this.c.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.c);
                    }
                    addView(this.c, layoutParams);
                }
            }
            super.setSplitToolbar(z);
        }
    }

    public void setContentHeight(int i) {
        this.h = i;
    }

    public void setCustomView(View view) {
        if (this.f1091m != null) {
            removeView(this.f1091m);
        }
        this.f1091m = view;
        if (this.f1092n != null) {
            removeView(this.f1092n);
            this.f1092n = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1088j = charSequence;
        m2164b();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1089k = charSequence;
        m2164b();
    }

    public CharSequence getTitle() {
        return this.f1088j;
    }

    public CharSequence getSubtitle() {
        return this.f1089k;
    }

    private void m2164b() {
        int i;
        int i2 = 8;
        Object obj = 1;
        if (this.f1092n == null) {
            LayoutInflater.from(getContext()).inflate(android.support.v7.appcompat.ProGuard.layout.abc_action_bar_title_item, this);
            this.f1092n = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1093o = (TextView) this.f1092n.findViewById(android.support.v7.appcompat.ProGuard.id.action_bar_title);
            this.f1094p = (TextView) this.f1092n.findViewById(android.support.v7.appcompat.ProGuard.id.action_bar_subtitle);
            if (this.f1095q != 0) {
                this.f1093o.setTextAppearance(getContext(), this.f1095q);
            }
            if (this.f1096r != 0) {
                this.f1094p.setTextAppearance(getContext(), this.f1096r);
            }
        }
        this.f1093o.setText(this.f1088j);
        this.f1094p.setText(this.f1089k);
        Object obj2 = !TextUtils.isEmpty(this.f1088j) ? 1 : null;
        if (TextUtils.isEmpty(this.f1089k)) {
            obj = null;
        }
        TextView textView = this.f1094p;
        if (obj != null) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
        LinearLayout linearLayout = this.f1092n;
        if (!(obj2 == null && obj == null)) {
            i2 = 0;
        }
        linearLayout.setVisibility(i2);
        if (this.f1092n.getParent() == null) {
            addView(this.f1092n);
        }
    }

    private void m2165c() {
        ProGuard proGuard = this.f1100v;
        if (proGuard != null) {
            this.f1100v = null;
            proGuard.m1906b();
        }
    }

    public void m2167a() {
        m2165c();
        removeAllViews();
        if (this.e != null) {
            this.e.removeView(this.c);
        }
        this.f1091m = null;
        this.c = null;
        this.f1101w = false;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-1, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    protected void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        int i4 = 0;
        if (MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_height=\"wrap_content\"");
        } else {
            int a;
            int size = MeasureSpec.getSize(i);
            int size2 = this.h > 0 ? this.h : MeasureSpec.getSize(i2);
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i5 = size2 - paddingTop;
            int makeMeasureSpec = MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
            if (this.f1090l != null) {
                a = m2162a(this.f1090l, paddingLeft, makeMeasureSpec, 0);
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.f1090l.getLayoutParams();
                paddingLeft = a - (marginLayoutParams.rightMargin + marginLayoutParams.leftMargin);
            }
            if (this.c != null && this.c.getParent() == this) {
                paddingLeft = m2162a(this.c, paddingLeft, makeMeasureSpec, 0);
            }
            if (this.f1092n != null && this.f1091m == null) {
                if (this.f1098t) {
                    this.f1092n.measure(MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                    a = this.f1092n.getMeasuredWidth();
                    makeMeasureSpec = a <= paddingLeft ? 1 : 0;
                    if (makeMeasureSpec != 0) {
                        paddingLeft -= a;
                    }
                    this.f1092n.setVisibility(makeMeasureSpec != 0 ? 0 : 8);
                } else {
                    paddingLeft = m2162a(this.f1092n, paddingLeft, makeMeasureSpec, 0);
                }
            }
            if (this.f1091m != null) {
                int min;
                LayoutParams layoutParams = this.f1091m.getLayoutParams();
                if (layoutParams.width != -2) {
                    makeMeasureSpec = 1073741824;
                } else {
                    makeMeasureSpec = Integer.MIN_VALUE;
                }
                if (layoutParams.width >= 0) {
                    paddingLeft = Math.min(layoutParams.width, paddingLeft);
                }
                if (layoutParams.height == -2) {
                    i3 = Integer.MIN_VALUE;
                }
                if (layoutParams.height >= 0) {
                    min = Math.min(layoutParams.height, i5);
                } else {
                    min = i5;
                }
                this.f1091m.measure(MeasureSpec.makeMeasureSpec(paddingLeft, makeMeasureSpec), MeasureSpec.makeMeasureSpec(min, i3));
            }
            if (this.h <= 0) {
                makeMeasureSpec = getChildCount();
                size2 = 0;
                while (i4 < makeMeasureSpec) {
                    paddingLeft = getChildAt(i4).getMeasuredHeight() + paddingTop;
                    if (paddingLeft <= size2) {
                        paddingLeft = size2;
                    }
                    i4++;
                    size2 = paddingLeft;
                }
                setMeasuredDimension(size, size2);
                return;
            }
            setMeasuredDimension(size, size2);
        }
    }

    private ProGuard m2166d() {
        ak.m1014a(this.f1090l, (float) ((-this.f1090l.getWidth()) - ((MarginLayoutParams) this.f1090l.getLayoutParams()).leftMargin));
        be a = ak.m1039j(this.f1090l).m1190a(0.0f);
        a.m1191a(200);
        a.m1192a((bl) this);
        a.m1194a(new DecelerateInterpolator());
        ProGuard proGuard = new ProGuard();
        proGuard.m1902a(a);
        if (this.c != null) {
            int childCount = this.c.getChildCount();
            if (childCount > 0) {
                int i = childCount - 1;
                childCount = 0;
                while (i >= 0) {
                    View childAt = this.c.getChildAt(i);
                    ak.m1032d(childAt, 0.0f);
                    be c = ak.m1039j(childAt).m1198c(1.0f);
                    c.m1191a(300);
                    proGuard.m1902a(c);
                    i--;
                    childCount++;
                }
            }
        }
        return proGuard;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        boolean a = af.m2418a(this);
        int paddingRight = a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        if (!(this.f1090l == null || this.f1090l.getVisibility() == 8)) {
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.f1090l.getLayoutParams();
            i5 = a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            i5 = ProGuard.m2161a(paddingRight, i5, a);
            paddingRight = ProGuard.m2161a(m2163a(this.f1090l, i5, paddingTop, paddingTop2, a) + i5, i6, a);
            if (this.f1101w) {
                this.f1102x = 1;
                this.f1100v = m2166d();
                this.f1100v.m1905a();
                this.f1101w = false;
            }
        }
        i5 = paddingRight;
        if (!(this.f1092n == null || this.f1091m != null || this.f1092n.getVisibility() == 8)) {
            i5 += m2163a(this.f1092n, i5, paddingTop, paddingTop2, a);
        }
        if (this.f1091m != null) {
            int a2 = m2163a(this.f1091m, i5, paddingTop, paddingTop2, a) + i5;
        }
        i5 = a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.c != null) {
            View view = this.c;
            if (a) {
                a = false;
            } else {
                a = true;
            }
            a2 = m2163a(view, i5, paddingTop, paddingTop2, a) + i5;
        }
    }

    public void m2168a(View view) {
    }

    public void m2169b(View view) {
        if (this.f1102x == 2) {
            m2167a();
        }
        this.f1102x = 0;
    }

    public void m2170c(View view) {
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (VERSION.SDK_INT < 14) {
            return;
        }
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.f1088j);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f1098t) {
            requestLayout();
        }
        this.f1098t = z;
    }
}
