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
public class YFHtcRemoteViews implements Parcelable, Filter {
    public static final Creator<YFHtcRemoteViews> CREATOR;
    public static final ProGuard f1636j;
    public static final Object[] f1637k;
    public static final HashMap<Class<? extends View>, HashMap<ProGuard<String, Class<?>>, Method>> f1638l;
    public static final ThreadLocal<Object[]> f1639m;
    public ApplicationInfo f1640a;
    public final int f1641b;
    public ArrayList<Action> f1642c;
    public ProGuard f1643d;
    public ProGuard f1644e;
    public boolean f1645f;
    public YFHtcRemoteViews f1646g;
    public YFHtcRemoteViews f1647h;
    public boolean f1648i;
    public final ProGuard<String, Class<?>> f1649n;

    /* renamed from: android.widget.YFHtcRemoteViews.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f1575a;

        static {
            f1575a = new int[Config.values().length];
            try {
                f1575a[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1575a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1575a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1575a[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: ProGuard */
    public static abstract class Action implements Parcelable {
        public int f1576a;
        public boolean f1577b;
        public boolean f1578c;

        public int describeContents() {
            return 0;
        }

        public void m2687a(ProGuard proGuard) {
        }

        public void m2686a(ProGuard proGuard) {
        }

        public void m2685a(Parcel parcel) {
            boolean z;
            boolean z2 = true;
            if (parcel.readByte() != null) {
                z = true;
            } else {
                z = false;
            }
            this.f1577b = z;
            if (parcel.readByte() == null) {
                z2 = false;
            }
            this.f1578c = z2;
        }

        public void m2688b(Parcel parcel) {
            int i;
            int i2 = 1;
            parcel.writeBooleanArray(new boolean[]{this.f1577b, this.f1578c});
            if (this.f1577b) {
                i = 1;
            } else {
                i = 0;
            }
            parcel.writeByte((byte) i);
            if (!this.f1578c) {
                i2 = 0;
            }
            parcel.writeByte((byte) i2);
        }
    }

    /* compiled from: ProGuard */
    public class BitmapReflectionAction extends Action {
        int f1579d;
        Bitmap f1580e;
        String f1581f;
        final /* synthetic */ YFHtcRemoteViews f1582g;

        BitmapReflectionAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1582g = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1581f = parcel.readString();
            this.f1579d = parcel.readInt();
            this.f1580e = yFHtcRemoteViews.f1644e.m2694a(this.f1579d);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(12);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1581f);
            parcel.writeInt(this.f1579d);
        }

        public void m2689a(ProGuard proGuard) {
            this.f1579d = proGuard.m2693a(this.f1580e);
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionAction extends Action {
        public String f1583d;
        public int f1584e;
        public Object f1585f;
        final /* synthetic */ YFHtcRemoteViews f1586g;

        ReflectionAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1586g = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1583d = parcel.readString();
            this.f1584e = parcel.readInt();
            m2685a(parcel);
            switch (this.f1584e) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f1585f = Boolean.valueOf(parcel.readInt() != 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f1585f = Byte.valueOf(parcel.readByte());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f1585f = Short.valueOf((short) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    this.f1585f = Integer.valueOf(parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f1585f = Long.valueOf(parcel.readLong());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    this.f1585f = Float.valueOf(parcel.readFloat());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    this.f1585f = Double.valueOf(parcel.readDouble());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    this.f1585f = Character.valueOf((char) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    this.f1585f = parcel.readString();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    this.f1585f = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (parcel.readInt() != 0) {
                        this.f1585f = Uri.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (parcel.readInt() != 0) {
                        this.f1585f = Bitmap.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    this.f1585f = parcel.readBundle();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (parcel.readInt() != 0) {
                        this.f1585f = Intent.CREATOR.createFromParcel(parcel);
                    }
                default:
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(2);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1583d);
            parcel.writeInt(this.f1584e);
            m2688b(parcel);
            switch (this.f1584e) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.writeInt(((Boolean) this.f1585f).booleanValue() ? 1 : 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.writeByte(((Byte) this.f1585f).byteValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.writeInt(((Short) this.f1585f).shortValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    parcel.writeInt(((Integer) this.f1585f).intValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    parcel.writeLong(((Long) this.f1585f).longValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    parcel.writeFloat(((Float) this.f1585f).floatValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    parcel.writeDouble(((Double) this.f1585f).doubleValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    parcel.writeInt(((Character) this.f1585f).charValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    parcel.writeString((String) this.f1585f);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    TextUtils.writeToParcel((CharSequence) this.f1585f, parcel, i);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (this.f1585f == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1585f != null) {
                        ((Uri) this.f1585f).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (this.f1585f == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1585f != null) {
                        ((Bitmap) this.f1585f).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    parcel.writeBundle((Bundle) this.f1585f);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (this.f1585f == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f1585f != null) {
                        ((Intent) this.f1585f).writeToParcel(parcel, i);
                    }
                default:
            }
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionActionWithoutParams extends Action {
        final String f1587d;
        final /* synthetic */ YFHtcRemoteViews f1588e;

        ReflectionActionWithoutParams(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1588e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1587d = parcel.readString();
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(5);
            parcel.writeInt(this.a);
            parcel.writeString(this.f1587d);
            m2688b(parcel);
        }
    }

    /* compiled from: ProGuard */
    public class SetDrawableParameters extends Action {
        boolean f1589d;
        int f1590e;
        int f1591f;
        Mode f1592g;
        int f1593h;
        final /* synthetic */ YFHtcRemoteViews f1594i;

        public SetDrawableParameters(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            Object obj = 1;
            this.f1594i = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1589d = parcel.readInt() != 0;
            this.f1590e = parcel.readInt();
            this.f1591f = parcel.readInt();
            if (parcel.readInt() == 0) {
                obj = null;
            }
            if (obj != null) {
                this.f1592g = Mode.valueOf(parcel.readString());
            } else {
                this.f1592g = null;
            }
            this.f1593h = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(3);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1589d ? 1 : 0);
            parcel.writeInt(this.f1590e);
            parcel.writeInt(this.f1591f);
            if (this.f1592g != null) {
                parcel.writeInt(1);
                parcel.writeString(this.f1592g.toString());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f1593h);
        }
    }

    /* compiled from: ProGuard */
    public class SetEmptyView extends Action {
        public int f1595d;
        public int f1596e;
        final /* synthetic */ YFHtcRemoteViews f1597f;

        SetEmptyView(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1597f = yFHtcRemoteViews;
            this.f1595d = parcel.readInt();
            this.f1596e = parcel.readInt();
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(6);
            parcel.writeInt(this.f1595d);
            parcel.writeInt(this.f1596e);
            m2688b(parcel);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickFillInIntent extends Action {
        Intent f1598d;
        final /* synthetic */ YFHtcRemoteViews f1599e;

        public SetOnClickFillInIntent(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1599e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1598d = (Intent) Intent.CREATOR.createFromParcel(parcel);
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(9);
            parcel.writeInt(this.a);
            this.f1598d.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickPendingIntent extends Action {
        PendingIntent f1600d;
        final /* synthetic */ YFHtcRemoteViews f1601e;

        public SetOnClickPendingIntent(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1601e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.f1600d = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            }
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(1);
            parcel.writeInt(this.a);
            if (this.f1600d == null) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (this.f1600d != null) {
                this.f1600d.writeToParcel(parcel, 0);
            }
        }
    }

    /* compiled from: ProGuard */
    public class SetPendingIntentTemplate extends Action {
        PendingIntent f1602d;
        final /* synthetic */ YFHtcRemoteViews f1603e;

        public SetPendingIntentTemplate(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1603e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1602d = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(8);
            parcel.writeInt(this.a);
            this.f1602d.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterIntent extends Action {
        Intent f1604d;
        final /* synthetic */ YFHtcRemoteViews f1605e;

        public SetRemoteViewsAdapterIntent(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1605e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1604d = (Intent) Intent.CREATOR.createFromParcel(parcel);
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(10);
            parcel.writeInt(this.a);
            this.f1604d.writeToParcel(parcel, i);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterList extends Action {
        int f1606d;
        ArrayList<YFHtcRemoteViews> f1607e;
        final /* synthetic */ YFHtcRemoteViews f1608f;

        public SetRemoteViewsAdapterList(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1608f = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1606d = parcel.readInt();
            int readInt = parcel.readInt();
            this.f1607e = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f1607e.add((YFHtcRemoteViews) YFHtcRemoteViews.CREATOR.createFromParcel(parcel));
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(15);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1606d);
            if (this.f1607e == null || this.f1607e.size() == 0) {
                parcel.writeInt(0);
                return;
            }
            int size = this.f1607e.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((YFHtcRemoteViews) this.f1607e.get(i2)).writeToParcel(parcel, i);
            }
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableAction extends Action {
        public boolean f1609d;
        public int f1610e;
        public int f1611f;
        public int f1612g;
        public int f1613h;
        final /* synthetic */ YFHtcRemoteViews f1614i;

        public TextViewDrawableAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            boolean z = false;
            this.f1614i = yFHtcRemoteViews;
            this.f1609d = false;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            }
            this.f1609d = z;
            this.f1610e = parcel.readInt();
            this.f1611f = parcel.readInt();
            this.f1612g = parcel.readInt();
            this.f1613h = parcel.readInt();
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(11);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1609d ? 1 : 0);
            parcel.writeInt(this.f1610e);
            parcel.writeInt(this.f1611f);
            parcel.writeInt(this.f1612g);
            parcel.writeInt(this.f1613h);
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableColorFilterAction extends Action {
        public final boolean f1615d;
        public final int f1616e;
        public final int f1617f;
        public final Mode f1618g;
        final /* synthetic */ YFHtcRemoteViews f1619h;

        public TextViewDrawableColorFilterAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1619h = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1615d = parcel.readInt() != 0;
            this.f1616e = parcel.readInt();
            this.f1617f = parcel.readInt();
            this.f1618g = m2690c(parcel);
            m2685a(parcel);
        }

        public Mode m2690c(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt < 0 || readInt >= Mode.values().length) {
                return Mode.CLEAR;
            }
            return Mode.values()[readInt];
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(17);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1615d ? 1 : 0);
            parcel.writeInt(this.f1616e);
            parcel.writeInt(this.f1617f);
            parcel.writeInt(this.f1618g.ordinal());
        }
    }

    /* compiled from: ProGuard */
    public class TextViewSizeAction extends Action {
        int f1620d;
        float f1621e;
        final /* synthetic */ YFHtcRemoteViews f1622f;

        public TextViewSizeAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1622f = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1620d = parcel.readInt();
            this.f1621e = parcel.readFloat();
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(13);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1620d);
            parcel.writeFloat(this.f1621e);
        }
    }

    /* compiled from: ProGuard */
    public class ViewGroupAction extends Action {
        public YFHtcRemoteViews f1623d;
        final /* synthetic */ YFHtcRemoteViews f1624e;

        public ViewGroupAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel, ProGuard proGuard) {
            this.f1624e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            if ((parcel.readInt() == 0 ? 1 : null) == null) {
                this.f1623d = new YFHtcRemoteViews(parcel, proGuard);
            } else {
                this.f1623d = null;
            }
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(4);
            parcel.writeInt(this.a);
            if (this.f1623d != null) {
                parcel.writeInt(1);
                this.f1623d.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public void m2692a(ProGuard proGuard) {
            if (this.f1623d != null) {
                proGuard.m2698a(this.f1623d.m2708f());
            }
        }

        public void m2691a(ProGuard proGuard) {
            if (this.f1623d != null) {
                this.f1623d.m2703a(proGuard);
            }
        }
    }

    /* compiled from: ProGuard */
    public class ViewPaddingAction extends Action {
        public int f1625d;
        public int f1626e;
        public int f1627f;
        public int f1628g;
        final /* synthetic */ YFHtcRemoteViews f1629h;

        public ViewPaddingAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f1629h = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f1625d = parcel.readInt();
            this.f1626e = parcel.readInt();
            this.f1627f = parcel.readInt();
            this.f1628g = parcel.readInt();
            m2685a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(14);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f1625d);
            parcel.writeInt(this.f1626e);
            parcel.writeInt(this.f1627f);
            parcel.writeInt(this.f1628g);
            m2688b(parcel);
        }
    }

    /* renamed from: android.widget.YFHtcRemoteViews.a */
    public static class ProGuard {
        ArrayList<Bitmap> f1630a;

        public ProGuard() {
            this.f1630a = new ArrayList();
        }

        public ProGuard(Parcel parcel) {
            int readInt = parcel.readInt();
            this.f1630a = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f1630a.add((Bitmap) Bitmap.CREATOR.createFromParcel(parcel));
            }
        }

        public int m2693a(Bitmap bitmap) {
            if (bitmap == null) {
                return -1;
            }
            if (this.f1630a.contains(bitmap)) {
                return this.f1630a.indexOf(bitmap);
            }
            this.f1630a.add(bitmap);
            return this.f1630a.size() - 1;
        }

        public Bitmap m2694a(int i) {
            if (i == -1 || i >= this.f1630a.size()) {
                return null;
            }
            return (Bitmap) this.f1630a.get(i);
        }

        public void m2695a(Parcel parcel, int i) {
            int size = this.f1630a.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((Bitmap) this.f1630a.get(i2)).writeToParcel(parcel, i);
            }
        }

        public void m2696a(ProGuard proGuard) {
            for (int i = 0; i < this.f1630a.size(); i++) {
                proGuard.m2699a((Bitmap) this.f1630a.get(i));
            }
        }
    }

    /* renamed from: android.widget.YFHtcRemoteViews.b */
    public class ProGuard {
        public int f1631a;
        final /* synthetic */ YFHtcRemoteViews f1632b;

        public ProGuard(YFHtcRemoteViews yFHtcRemoteViews) {
            this.f1632b = yFHtcRemoteViews;
        }

        public void m2697a() {
            this.f1631a = 0;
        }

        public void m2698a(int i) {
            this.f1631a += i;
        }

        public int m2700b() {
            return this.f1631a;
        }

        public void m2699a(Bitmap bitmap) {
            int i = 4;
            Config config = bitmap.getConfig();
            if (config != null) {
                switch (ProGuard.f1575a[config.ordinal()]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        i = 1;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        i = 2;
                        break;
                }
            }
            m2698a(i * (bitmap.getWidth() * bitmap.getHeight()));
        }
    }

    /* renamed from: android.widget.YFHtcRemoteViews.c */
    public class ProGuard<F, S> {
        public F f1633a;
        public S f1634b;
        final /* synthetic */ YFHtcRemoteViews f1635c;

        ProGuard(YFHtcRemoteViews yFHtcRemoteViews, F f, S s) {
            this.f1635c = yFHtcRemoteViews;
            this.f1633a = f;
            this.f1634b = s;
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
            int hashCode = this.f1633a == null ? 0 : this.f1633a.hashCode();
            if (this.f1634b != null) {
                i = this.f1634b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* renamed from: android.widget.YFHtcRemoteViews.d */
    public static class ProGuard {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: android.widget.YFHtcRemoteViews.e */
    public @interface ProGuard {
    }

    public /* synthetic */ Object clone() {
        return m2705c();
    }

    static {
        f1636j = new ProGuard();
        f1637k = new Object[0];
        f1638l = new HashMap();
        f1639m = new ProGuard();
        CREATOR = new ProGuard();
    }

    public void m2702a() {
        this.f1645f = false;
    }

    public boolean m2704b() {
        return (this.f1646g == null || this.f1647h == null) ? false : true;
    }

    public YFHtcRemoteViews(Parcel parcel) {
        this(parcel, null);
    }

    public YFHtcRemoteViews(Parcel parcel, ProGuard proGuard) {
        this.f1645f = true;
        this.f1646g = null;
        this.f1647h = null;
        this.f1648i = false;
        this.f1649n = new ProGuard(this, null, null);
        int readInt = parcel.readInt();
        if (proGuard == null) {
            this.f1644e = new ProGuard(parcel);
        } else {
            m2703a(proGuard);
            m2702a();
        }
        if (readInt == 0) {
            boolean z;
            this.f1640a = (ApplicationInfo) parcel.readParcelable(null);
            this.f1641b = parcel.readInt();
            if (parcel.readInt() == 1) {
                z = true;
            } else {
                z = false;
            }
            this.f1648i = z;
            int readInt2 = parcel.readInt();
            if (readInt2 > 0) {
                this.f1642c = new ArrayList(readInt2);
                readInt = 0;
                while (readInt < readInt2 && parcel.dataPosition() < parcel.dataSize()) {
                    switch (parcel.readInt()) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            this.f1642c.add(new SetOnClickPendingIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            this.f1642c.add(new ReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            this.f1642c.add(new SetDrawableParameters(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                            this.f1642c.add(new ViewGroupAction(this, parcel, this.f1644e));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            this.f1642c.add(new ReflectionActionWithoutParams(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            this.f1642c.add(new SetEmptyView(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                            this.f1642c.add(new SetPendingIntentTemplate(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                            this.f1642c.add(new SetOnClickFillInIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                            this.f1642c.add(new SetRemoteViewsAdapterIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                            this.f1642c.add(new TextViewDrawableAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                            this.f1642c.add(new BitmapReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                            this.f1642c.add(new TextViewSizeAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                            this.f1642c.add(new ViewPaddingAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                            this.f1642c.add(new SetRemoteViewsAdapterList(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_collapseIcon /*17*/:
                            this.f1642c.add(new TextViewDrawableColorFilterAction(this, parcel));
                            break;
                        default:
                            if (!m2701a(parcel)) {
                                readInt = readInt2;
                                break;
                            }
                            break;
                    }
                    readInt++;
                }
            }
        } else {
            this.f1646g = new YFHtcRemoteViews(parcel, this.f1644e);
            this.f1647h = new YFHtcRemoteViews(parcel, this.f1644e);
            this.f1640a = this.f1647h.f1640a;
            this.f1641b = this.f1647h.m2706d();
        }
        this.f1643d = new ProGuard(this);
        m2707e();
    }

    private boolean m2701a(Parcel parcel) {
        int dataSize = parcel.dataSize();
        while (true) {
            int dataPosition = parcel.dataPosition();
            if (dataPosition >= dataSize) {
                return false;
            }
            byte readByte = parcel.readByte();
            if (readByte >= (byte) 1 && readByte <= 17 && parcel.readByte() == 6) {
                parcel.setDataPosition(dataPosition);
                return true;
            }
        }
    }

    public YFHtcRemoteViews m2705c() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        YFHtcRemoteViews yFHtcRemoteViews = new YFHtcRemoteViews(obtain);
        obtain.recycle();
        return yFHtcRemoteViews;
    }

    public int m2706d() {
        return this.f1641b;
    }

    public void m2707e() {
        this.f1643d.m2697a();
        if (m2704b()) {
            this.f1643d.m2698a(this.f1646g.m2708f());
            this.f1643d.m2698a(this.f1647h.m2708f());
            this.f1644e.m2696a(this.f1643d);
            return;
        }
        if (this.f1642c != null) {
            int size = this.f1642c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f1642c.get(i)).m2687a(this.f1643d);
            }
        }
        if (this.f1645f) {
            this.f1644e.m2696a(this.f1643d);
        }
    }

    public void m2703a(ProGuard proGuard) {
        this.f1644e = proGuard;
        if (m2704b()) {
            this.f1646g.m2703a(proGuard);
            this.f1647h.m2703a(proGuard);
        } else if (this.f1642c != null) {
            int size = this.f1642c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f1642c.get(i)).m2686a(proGuard);
            }
        }
    }

    public int m2708f() {
        return this.f1643d.m2700b();
    }

    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(ProGuard.class);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        if (m2704b()) {
            parcel.writeInt(1);
            if (this.f1645f) {
                this.f1644e.m2695a(parcel, i);
            }
            this.f1646g.writeToParcel(parcel, i);
            this.f1647h.writeToParcel(parcel, i);
            return;
        }
        int size;
        parcel.writeInt(0);
        if (this.f1645f) {
            this.f1644e.m2695a(parcel, i);
        }
        parcel.writeParcelable(this.f1640a, i);
        parcel.writeInt(this.f1641b);
        if (!this.f1648i) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.f1642c != null) {
            size = this.f1642c.size();
        } else {
            size = 0;
        }
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            ((Action) this.f1642c.get(i3)).writeToParcel(parcel, 0);
        }
    }
}
