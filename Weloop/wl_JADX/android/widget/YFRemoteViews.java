package android.widget;

import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.PorterDuff.Mode;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.Process;
import android.os.UserHandle;
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
public class YFRemoteViews implements Parcelable, Filter {
    public static final Creator<YFRemoteViews> CREATOR;
    public static final ProGuard f1853k;
    public static final Object[] f1854l;
    public static final HashMap<Class<? extends View>, HashMap<ProGuard<String, Class<?>>, Method>> f1855m;
    public static final ThreadLocal<Object[]> f1856n;
    public UserHandle f1857a;
    public final String f1858b;
    public final int f1859c;
    public ArrayList<Action> f1860d;
    public ProGuard f1861e;
    public ProGuard f1862f;
    public boolean f1863g;
    public YFRemoteViews f1864h;
    public YFRemoteViews f1865i;
    public boolean f1866j;
    public final ProGuard<String, Class<?>> f1867o;

    /* renamed from: android.widget.YFRemoteViews.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f1650a;

        static {
            f1650a = new int[Config.values().length];
            try {
                f1650a[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1650a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1650a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1650a[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: ProGuard */
    public static abstract class Action implements Parcelable {
        int f1651a;

        public int describeContents() {
            return 0;
        }

        public void m2710a(ProGuard proGuard) {
        }

        public void m2709a(ProGuard proGuard) {
        }
    }

    /* compiled from: ProGuard */
    public class BitmapReflectionAction extends Action {
        int f1652b;
        Bitmap f1653c;
        String f1654d;
        final /* synthetic */ YFRemoteViews f1655e;

        BitmapReflectionAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1655e = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1654d = parcel.readString();
            this.f1652b = parcel.readInt();
            this.f1653c = yFRemoteViews.f1862f.m2715a(this.f1652b);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(12);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1654d);
            parcel.writeInt(this.f1652b);
        }

        public void m2711a(ProGuard proGuard) {
            this.f1652b = proGuard.m2714a(this.f1653c);
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionAction extends Action {
        String f1656b;
        int f1657c;
        Object f1658d;
        final /* synthetic */ YFRemoteViews f1659e;

        ReflectionAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1659e = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1656b = parcel.readString();
            this.f1657c = parcel.readInt();
            switch (this.f1657c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f1658d = Boolean.valueOf(parcel.readInt() != 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f1658d = Byte.valueOf(parcel.readByte());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f1658d = Short.valueOf((short) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    this.f1658d = Integer.valueOf(parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f1658d = Long.valueOf(parcel.readLong());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    this.f1658d = Float.valueOf(parcel.readFloat());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    this.f1658d = Double.valueOf(parcel.readDouble());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    this.f1658d = Character.valueOf((char) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    this.f1658d = parcel.readString();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    this.f1658d = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (parcel.readInt() != 0) {
                        this.f1658d = Uri.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (parcel.readInt() != 0) {
                        this.f1658d = Bitmap.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    this.f1658d = parcel.readBundle();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (parcel.readInt() != 0) {
                        this.f1658d = Intent.CREATOR.createFromParcel(parcel);
                    }
                default:
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(2);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1656b);
            parcel.writeInt(this.f1657c);
            switch (this.f1657c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.writeInt(((Boolean) this.f1658d).booleanValue() ? 1 : 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.writeByte(((Byte) this.f1658d).byteValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.writeInt(((Short) this.f1658d).shortValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    parcel.writeInt(((Integer) this.f1658d).intValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    parcel.writeLong(((Long) this.f1658d).longValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    parcel.writeFloat(((Float) this.f1658d).floatValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    parcel.writeDouble(((Double) this.f1658d).doubleValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    parcel.writeInt(((Character) this.f1658d).charValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    parcel.writeString((String) this.f1658d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    TextUtils.writeToParcel((CharSequence) this.f1658d, parcel, i);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (this.f1658d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1658d != null) {
                        ((Uri) this.f1658d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (this.f1658d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1658d != null) {
                        ((Bitmap) this.f1658d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    parcel.writeBundle((Bundle) this.f1658d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (this.f1658d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1658d != null) {
                        ((Intent) this.f1658d).writeToParcel(parcel, i);
                    }
                default:
            }
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionActionWithoutParams extends Action {
        final String f1660b;
        final /* synthetic */ YFRemoteViews f1661c;

        ReflectionActionWithoutParams(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1661c = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1660b = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(5);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1660b);
        }
    }

    /* compiled from: ProGuard */
    public class SetDrawableParameters extends Action {
        boolean f1662b;
        int f1663c;
        int f1664d;
        Mode f1665e;
        int f1666f;
        final /* synthetic */ YFRemoteViews f1667g;

        public SetDrawableParameters(YFRemoteViews yFRemoteViews, Parcel parcel) {
            Object obj = 1;
            this.f1667g = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1662b = parcel.readInt() != 0;
            this.f1663c = parcel.readInt();
            this.f1664d = parcel.readInt();
            if (parcel.readInt() == 0) {
                obj = null;
            }
            if (obj != null) {
                this.f1665e = Mode.valueOf(parcel.readString());
            } else {
                this.f1665e = null;
            }
            this.f1666f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(3);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1662b ? 1 : 0);
            parcel.writeInt(this.f1663c);
            parcel.writeInt(this.f1664d);
            if (this.f1665e != null) {
                parcel.writeInt(1);
                parcel.writeString(this.f1665e.toString());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f1666f);
        }
    }

    /* compiled from: ProGuard */
    public class SetEmptyView extends Action {
        int f1668b;
        int f1669c;
        final /* synthetic */ YFRemoteViews f1670d;

        SetEmptyView(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1670d = yFRemoteViews;
            this.f1668b = parcel.readInt();
            this.f1669c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(6);
            parcel.writeInt(this.f1668b);
            parcel.writeInt(this.f1669c);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickFillInIntent extends Action {
        Intent f1671b;
        final /* synthetic */ YFRemoteViews f1672c;

        public SetOnClickFillInIntent(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1672c = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1671b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(9);
            parcel.writeInt(this.a);
            this.f1671b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickPendingIntent extends Action {
        PendingIntent f1673b;
        final /* synthetic */ YFRemoteViews f1674c;

        public SetOnClickPendingIntent(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1674c = yFRemoteViews;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.f1673b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(1);
            parcel.writeInt(this.a);
            if (this.f1673b == null) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (this.f1673b != null) {
                this.f1673b.writeToParcel(parcel, 0);
            }
        }
    }

    /* compiled from: ProGuard */
    public class SetPendingIntentTemplate extends Action {
        PendingIntent f1675b;
        final /* synthetic */ YFRemoteViews f1676c;

        public SetPendingIntentTemplate(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1676c = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1675b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(8);
            parcel.writeInt(this.a);
            this.f1675b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterIntent extends Action {
        Intent f1677b;
        final /* synthetic */ YFRemoteViews f1678c;

        public SetRemoteViewsAdapterIntent(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1678c = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1677b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(10);
            parcel.writeInt(this.a);
            this.f1677b.writeToParcel(parcel, i);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterList extends Action {
        int f1679b;
        ArrayList<YFRemoteViews> f1680c;
        final /* synthetic */ YFRemoteViews f1681d;

        public SetRemoteViewsAdapterList(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1681d = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1679b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f1680c = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f1680c.add((YFRemoteViews) YFRemoteViews.CREATOR.createFromParcel(parcel));
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(15);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1679b);
            if (this.f1680c == null || this.f1680c.size() == 0) {
                parcel.writeInt(0);
                return;
            }
            int size = this.f1680c.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((YFRemoteViews) this.f1680c.get(i2)).writeToParcel(parcel, i);
            }
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableAction extends Action {
        boolean f1682b;
        int f1683c;
        int f1684d;
        int f1685e;
        int f1686f;
        final /* synthetic */ YFRemoteViews f1687g;

        public TextViewDrawableAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            boolean z = false;
            this.f1687g = yFRemoteViews;
            this.f1682b = false;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            }
            this.f1682b = z;
            this.f1683c = parcel.readInt();
            this.f1684d = parcel.readInt();
            this.f1685e = parcel.readInt();
            this.f1686f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(11);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1682b ? 1 : 0);
            parcel.writeInt(this.f1683c);
            parcel.writeInt(this.f1684d);
            parcel.writeInt(this.f1685e);
            parcel.writeInt(this.f1686f);
        }
    }

    /* compiled from: ProGuard */
    public class TextViewSizeAction extends Action {
        int f1688b;
        float f1689c;
        final /* synthetic */ YFRemoteViews f1690d;

        public TextViewSizeAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1690d = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1688b = parcel.readInt();
            this.f1689c = parcel.readFloat();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(13);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1688b);
            parcel.writeFloat(this.f1689c);
        }
    }

    /* compiled from: ProGuard */
    public class ViewGroupAction extends Action {
        YFRemoteViews f1691b;
        final /* synthetic */ YFRemoteViews f1692c;

        public ViewGroupAction(YFRemoteViews yFRemoteViews, Parcel parcel, ProGuard proGuard) {
            this.f1692c = yFRemoteViews;
            this.a = parcel.readInt();
            if ((parcel.readInt() == 0 ? 1 : null) == null) {
                this.f1691b = new YFRemoteViews(parcel, proGuard);
            } else {
                this.f1691b = null;
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(4);
            parcel.writeInt(this.a);
            if (this.f1691b != null) {
                parcel.writeInt(1);
                this.f1691b.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public void m2713a(ProGuard proGuard) {
            if (this.f1691b != null) {
                proGuard.m2719a(this.f1691b.m2774g());
            }
        }

        public void m2712a(ProGuard proGuard) {
            if (this.f1691b != null) {
                this.f1691b.m2768a(proGuard);
            }
        }
    }

    /* compiled from: ProGuard */
    public class ViewPaddingAction extends Action {
        int f1693b;
        int f1694c;
        int f1695d;
        int f1696e;
        final /* synthetic */ YFRemoteViews f1697f;

        public ViewPaddingAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f1697f = yFRemoteViews;
            this.a = parcel.readInt();
            this.f1693b = parcel.readInt();
            this.f1694c = parcel.readInt();
            this.f1695d = parcel.readInt();
            this.f1696e = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(14);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1693b);
            parcel.writeInt(this.f1694c);
            parcel.writeInt(this.f1695d);
            parcel.writeInt(this.f1696e);
        }
    }

    /* renamed from: android.widget.YFRemoteViews.a */
    public static class ProGuard extends RuntimeException {
        public ProGuard(String str) {
            super(str);
        }
    }

    /* renamed from: android.widget.YFRemoteViews.b */
    public static class ProGuard {
        ArrayList<Bitmap> f1698a;

        public ProGuard() {
            this.f1698a = new ArrayList();
        }

        public ProGuard(Parcel parcel) {
            int readInt = parcel.readInt();
            this.f1698a = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f1698a.add((Bitmap) Bitmap.CREATOR.createFromParcel(parcel));
            }
        }

        public int m2714a(Bitmap bitmap) {
            if (bitmap == null) {
                return -1;
            }
            if (this.f1698a.contains(bitmap)) {
                return this.f1698a.indexOf(bitmap);
            }
            this.f1698a.add(bitmap);
            return this.f1698a.size() - 1;
        }

        public Bitmap m2715a(int i) {
            if (i == -1 || i >= this.f1698a.size()) {
                return null;
            }
            return (Bitmap) this.f1698a.get(i);
        }

        public void m2716a(Parcel parcel, int i) {
            int size = this.f1698a.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((Bitmap) this.f1698a.get(i2)).writeToParcel(parcel, i);
            }
        }

        public void m2717a(ProGuard proGuard) {
            for (int i = 0; i < this.f1698a.size(); i++) {
                proGuard.m2720a((Bitmap) this.f1698a.get(i));
            }
        }
    }

    /* renamed from: android.widget.YFRemoteViews.c */
    public class ProGuard {
        int f1699a;
        final /* synthetic */ YFRemoteViews f1700b;

        public ProGuard(YFRemoteViews yFRemoteViews) {
            this.f1700b = yFRemoteViews;
        }

        public void m2718a() {
            this.f1699a = 0;
        }

        public void m2719a(int i) {
            this.f1699a += i;
        }

        public int m2721b() {
            return this.f1699a;
        }

        public void m2720a(Bitmap bitmap) {
            int i = 4;
            Config config = bitmap.getConfig();
            if (config != null) {
                switch (ProGuard.f1650a[config.ordinal()]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        i = 1;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        i = 2;
                        break;
                }
            }
            m2719a(i * (bitmap.getWidth() * bitmap.getHeight()));
        }
    }

    /* renamed from: android.widget.YFRemoteViews.d */
    public static class ProGuard<F, S> {
        F f1701a;
        S f1702b;

        ProGuard(F f, S s) {
            this.f1701a = f;
            this.f1702b = s;
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
            int hashCode = this.f1701a == null ? 0 : this.f1701a.hashCode();
            if (this.f1702b != null) {
                i = this.f1702b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* renamed from: android.widget.YFRemoteViews.e */
    public static class ProGuard {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: android.widget.YFRemoteViews.f */
    public @interface ProGuard {
    }

    public /* synthetic */ Object clone() {
        return m2770c();
    }

    static {
        f1853k = new ProGuard();
        f1854l = new Object[0];
        f1855m = new HashMap();
        f1856n = new ProGuard();
        CREATOR = new ProGuard();
    }

    public void m2767a() {
        this.f1863g = false;
    }

    public boolean m2769b() {
        return (this.f1864h == null || this.f1865i == null) ? false : true;
    }

    public YFRemoteViews(Parcel parcel) {
        this(parcel, null);
    }

    public YFRemoteViews(Parcel parcel, ProGuard proGuard) {
        boolean z = true;
        int i = 0;
        this.f1857a = Process.myUserHandle();
        this.f1863g = true;
        this.f1864h = null;
        this.f1865i = null;
        this.f1866j = false;
        this.f1867o = new ProGuard(null, null);
        int readInt = parcel.readInt();
        if (proGuard == null) {
            this.f1862f = new ProGuard(parcel);
        } else {
            m2768a(proGuard);
            m2767a();
        }
        if (readInt == 0) {
            this.f1858b = parcel.readString();
            this.f1859c = parcel.readInt();
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.f1866j = z;
            int readInt2 = parcel.readInt();
            if (readInt2 > 0) {
                this.f1860d = new ArrayList(readInt2);
                while (i < readInt2) {
                    readInt = parcel.readInt();
                    switch (readInt) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            this.f1860d.add(new SetOnClickPendingIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            this.f1860d.add(new ReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            this.f1860d.add(new SetDrawableParameters(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                            this.f1860d.add(new ViewGroupAction(this, parcel, this.f1862f));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            this.f1860d.add(new ReflectionActionWithoutParams(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            this.f1860d.add(new SetEmptyView(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                            this.f1860d.add(new SetPendingIntentTemplate(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                            this.f1860d.add(new SetOnClickFillInIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                            this.f1860d.add(new SetRemoteViewsAdapterIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                            this.f1860d.add(new TextViewDrawableAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                            this.f1860d.add(new BitmapReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                            this.f1860d.add(new TextViewSizeAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                            this.f1860d.add(new ViewPaddingAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                            this.f1860d.add(new SetRemoteViewsAdapterList(this, parcel));
                            break;
                        default:
                            throw new ProGuard("Tag " + readInt + " not found");
                    }
                    i++;
                }
            }
        } else {
            this.f1864h = new YFRemoteViews(parcel, this.f1862f);
            this.f1865i = new YFRemoteViews(parcel, this.f1862f);
            this.f1858b = this.f1865i.m2771d();
            this.f1859c = this.f1865i.m2772e();
        }
        this.f1861e = new ProGuard(this);
        m2773f();
    }

    public YFRemoteViews m2770c() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        return new YFRemoteViews(obtain);
    }

    public String m2771d() {
        return this.f1858b;
    }

    public int m2772e() {
        return this.f1859c;
    }

    public void m2773f() {
        this.f1861e.m2718a();
        if (m2769b()) {
            this.f1861e.m2719a(this.f1864h.m2774g());
            this.f1861e.m2719a(this.f1865i.m2774g());
            this.f1862f.m2717a(this.f1861e);
            return;
        }
        if (this.f1860d != null) {
            int size = this.f1860d.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f1860d.get(i)).m2710a(this.f1861e);
            }
        }
        if (this.f1863g) {
            this.f1862f.m2717a(this.f1861e);
        }
    }

    public void m2768a(ProGuard proGuard) {
        this.f1862f = proGuard;
        if (m2769b()) {
            this.f1864h.m2768a(proGuard);
            this.f1865i.m2768a(proGuard);
        } else if (this.f1860d != null) {
            int size = this.f1860d.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f1860d.get(i)).m2709a(proGuard);
            }
        }
    }

    public int m2774g() {
        return this.f1861e.m2721b();
    }

    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(ProGuard.class);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        if (m2769b()) {
            parcel.writeInt(1);
            if (this.f1863g) {
                this.f1862f.m2716a(parcel, i);
            }
            this.f1864h.writeToParcel(parcel, i);
            this.f1865i.writeToParcel(parcel, i);
            return;
        }
        int size;
        parcel.writeInt(0);
        if (this.f1863g) {
            this.f1862f.m2716a(parcel, i);
        }
        parcel.writeString(this.f1858b);
        parcel.writeInt(this.f1859c);
        if (!this.f1866j) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.f1860d != null) {
            size = this.f1860d.size();
        } else {
            size = 0;
        }
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            ((Action) this.f1860d.get(i3)).writeToParcel(parcel, 0);
        }
    }
}
