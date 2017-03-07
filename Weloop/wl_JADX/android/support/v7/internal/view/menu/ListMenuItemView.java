package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.view.menu.ProGuard.ProGuard;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;

/* compiled from: ProGuard */
public class ListMenuItemView extends LinearLayout implements ProGuard {
    private ProGuard f889a;
    private ImageView f890b;
    private RadioButton f891c;
    private TextView f892d;
    private CheckBox f893e;
    private TextView f894f;
    private Drawable f895g;
    private int f896h;
    private Context f897i;
    private boolean f898j;
    private int f899k;
    private Context f900l;
    private LayoutInflater f901m;
    private boolean f902n;

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f900l = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.appcompat.ProGuard.styleable.MenuView, i, 0);
        this.f895g = obtainStyledAttributes.getDrawable(android.support.v7.appcompat.ProGuard.styleable.MenuView_android_itemBackground);
        this.f896h = obtainStyledAttributes.getResourceId(android.support.v7.appcompat.ProGuard.styleable.MenuView_android_itemTextAppearance, -1);
        this.f898j = obtainStyledAttributes.getBoolean(android.support.v7.appcompat.ProGuard.styleable.MenuView_preserveIconSpacing, false);
        this.f897i = context;
        obtainStyledAttributes.recycle();
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackgroundDrawable(this.f895g);
        this.f892d = (TextView) findViewById(android.support.v7.appcompat.ProGuard.id.title);
        if (this.f896h != -1) {
            this.f892d.setTextAppearance(this.f897i, this.f896h);
        }
        this.f894f = (TextView) findViewById(android.support.v7.appcompat.ProGuard.id.shortcut);
    }

    public void m1946a(ProGuard proGuard, int i) {
        this.f889a = proGuard;
        this.f899k = i;
        setVisibility(proGuard.isVisible() ? 0 : 8);
        setTitle(proGuard.m2058a((ProGuard) this));
        setCheckable(proGuard.isCheckable());
        m1947a(proGuard.m2071f(), proGuard.m2067d());
        setIcon(proGuard.getIcon());
        setEnabled(proGuard.isEnabled());
    }

    public void setForceShowIcon(boolean z) {
        this.f902n = z;
        this.f898j = z;
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f892d.setText(charSequence);
            if (this.f892d.getVisibility() != 0) {
                this.f892d.setVisibility(0);
            }
        } else if (this.f892d.getVisibility() != 8) {
            this.f892d.setVisibility(8);
        }
    }

    public ProGuard getItemData() {
        return this.f889a;
    }

    public void setCheckable(boolean z) {
        if (z || this.f891c != null || this.f893e != null) {
            CompoundButton compoundButton;
            CompoundButton compoundButton2;
            if (this.f889a.m2072g()) {
                if (this.f891c == null) {
                    m1944c();
                }
                compoundButton = this.f891c;
                compoundButton2 = this.f893e;
            } else {
                if (this.f893e == null) {
                    m1945d();
                }
                compoundButton = this.f893e;
                compoundButton2 = this.f891c;
            }
            if (z) {
                int i;
                compoundButton.setChecked(this.f889a.isChecked());
                if (z) {
                    i = 0;
                } else {
                    i = 8;
                }
                if (compoundButton.getVisibility() != i) {
                    compoundButton.setVisibility(i);
                }
                if (compoundButton2 != null && compoundButton2.getVisibility() != 8) {
                    compoundButton2.setVisibility(8);
                    return;
                }
                return;
            }
            if (this.f893e != null) {
                this.f893e.setVisibility(8);
            }
            if (this.f891c != null) {
                this.f891c.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f889a.m2072g()) {
            if (this.f891c == null) {
                m1944c();
            }
            compoundButton = this.f891c;
        } else {
            if (this.f893e == null) {
                m1945d();
            }
            compoundButton = this.f893e;
        }
        compoundButton.setChecked(z);
    }

    public void m1947a(boolean z, char c) {
        int i = (z && this.f889a.m2071f()) ? 0 : 8;
        if (i == 0) {
            this.f894f.setText(this.f889a.m2069e());
        }
        if (this.f894f.getVisibility() != i) {
            this.f894f.setVisibility(i);
        }
    }

    public void setIcon(Drawable drawable) {
        int i = (this.f889a.m2074i() || this.f902n) ? 1 : 0;
        if (i == 0 && !this.f898j) {
            return;
        }
        if (this.f890b != null || drawable != null || this.f898j) {
            if (this.f890b == null) {
                m1943b();
            }
            if (drawable != null || this.f898j) {
                ImageView imageView = this.f890b;
                if (i == 0) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.f890b.getVisibility() != 0) {
                    this.f890b.setVisibility(0);
                    return;
                }
                return;
            }
            this.f890b.setVisibility(8);
        }
    }

    protected void onMeasure(int i, int i2) {
        if (this.f890b != null && this.f898j) {
            LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f890b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    private void m1943b() {
        this.f890b = (ImageView) getInflater().inflate(android.support.v7.appcompat.ProGuard.layout.abc_list_menu_item_icon, this, false);
        addView(this.f890b, 0);
    }

    private void m1944c() {
        this.f891c = (RadioButton) getInflater().inflate(android.support.v7.appcompat.ProGuard.layout.abc_list_menu_item_radio, this, false);
        addView(this.f891c);
    }

    private void m1945d() {
        this.f893e = (CheckBox) getInflater().inflate(android.support.v7.appcompat.ProGuard.layout.abc_list_menu_item_checkbox, this, false);
        addView(this.f893e);
    }

    public boolean m1948a() {
        return false;
    }

    private LayoutInflater getInflater() {
        if (this.f901m == null) {
            this.f901m = LayoutInflater.from(this.f900l);
        }
        return this.f901m;
    }
}
