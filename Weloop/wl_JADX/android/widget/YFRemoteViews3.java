package android.widget;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.view.LayoutInflater.Filter;
import android.view.View;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Objects;

/* compiled from: ProGuard */
public class YFRemoteViews3 implements Parcelable, Filter {
    public static final Creator<YFRemoteViews3> CREATOR;
    private static final ProGuard f1839j;
    private static final Object[] f1840k;
    private static final ArrayMap<Class<? extends View>, ArrayMap<ProGuard<String, Class<?>>, Method>> f1841l;
    private static final ThreadLocal<Object[]> f1842m;
    public ApplicationInfo f1843a;
    public final int f1844b;
    public ArrayList<Action> f1845c;
    public ProGuard f1846d;
    public ProGuard f1847e;
    public boolean f1848f;
    public YFRemoteViews3 f1849g;
    public YFRemoteViews3 f1850h;
    public boolean f1851i;
    private final ProGuard<String, Class<?>> f1852n;

    /* renamed from: android.widget.YFRemoteViews3.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f1776a;

        static {
            f1776a = new int[Config.values().length];
            try {
                f1776a[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1776a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1776a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1776a[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: ProGuard */
    public static abstract class Action implements Parcelable {
        int f1777a;

        public int describeContents() {
            return 0;
        }

        public void m2744a(ProGuard proGuard) {
        }

        public void m2743a(ProGuard proGuard) {
        }
    }

    /* compiled from: ProGuard */
    public class BitmapReflectionAction extends Action {
        int f1778b;
        Bitmap f1779c;
        String f1780d;
        final /* synthetic */ YFRemoteViews3 f1781e;

        BitmapReflectionAction(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1781e = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1780d = parcel.readString();
            this.f1778b = parcel.readInt();
            this.f1779c = yFRemoteViews3.f1847e.m2750a(this.f1778b);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(12);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1780d);
            parcel.writeInt(this.f1778b);
        }

