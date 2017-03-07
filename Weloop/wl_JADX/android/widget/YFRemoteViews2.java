package android.widget;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.PorterDuff.Mode;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.view.LayoutInflater.Filter;
import android.view.View;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: ProGuard */
public class YFRemoteViews2 implements Parcelable, Filter {
    public static final Creator<YFRemoteViews2> CREATOR;
    public static final ProGuard f1762j;
    public static final Object[] f1763k;
    public static final HashMap<Class<? extends View>, HashMap<ProGuard<String, Class<?>>, Method>> f1764l;
    public static final ThreadLocal<Object[]> f1765m;
    public ApplicationInfo f1766a;
    public final int f1767b;
    public ArrayList<Action> f1768c;
    public ProGuard f1769d;
    public ProGuard f1770e;
    public boolean f1771f;
    public YFRemoteViews2 f1772g;
    public YFRemoteViews2 f1773h;
    public boolean f1774i;
    public final ProGuard<String, Class<?>> f1775n;

    /* renamed from: android.widget.YFRemoteViews2.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f1703a;

        static {
            f1703a = new int[Config.values().length];
            try {
                f1703a[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1703a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1703a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1703a[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: ProGuard */
    public static abstract class Action implements Parcelable {
        public int f1704a;

        public int describeContents() {
            return 0;
        }

        public void m2723a(ProGuard proGuard) {
        }

        public void m2722a(ProGuard proGuard) {
        }
    }

    /* compiled from: ProGuard */
    public class BitmapReflectionAction extends Action {
        int f1705b;
        Bitmap f1706c;
        String f1707d;
        final /* synthetic */ YFRemoteViews2 f1708e;

        BitmapReflectionAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1708e = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1707d = parcel.readString();
            this.f1705b = parcel.readInt();
            this.f1706c = yFRemoteViews2.f1770e.m2729a(this.f1705b);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(12);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1707d);
            parcel.writeInt(this.f1705b);
        }

        public void m2724a(ProGuard proGuard) {
            this.f1705b = proGuard.m2728a(this.f1706c);
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionAction extends Action {
        public String f1709b;
        public int f1710c;
        public Object f1711d;
        final /* synthetic */ YFRemoteViews2 f1712e;

        ReflectionAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1712e = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1709b = parcel.readString();
            this.f1710c = parcel.readInt();
            switch (this.f1710c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f1711d = Boolean.valueOf(parcel.readInt() != 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f1711d = Byte.valueOf(parcel.readByte());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f1711d = Short.valueOf((short) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    this.f1711d = Integer.valueOf(parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f1711d = Long.valueOf(parcel.readLong());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    this.f1711d = Float.valueOf(parcel.readFloat());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    this.f1711d = Double.valueOf(parcel.readDouble());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    this.f1711d = Character.valueOf((char) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    this.f1711d = parcel.readString();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    this.f1711d = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (parcel.readInt() != 0) {
                        this.f1711d = Uri.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (parcel.readInt() != 0) {
                        this.f1711d = Bitmap.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    this.f1711d = parcel.readBundle();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (parcel.readInt() != 0) {
                        this.f1711d = Intent.CREATOR.createFromParcel(parcel);
                    }
                default:
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(2);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1709b);
            parcel.writeInt(this.f1710c);
            switch (this.f1710c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.writeInt(((Boolean) this.f1711d).booleanValue() ? 1 : 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.writeByte(((Byte) this.f1711d).byteValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.writeInt(((Short) this.f1711d).shortValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    parcel.writeInt(((Integer) this.f1711d).intValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    parcel.writeLong(((Long) this.f1711d).longValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    parcel.writeFloat(((Float) this.f1711d).floatValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    parcel.writeDouble(((Double) this.f1711d).doubleValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    parcel.writeInt(((Character) this.f1711d).charValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    parcel.writeString((String) this.f1711d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    TextUtils.writeToParcel((CharSequence) this.f1711d, parcel, i);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (this.f1711d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1711d != null) {
                        ((Uri) this.f1711d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (this.f1711d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1711d != null) {
                        ((Bitmap) this.f1711d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    parcel.writeBundle((Bundle) this.f1711d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (this.f1711d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1711d != null) {
                        ((Intent) this.f1711d).writeToParcel(parcel, i);
                    }
                default:
            }
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionActionWithoutParams extends Action {
        final String f1713b;
        final /* synthetic */ YFRemoteViews2 f1714c;

        ReflectionActionWithoutParams(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1714c = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1713b = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(5);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1713b);
        }
    }

    /* compiled from: ProGuard */
    public class SetDrawableParameters extends Action {
        boolean f1715b;
        int f1716c;
        int f1717d;
        Mode f1718e;
        int f1719f;
        final /* synthetic */ YFRemoteViews2 f1720g;

        public SetDrawableParameters(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            Object obj = 1;
            this.f1720g = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1715b = parcel.readInt() != 0;
            this.f1716c = parcel.readInt();
            this.f1717d = parcel.readInt();
            if (parcel.readInt() == 0) {
                obj = null;
            }
            if (obj != null) {
                this.f1718e = Mode.valueOf(parcel.readString());
            } else {
                this.f1718e = null;
            }
            this.f1719f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(3);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1715b ? 1 : 0);
            parcel.writeInt(this.f1716c);
            parcel.writeInt(this.f1717d);
            if (this.f1718e != null) {
                parcel.writeInt(1);
                parcel.writeString(this.f1718e.toString());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f1719f);
        }
    }

    /* compiled from: ProGuard */
    public class SetEmptyView extends Action {
        public int f1721b;
        public int f1722c;
        final /* synthetic */ YFRemoteViews2 f1723d;

        SetEmptyView(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1723d = yFRemoteViews2;
            this.f1721b = parcel.readInt();
            this.f1722c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(6);
            parcel.writeInt(this.f1721b);
            parcel.writeInt(this.f1722c);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickFillInIntent extends Action {
        Intent f1724b;
        final /* synthetic */ YFRemoteViews2 f1725c;

        public SetOnClickFillInIntent(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1725c = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1724b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(9);
            parcel.writeInt(this.a);
            this.f1724b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickPendingIntent extends Action {
        PendingIntent f1726b;
        final /* synthetic */ YFRemoteViews2 f1727c;

        public SetOnClickPendingIntent(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1727c = yFRemoteViews2;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.f1726b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(1);
            parcel.writeInt(this.a);
            if (this.f1726b == null) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (this.f1726b != null) {
                this.f1726b.writeToParcel(parcel, 0);
            }
        }
    }

    /* compiled from: ProGuard */
    public class SetPendingIntentTemplate extends Action {
        PendingIntent f1728b;
        final /* synthetic */ YFRemoteViews2 f1729c;

        public SetPendingIntentTemplate(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1729c = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1728b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(8);
            parcel.writeInt(this.a);
            this.f1728b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterIntent extends Action {
        Intent f1730b;
        final /* synthetic */ YFRemoteViews2 f1731c;

        public SetRemoteViewsAdapterIntent(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1731c = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1730b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(10);
            parcel.writeInt(this.a);
            this.f1730b.writeToParcel(parcel, i);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterList extends Action {
        int f1732b;
        ArrayList<YFRemoteViews2> f1733c;
        final /* synthetic */ YFRemoteViews2 f1734d;

        public SetRemoteViewsAdapterList(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1734d = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1732b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f1733c = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f1733c.add((YFRemoteViews2) YFRemoteViews2.CREATOR.createFromParcel(parcel));
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(15);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1732b);
            if (this.f1733c == null || this.f1733c.size() == 0) {
                parcel.writeInt(0);
                return;
            }
            int size = this.f1733c.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((YFRemoteViews2) this.f1733c.get(i2)).writeToParcel(parcel, i);
            }
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableAction extends Action {
        public boolean f1735b;
        public int f1736c;
        public int f1737d;
        public int f1738e;
        public int f1739f;
        final /* synthetic */ YFRemoteViews2 f1740g;

        public TextViewDrawableAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            boolean z = false;
            this.f1740g = yFRemoteViews2;
            this.f1735b = false;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            }
            this.f1735b = z;
            this.f1736c = parcel.readInt();
            this.f1737d = parcel.readInt();
            this.f1738e = parcel.readInt();
            this.f1739f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(11);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1735b ? 1 : 0);
            parcel.writeInt(this.f1736c);
            parcel.writeInt(this.f1737d);
            parcel.writeInt(this.f1738e);
            parcel.writeInt(this.f1739f);
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableColorFilterAction extends Action {
        public final boolean f1741b;
        public final int f1742c;
        public final int f1743d;
        public final Mode f1744e;
        final /* synthetic */ YFRemoteViews2 f1745f;

        public TextViewDrawableColorFilterAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1745f = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1741b = parcel.readInt() != 0;
            this.f1742c = parcel.readInt();
            this.f1743d = parcel.readInt();
            this.f1744e = m2725a(parcel);
        }

        public Mode m2725a(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt < 0 || readInt >= Mode.values().length) {
                return Mode.CLEAR;
            }
            return Mode.values()[readInt];
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(17);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1741b ? 1 : 0);
            parcel.writeInt(this.f1742c);
            parcel.writeInt(this.f1743d);
            parcel.writeInt(this.f1744e.ordinal());
        }
    }

    /* compiled from: ProGuard */
    public class TextViewSizeAction extends Action {
        int f1746b;
        float f1747c;
        final /* synthetic */ YFRemoteViews2 f1748d;

        public TextViewSizeAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1748d = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1746b = parcel.readInt();
            this.f1747c = parcel.readFloat();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(13);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1746b);
            parcel.writeFloat(this.f1747c);
        }
    }

    /* compiled from: ProGuard */
    public class ViewGroupAction extends Action {
        public YFRemoteViews2 f1749b;
        final /* synthetic */ YFRemoteViews2 f1750c;

        public ViewGroupAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel, ProGuard proGuard) {
            this.f1750c = yFRemoteViews2;
            this.a = parcel.readInt();
            if ((parcel.readInt() == 0 ? 1 : null) == null) {
                this.f1749b = new YFRemoteViews2(parcel, proGuard);
            } else {
                this.f1749b = null;
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(4);
            parcel.writeInt(this.a);
            if (this.f1749b != null) {
                parcel.writeInt(1);
                this.f1749b.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public void m2727a(ProGuard proGuard) {
            if (this.f1749b != null) {
                proGuard.m2733a(this.f1749b.m2742f());
            }
        }

        public void m2726a(ProGuard proGuard) {
            if (this.f1749b != null) {
                this.f1749b.m2737a(proGuard);
            }
        }
    }

    /* compiled from: ProGuard */
    public class ViewPaddingAction extends Action {
        public int f1751b;
        public int f1752c;
        public int f1753d;
        public int f1754e;
        final /* synthetic */ YFRemoteViews2 f1755f;

        public ViewPaddingAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f1755f = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f1751b = parcel.readInt();
            this.f1752c = parcel.readInt();
            this.f1753d = parcel.readInt();
            this.f1754e = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(14);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1751b);
            parcel.writeInt(this.f1752c);
            parcel.writeInt(this.f1753d);
            parcel.writeInt(this.f1754e);
        }
    }

    /* renamed from: android.widget.YFRemoteViews2.a */
    public static class ProGuard extends RuntimeException {
        public ProGuard(String str) {
            super(str);
        }
    }

    /* renamed from: android.widget.YFRemoteViews2.b */
    public static class ProGuard {
        ArrayList<Bitmap> f1756a;

        public ProGuard() {
            this.f1756a = new ArrayList();
        }

        public ProGuard(Parcel parcel) {
            int readInt = parcel.readInt();
            this.f1756a = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f1756a.add((Bitmap) Bitmap.CREATOR.createFromParcel(parcel));
            }
        }

        public int m2728a(Bitmap bitmap) {
            if (bitmap == null) {
                return -1;
            }
            if (this.f1756a.contains(bitmap)) {
                return this.f1756a.indexOf(bitmap);
            }
            this.f1756a.add(bitmap);
            return this.f1756a.size() - 1;
        }

        public Bitmap m2729a(int i) {
            if (i == -1 || i >= this.f1756a.size()) {
                return null;
            }
            return (Bitmap) this.f1756a.get(i);
        }

        public void m2730a(Parcel parcel, int i) {
            int size = this.f1756a.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((Bitmap) this.f1756a.get(i2)).writeToParcel(parcel, i);
            }
        }

        public void m2731a(ProGuard proGuard) {
            for (int i = 0; i < this.f1756a.size(); i++) {
                proGuard.m2734a((Bitmap) this.f1756a.get(i));
            }
        }
    }

    /* renamed from: android.widget.YFRemoteViews2.c */
    public class ProGuard {
        public int f1757a;
        final /* synthetic */ YFRemoteViews2 f1758b;

        public ProGuard(YFRemoteViews2 yFRemoteViews2) {
            this.f1758b = yFRemoteViews2;
        }

        public void m2732a() {
            this.f1757a = 0;
        }

        public void m2733a(int i) {
            this.f1757a += i;
        }

        public int m2735b() {
            return this.f1757a;
        }

        public void m2734a(Bitmap bitmap) {
            int i = 4;
            Config config = bitmap.getConfig();
            if (config != null) {
                switch (ProGuard.f1703a[config.ordinal()]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        i = 1;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        i = 2;
                        break;
                }
            }
            m2733a(i * (bitmap.getWidth() * bitmap.getHeight()));
        }
    }

    /* renamed from: android.widget.YFRemoteViews2.d */
    public class ProGuard<F, S> {
        public F f1759a;
        public S f1760b;
        final /* synthetic */ YFRemoteViews2 f1761c;

        ProGuard(YFRemoteViews2 yFRemoteViews2, F f, S s) {
            this.f1761c = yFRemoteViews2;
            this.f1759a = f;
            this.f1760b = s;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ProGuard)) {
                return false;
            }
            ProGuard proGuard = (ProGuard) obj;
            return true;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.f1759a == null ? 0 : this.f1759a.hashCode();
            if (this.f1760b != null) {
                i = this.f1760b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* renamed from: android.widget.YFRemoteViews2.e */
    public static class ProGuard {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: android.widget.YFRemoteViews2.f */
    public @interface ProGuard {
    }

    public /* synthetic */ Object clone() {
        return m2739c();
    }

    static {
        f1762j = new ProGuard();
        f1763k = new Object[0];
        f1764l = new HashMap();
        f1765m = new ProGuard();
        CREATOR = new ProGuard();
    }

    public void m2736a() {
        this.f1771f = false;
    }

    public boolean m2738b() {
        return (this.f1772g == null || this.f1773h == null) ? false : true;
    }

    public YFRemoteViews2(Parcel parcel) {
        this(parcel, null);
    }

    public YFRemoteViews2(Parcel parcel, ProGuard proGuard) {
        int i = 0;
        this.f1771f = true;
        this.f1772g = null;
        this.f1773h = null;
        this.f1774i = false;
        this.f1775n = new ProGuard(this, null, null);
        int readInt = parcel.readInt();
        if (proGuard == null) {
            this.f1770e = new ProGuard(parcel);
        } else {
            m2737a(proGuard);
            m2736a();
        }
        if (readInt == 0) {
            boolean z;
            this.f1766a = (ApplicationInfo) parcel.readParcelable(null);
            this.f1767b = parcel.readInt();
            if (parcel.readInt() == 1) {
                z = true;
            } else {
                z = false;
            }
            this.f1774i = z;
            readInt = parcel.readInt();
            if (readInt > 0) {
                this.f1768c = new ArrayList(readInt);
                while (i < readInt) {
                    int readInt2 = parcel.readInt();
                    switch (readInt2) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            this.f1768c.add(new SetOnClickPendingIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            this.f1768c.add(new ReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            this.f1768c.add(new SetDrawableParameters(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                            this.f1768c.add(new ViewGroupAction(this, parcel, this.f1770e));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            this.f1768c.add(new ReflectionActionWithoutParams(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            this.f1768c.add(new SetEmptyView(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                            this.f1768c.add(new SetPendingIntentTemplate(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                            this.f1768c.add(new SetOnClickFillInIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                            this.f1768c.add(new SetRemoteViewsAdapterIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                            this.f1768c.add(new TextViewDrawableAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                            this.f1768c.add(new BitmapReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                            this.f1768c.add(new TextViewSizeAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                            this.f1768c.add(new ViewPaddingAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                            this.f1768c.add(new SetRemoteViewsAdapterList(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_collapseIcon /*17*/:
                            this.f1768c.add(new TextViewDrawableColorFilterAction(this, parcel));
                            break;
                        default:
                            throw new ProGuard("Tag " + readInt2 + " not found");
                    }
                    i++;
                }
            }
        } else {
            this.f1772g = new YFRemoteViews2(parcel, this.f1770e);
            this.f1773h = new YFRemoteViews2(parcel, this.f1770e);
            this.f1766a = this.f1773h.f1766a;
            this.f1767b = this.f1773h.m2740d();
        }
        this.f1769d = new ProGuard(this);
        m2741e();
    }

    public YFRemoteViews2 m2739c() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        YFRemoteViews2 yFRemoteViews2 = new YFRemoteViews2(obtain);
        obtain.recycle();
        return yFRemoteViews2;
    }

    public int m2740d() {
        return this.f1767b;
    }

    public void m2741e() {
        this.f1769d.m2732a();
        if (m2738b()) {
            this.f1769d.m2733a(this.f1772g.m2742f());
            this.f1769d.m2733a(this.f1773h.m2742f());
            this.f1770e.m2731a(this.f1769d);
            return;
        }
        if (this.f1768c != null) {
            int size = this.f1768c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f1768c.get(i)).m2723a(this.f1769d);
            }
        }
        if (this.f1771f) {
            this.f1770e.m2731a(this.f1769d);
        }
    }

    public void m2737a(ProGuard proGuard) {
        this.f1770e = proGuard;
        if (m2738b()) {
            this.f1772g.m2737a(proGuard);
            this.f1773h.m2737a(proGuard);
        } else if (this.f1768c != null) {
            int size = this.f1768c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f1768c.get(i)).m2722a(proGuard);
            }
        }
    }

    public int m2742f() {
        return this.f1769d.m2735b();
    }

    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(ProGuard.class);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        if (m2738b()) {
            parcel.writeInt(1);
            if (this.f1771f) {
                this.f1770e.m2730a(parcel, i);
            }
            this.f1772g.writeToParcel(parcel, i);
            this.f1773h.writeToParcel(parcel, i);
            return;
        }
        int size;
        parcel.writeInt(0);
        if (this.f1771f) {
            this.f1770e.m2730a(parcel, i);
        }
        parcel.writeParcelable(this.f1766a, i);
        parcel.writeInt(this.f1767b);
        if (!this.f1774i) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.f1768c != null) {
            size = this.f1768c.size();
        } else {
            size = 0;
        }
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            ((Action) this.f1768c.get(i3)).writeToParcel(parcel, 0);
        }
    }
}