        public void m2745a(ProGuard proGuard) {
            this.f1778b = proGuard.m2749a(this.f1779c);
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionAction extends Action {
        public String f1782b;
        public int f1783c;
        public Object f1784d;
        final /* synthetic */ YFRemoteViews3 f1785e;

        @TargetApi(23)
        ReflectionAction(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1785e = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1782b = parcel.readString();
            this.f1783c = parcel.readInt();
            switch (this.f1783c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f1784d = Boolean.valueOf(parcel.readInt() != 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f1784d = Byte.valueOf(parcel.readByte());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f1784d = Short.valueOf((short) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    this.f1784d = Integer.valueOf(parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f1784d = Long.valueOf(parcel.readLong());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    this.f1784d = Float.valueOf(parcel.readFloat());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    this.f1784d = Double.valueOf(parcel.readDouble());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    this.f1784d = Character.valueOf((char) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    this.f1784d = parcel.readString();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    this.f1784d = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (parcel.readInt() != 0) {
                        this.f1784d = Uri.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (parcel.readInt() != 0) {
                        this.f1784d = Bitmap.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    this.f1784d = parcel.readBundle();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (parcel.readInt() != 0) {
                        this.f1784d = Intent.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                    if (parcel.readInt() != 0) {
                        this.f1784d = ColorStateList.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                    if (parcel.readInt() != 0) {
                        this.f1784d = Icon.CREATOR.createFromParcel(parcel);
                    }
                default:
            }
        }

        @TargetApi(23)
        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(2);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1782b);
            parcel.writeInt(this.f1783c);
            switch (this.f1783c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.writeInt(((Boolean) this.f1784d).booleanValue() ? 1 : 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.writeByte(((Byte) this.f1784d).byteValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.writeInt(((Short) this.f1784d).shortValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    parcel.writeInt(((Integer) this.f1784d).intValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    parcel.writeLong(((Long) this.f1784d).longValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    parcel.writeFloat(((Float) this.f1784d).floatValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    parcel.writeDouble(((Double) this.f1784d).doubleValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    parcel.writeInt(((Character) this.f1784d).charValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    parcel.writeString((String) this.f1784d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    TextUtils.writeToParcel((CharSequence) this.f1784d, parcel, i);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (this.f1784d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1784d != null) {
                        ((Uri) this.f1784d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (this.f1784d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1784d != null) {
                        ((Bitmap) this.f1784d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    parcel.writeBundle((Bundle) this.f1784d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (this.f1784d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1784d != null) {
                        ((Intent) this.f1784d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                    if (this.f1784d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1784d != null) {
                        ((ColorStateList) this.f1784d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_maxButtonHeight /*16*/:
                    if (this.f1784d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1784d != null) {
                        ((Icon) this.f1784d).writeToParcel(parcel, i);
                    }
                default:
            }
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionActionWithoutParams extends Action {
        final String f1786b;
        final /* synthetic */ YFRemoteViews3 f1787c;

        ReflectionActionWithoutParams(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1787c = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1786b = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(5);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1786b);
        }
    }

    /* compiled from: ProGuard */
    public class SetDrawableParameters extends Action {
        boolean f1788b;
        int f1789c;
        int f1790d;
        Mode f1791e;
        int f1792f;
        final /* synthetic */ YFRemoteViews3 f1793g;

        public SetDrawableParameters(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            Object obj = 1;
            this.f1793g = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1788b = parcel.readInt() != 0;
            this.f1789c = parcel.readInt();
            this.f1790d = parcel.readInt();
            if (parcel.readInt() == 0) {
                obj = null;
            }
            if (obj != null) {
                this.f1791e = Mode.valueOf(parcel.readString());
            } else {
                this.f1791e = null;
            }
            this.f1792f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(3);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1788b ? 1 : 0);
            parcel.writeInt(this.f1789c);
            parcel.writeInt(this.f1790d);
            if (this.f1791e != null) {
                parcel.writeInt(1);
                parcel.writeString(this.f1791e.toString());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f1792f);
        }
    }

    /* compiled from: ProGuard */
    public class SetEmptyView extends Action {
        int f1794b;
        int f1795c;
        final /* synthetic */ YFRemoteViews3 f1796d;

        SetEmptyView(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1796d = yFRemoteViews3;
            this.f1794b = parcel.readInt();
            this.f1795c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(6);
            parcel.writeInt(this.f1794b);
            parcel.writeInt(this.f1795c);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickFillInIntent extends Action {
        Intent f1797b;
        final /* synthetic */ YFRemoteViews3 f1798c;

        public SetOnClickFillInIntent(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1798c = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1797b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(9);
            parcel.writeInt(this.a);
            this.f1797b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickPendingIntent extends Action {
        PendingIntent f1799b;
        final /* synthetic */ YFRemoteViews3 f1800c;

        public SetOnClickPendingIntent(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1800c = yFRemoteViews3;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.f1799b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(1);
            parcel.writeInt(this.a);
            if (this.f1799b == null) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (this.f1799b != null) {
                this.f1799b.writeToParcel(parcel, 0);
            }
        }
    }

    /* compiled from: ProGuard */
    public class SetPendingIntentTemplate extends Action {
        PendingIntent f1801b;
        final /* synthetic */ YFRemoteViews3 f1802c;

        public SetPendingIntentTemplate(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1802c = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1801b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(8);
            parcel.writeInt(this.a);
            this.f1801b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterIntent extends Action {
        Intent f1803b;
        final /* synthetic */ YFRemoteViews3 f1804c;

        public SetRemoteViewsAdapterIntent(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1804c = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1803b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(10);
            parcel.writeInt(this.a);
            this.f1803b.writeToParcel(parcel, i);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterList extends Action {
        int f1805b;
        ArrayList<YFRemoteViews3> f1806c;
        final /* synthetic */ YFRemoteViews3 f1807d;

        public SetRemoteViewsAdapterList(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1807d = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1805b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f1806c = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f1806c.add((YFRemoteViews3) YFRemoteViews3.CREATOR.createFromParcel(parcel));
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(15);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1805b);
            if (this.f1806c == null || this.f1806c.size() == 0) {
                parcel.writeInt(0);
                return;
            }
            int size = this.f1806c.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((YFRemoteViews3) this.f1806c.get(i2)).writeToParcel(parcel, i);
            }
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableAction extends Action {
        boolean f1808b;
        boolean f1809c;
        int f1810d;
        int f1811e;
        int f1812f;
        int f1813g;
        Icon f1814h;
        Icon f1815i;
        Icon f1816j;
        Icon f1817k;
        final /* synthetic */ YFRemoteViews3 f1818l;

        @TargetApi(23)
        public TextViewDrawableAction(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            boolean z = true;
            this.f1818l = yFRemoteViews3;
            this.f1808b = false;
            this.f1809c = false;
            this.a = parcel.readInt();
            this.f1808b = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                z = false;
            }
            this.f1809c = z;
            if (this.f1809c) {
                if (parcel.readInt() != 0) {
                    this.f1814h = (Icon) Icon.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    this.f1815i = (Icon) Icon.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    this.f1816j = (Icon) Icon.CREATOR.createFromParcel(parcel);
                }
                if (parcel.readInt() != 0) {
                    this.f1817k = (Icon) Icon.CREATOR.createFromParcel(parcel);
                    return;
                }
                return;
            }
            this.f1810d = parcel.readInt();
            this.f1811e = parcel.readInt();
            this.f1812f = parcel.readInt();
            this.f1813g = parcel.readInt();
        }

        @TargetApi(23)
        public void writeToParcel(Parcel parcel, int i) {
            int i2;
            parcel.writeInt(11);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1808b ? 1 : 0);
            if (this.f1809c) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (this.f1809c) {
                if (this.f1814h != null) {
                    parcel.writeInt(1);
                    this.f1814h.writeToParcel(parcel, 0);
                } else {
                    parcel.writeInt(0);
                }
                if (this.f1815i != null) {
                    parcel.writeInt(1);
                    this.f1815i.writeToParcel(parcel, 0);
                } else {
                    parcel.writeInt(0);
                }
                if (this.f1816j != null) {
                    parcel.writeInt(1);
                    this.f1816j.writeToParcel(parcel, 0);
                } else {
                    parcel.writeInt(0);
                }
                if (this.f1817k != null) {
                    parcel.writeInt(1);
                    this.f1817k.writeToParcel(parcel, 0);
                    return;
                }
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(this.f1810d);
            parcel.writeInt(this.f1811e);
            parcel.writeInt(this.f1812f);
            parcel.writeInt(this.f1813g);
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableColorFilterAction extends Action {
        final boolean f1819b;
        final int f1820c;
        final int f1821d;
        final Mode f1822e;
        final /* synthetic */ YFRemoteViews3 f1823f;

        public TextViewDrawableColorFilterAction(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1823f = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1819b = parcel.readInt() != 0;
            this.f1820c = parcel.readInt();
            this.f1821d = parcel.readInt();
            this.f1822e = m2746a(parcel);
        }

        private Mode m2746a(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt < 0 || readInt >= Mode.values().length) {
                return Mode.CLEAR;
            }
            return Mode.values()[readInt];
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(17);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1819b ? 1 : 0);
            parcel.writeInt(this.f1820c);
            parcel.writeInt(this.f1821d);
            parcel.writeInt(this.f1822e.ordinal());
        }
    }

    /* compiled from: ProGuard */
    public class TextViewSizeAction extends Action {
        int f1824b;
        float f1825c;
        final /* synthetic */ YFRemoteViews3 f1826d;

        public TextViewSizeAction(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1826d = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1824b = parcel.readInt();
            this.f1825c = parcel.readFloat();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(13);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1824b);
            parcel.writeFloat(this.f1825c);
        }
    }

    /* compiled from: ProGuard */
    public class ViewGroupAction extends Action {
        YFRemoteViews3 f1827b;
        final /* synthetic */ YFRemoteViews3 f1828c;

        public ViewGroupAction(YFRemoteViews3 yFRemoteViews3, Parcel parcel, ProGuard proGuard) {
            this.f1828c = yFRemoteViews3;
            this.a = parcel.readInt();
            if ((parcel.readInt() == 0 ? 1 : null) == null) {
                this.f1827b = new YFRemoteViews3(parcel, proGuard);
            } else {
                this.f1827b = null;
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(4);
            parcel.writeInt(this.a);
            if (this.f1827b != null) {
                parcel.writeInt(1);
                this.f1827b.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public void m2748a(ProGuard proGuard) {
            if (this.f1827b != null) {
                proGuard.m2754a(this.f1827b.m2766e());
            }
        }

        public void m2747a(ProGuard proGuard) {
            if (this.f1827b != null) {
                this.f1827b.m2758a(proGuard);
            }
        }
    }

    /* compiled from: ProGuard */
    public class ViewPaddingAction extends Action {
        int f1829b;
        int f1830c;
        int f1831d;
        int f1832e;
        final /* synthetic */ YFRemoteViews3 f1833f;

        public ViewPaddingAction(YFRemoteViews3 yFRemoteViews3, Parcel parcel) {
            this.f1833f = yFRemoteViews3;
            this.a = parcel.readInt();
            this.f1829b = parcel.readInt();
            this.f1830c = parcel.readInt();
            this.f1831d = parcel.readInt();
            this.f1832e = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(14);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1829b);
            parcel.writeInt(this.f1830c);
            parcel.writeInt(this.f1831d);
            parcel.writeInt(this.f1832e);
        }
    }

    /* renamed from: android.widget.YFRemoteViews3.a */
    public static class ProGuard extends RuntimeException {
        public ProGuard(String str) {
            super(str);
        }
    }

    /* renamed from: android.widget.YFRemoteViews3.b */
    public static class ProGuard {
        ArrayList<Bitmap> f1834a;

        public ProGuard() {
            this.f1834a = new ArrayList();
        }

        public ProGuard(Parcel parcel) {
            int readInt = parcel.readInt();
            this.f1834a = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f1834a.add((Bitmap) Bitmap.CREATOR.createFromParcel(parcel));
            }
        }

        public int m2749a(Bitmap bitmap) {
            if (bitmap == null) {
                return -1;
            }
            if (this.f1834a.contains(bitmap)) {
                return this.f1834a.indexOf(bitmap);
            }
            this.f1834a.add(bitmap);
            return this.f1834a.size() - 1;
        }

        public Bitmap m2750a(int i) {
            if (i == -1 || i >= this.f1834a.size()) {
                return null;
            }
            return (Bitmap) this.f1834a.get(i);
        }

        public void m2751a(Parcel parcel, int i) {
            int size = this.f1834a.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((Bitmap) this.f1834a.get(i2)).writeToParcel(parcel, i);
            }
        }

        public void m2752a(ProGuard proGuard) {
            for (int i = 0; i < this.f1834a.size(); i++) {
                proGuard.m2755a((Bitmap) this.f1834a.get(i));
            }
        }
    }

    /* renamed from: android.widget.YFRemoteViews3.c */
    public class ProGuard {
        int f1835a;
        final /* synthetic */ YFRemoteViews3 f1836b;

        public ProGuard(YFRemoteViews3 yFRemoteViews3) {
            this.f1836b = yFRemoteViews3;
        }

        public void m2753a() {
            this.f1835a = 0;
        }

        public void m2754a(int i) {
            this.f1835a += i;
        }

        public int m2756b() {
            return this.f1835a;
        }

        public void m2755a(Bitmap bitmap) {
            int i = 4;
            Config config = bitmap.getConfig();
            if (config != null) {
                switch (ProGuard.f1776a[config.ordinal()]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        i = 1;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        i = 2;
                        break;
                }
            }
            m2754a(i * (bitmap.getWidth() * bitmap.getHeight()));
        }
    }

    /* renamed from: android.widget.YFRemoteViews3.d */
    static class ProGuard<F, S> {
        F f1837a;
        S f1838b;

        ProGuard(F f, S s) {
            this.f1837a = f;
            this.f1838b = s;
        }

        public boolean equals(Object obj) {
            return m2757a(obj);
        }

        @TargetApi(23)
        private boolean m2757a(Object obj) {
            if (!(obj instanceof ProGuard)) {
                return false;
            }
            ProGuard proGuard = (ProGuard) obj;
            if (Objects.deepEquals(proGuard.f1837a, this.f1837a) && Objects.deepEquals(proGuard.f1838b, this.f1838b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.f1837a == null ? 0 : this.f1837a.hashCode();
            if (this.f1838b != null) {
                i = this.f1838b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* renamed from: android.widget.YFRemoteViews3.e */
    public static class ProGuard {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: android.widget.YFRemoteViews3.f */
    public @interface ProGuard {
    }

    public /* synthetic */ Object clone() {
        return m2764c();
    }

    static {
        f1839j = new ProGuard();
        f1840k = new Object[0];
        f1841l = m2760f();
        f1842m = new ProGuard();
        CREATOR = new ProGuard();
    }

    @TargetApi(23)
    private static ArrayMap<Class<? extends View>, ArrayMap<ProGuard<String, Class<?>>, Method>> m2760f() {
        return new ArrayMap();
    }

    void m2762a() {
        this.f1848f = false;
    }

    public boolean m2763b() {
        return (this.f1849g == null || this.f1850h == null) ? false : true;
    }

    public YFRemoteViews3(Parcel parcel) {
        this(parcel, null);
    }

    public YFRemoteViews3(Parcel parcel, ProGuard proGuard) {
        int i = 0;
        this.f1848f = true;
        this.f1849g = null;
        this.f1850h = null;
        this.f1851i = false;
        this.f1852n = new ProGuard(null, null);
        int readInt = parcel.readInt();
        if (proGuard == null) {
            this.f1847e = new ProGuard(parcel);
        } else {
            m2758a(proGuard);
            m2762a();
        }
        if (readInt == 0) {
            boolean z;
            this.f1843a = (ApplicationInfo) parcel.readParcelable(null);
            this.f1844b = parcel.readInt();
            if (parcel.readInt() == 1) {
                z = true;
            } else {
                z = false;
            }
            this.f1851i = z;
            readInt = parcel.readInt();
            if (readInt > 0) {
                this.f1845c = new ArrayList(readInt);
                while (i < readInt) {
                    int readInt2 = parcel.readInt();
                    switch (readInt2) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            this.f1845c.add(new SetOnClickPendingIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            this.f1845c.add(new ReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            this.f1845c.add(new SetDrawableParameters(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                            this.f1845c.add(new ViewGroupAction(this, parcel, this.f1847e));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            this.f1845c.add(new ReflectionActionWithoutParams(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            this.f1845c.add(new SetEmptyView(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                            this.f1845c.add(new SetPendingIntentTemplate(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                            this.f1845c.add(new SetOnClickFillInIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                            this.f1845c.add(new SetRemoteViewsAdapterIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                            this.f1845c.add(new TextViewDrawableAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                            this.f1845c.add(new BitmapReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                            this.f1845c.add(new TextViewSizeAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                            this.f1845c.add(new ViewPaddingAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                            this.f1845c.add(new SetRemoteViewsAdapterList(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_collapseIcon /*17*/:
                            this.f1845c.add(new TextViewDrawableColorFilterAction(this, parcel));
                            break;
                        default:
                            throw new ProGuard("Tag " + readInt2 + " not found");
                    }
                    i++;
                }
            }
        } else {
            this.f1849g = new YFRemoteViews3(parcel, this.f1847e);
            this.f1850h = new YFRemoteViews3(parcel, this.f1847e);
            this.f1843a = this.f1850h.f1843a;
            this.f1844b = this.f1850h.m2765d();
        }
        this.f1846d = new ProGuard(this);
        m2761g();
    }

    public YFRemoteViews3 m2764c() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        YFRemoteViews3 yFRemoteViews3 = new YFRemoteViews3(obtain);
        obtain.recycle();
        return yFRemoteViews3;
    }

    public int m2765d() {
        return this.f1844b;
    }

    private void m2761g() {
        this.f1846d.m2753a();
        if (m2763b()) {
            this.f1846d.m2754a(this.f1849g.m2766e());
            this.f1846d.m2754a(this.f1850h.m2766e());
            this.f1847e.m2752a(this.f1846d);
            return;
        }
        if (this.f1845c != null) {
            int size = this.f1845c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f1845c.get(i)).m2744a(this.f1846d);
            }
        }
        if (this.f1848f) {
            this.f1847e.m2752a(this.f1846d);
        }
    }

    private void m2758a(ProGuard proGuard) {
        this.f1847e = proGuard;
        if (m2763b()) {
            this.f1849g.m2758a(proGuard);
            this.f1850h.m2758a(proGuard);
        } else if (this.f1845c != null) {
            int size = this.f1845c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f1845c.get(i)).m2743a(proGuard);
            }
        }
    }

    public int m2766e() {
        return this.f1846d.m2756b();
    }

    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(ProGuard.class);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        if (m2763b()) {
            parcel.writeInt(1);
            if (this.f1848f) {
                this.f1847e.m2751a(parcel, i);
            }
            this.f1849g.writeToParcel(parcel, i);
            this.f1850h.writeToParcel(parcel, i);
            return;
        }
        int size;
        parcel.writeInt(0);
        if (this.f1848f) {
            this.f1847e.m2751a(parcel, i);
        }
        parcel.writeParcelable(this.f1843a, i);
        parcel.writeInt(this.f1844b);
        if (!this.f1851i) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.f1845c != null) {
            size = this.f1845c.size();
        } else {
            size = 0;
        }
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            ((Action) this.f1845c.get(i3)).writeToParcel(parcel, 0);
        }
    }
}
