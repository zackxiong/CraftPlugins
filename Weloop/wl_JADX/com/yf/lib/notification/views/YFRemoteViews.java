package com.yf.lib.notification.views;

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
    public static final ProGuard f6730k;
    public static final Object[] f6731l;
    public static final HashMap<Class<? extends View>, HashMap<ProGuard<String, Class<?>>, Method>> f6732m;
    public static final ThreadLocal<Object[]> f6733n;
    public UserHandle f6734a;
    public final String f6735b;
    public final int f6736c;
    public ArrayList<Action> f6737d;
    public ProGuard f6738e;
    public ProGuard f6739f;
    public boolean f6740g;
    public YFRemoteViews f6741h;
    public YFRemoteViews f6742i;
    public boolean f6743j;
    public final ProGuard<String, Class<?>> f6744o;

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f6604a;

        static {
            f6604a = new int[Config.values().length];
            try {
                f6604a[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6604a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6604a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6604a[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: ProGuard */
    public static abstract class Action implements Parcelable {
        int f6605a;

        public int describeContents() {
            return 0;
        }

        public void m8548a(ProGuard proGuard) {
        }

        public void m8547a(ProGuard proGuard) {
        }
    }

    /* compiled from: ProGuard */
    public class BitmapReflectionAction extends Action {
        int f6606b;
        Bitmap f6607c;
        String f6608d;
        final /* synthetic */ YFRemoteViews f6609e;

        BitmapReflectionAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6609e = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6608d = parcel.readString();
            this.f6606b = parcel.readInt();
            this.f6607c = yFRemoteViews.f6739f.m8553a(this.f6606b);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(12);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6608d);
            parcel.writeInt(this.f6606b);
        }

        public void m8549a(ProGuard proGuard) {
            this.f6606b = proGuard.m8552a(this.f6607c);
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionAction extends Action {
        String f6610b;
        int f6611c;
        Object f6612d;
        final /* synthetic */ YFRemoteViews f6613e;

        ReflectionAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6613e = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6610b = parcel.readString();
            this.f6611c = parcel.readInt();
            switch (this.f6611c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f6612d = Boolean.valueOf(parcel.readInt() != 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f6612d = Byte.valueOf(parcel.readByte());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f6612d = Short.valueOf((short) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    this.f6612d = Integer.valueOf(parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f6612d = Long.valueOf(parcel.readLong());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    this.f6612d = Float.valueOf(parcel.readFloat());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    this.f6612d = Double.valueOf(parcel.readDouble());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    this.f6612d = Character.valueOf((char) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    this.f6612d = parcel.readString();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    this.f6612d = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (parcel.readInt() != 0) {
                        this.f6612d = Uri.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (parcel.readInt() != 0) {
                        this.f6612d = Bitmap.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    this.f6612d = parcel.readBundle();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (parcel.readInt() != 0) {
                        this.f6612d = Intent.CREATOR.createFromParcel(parcel);
                    }
                default:
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(2);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6610b);
            parcel.writeInt(this.f6611c);
            switch (this.f6611c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.writeInt(((Boolean) this.f6612d).booleanValue() ? 1 : 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.writeByte(((Byte) this.f6612d).byteValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.writeInt(((Short) this.f6612d).shortValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    parcel.writeInt(((Integer) this.f6612d).intValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    parcel.writeLong(((Long) this.f6612d).longValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    parcel.writeFloat(((Float) this.f6612d).floatValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    parcel.writeDouble(((Double) this.f6612d).doubleValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    parcel.writeInt(((Character) this.f6612d).charValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    parcel.writeString((String) this.f6612d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    TextUtils.writeToParcel((CharSequence) this.f6612d, parcel, i);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (this.f6612d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6612d != null) {
                        ((Uri) this.f6612d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (this.f6612d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6612d != null) {
                        ((Bitmap) this.f6612d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    parcel.writeBundle((Bundle) this.f6612d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (this.f6612d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6612d != null) {
                        ((Intent) this.f6612d).writeToParcel(parcel, i);
                    }
                default:
            }
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionActionWithoutParams extends Action {
        final String f6614b;
        final /* synthetic */ YFRemoteViews f6615c;

        ReflectionActionWithoutParams(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6615c = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6614b = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(5);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6614b);
        }
    }

    /* compiled from: ProGuard */
    public class SetDrawableParameters extends Action {
        boolean f6616b;
        int f6617c;
        int f6618d;
        Mode f6619e;
        int f6620f;
        final /* synthetic */ YFRemoteViews f6621g;

        public SetDrawableParameters(YFRemoteViews yFRemoteViews, Parcel parcel) {
            Object obj = 1;
            this.f6621g = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6616b = parcel.readInt() != 0;
            this.f6617c = parcel.readInt();
            this.f6618d = parcel.readInt();
            if (parcel.readInt() == 0) {
                obj = null;
            }
            if (obj != null) {
                this.f6619e = Mode.valueOf(parcel.readString());
            } else {
                this.f6619e = null;
            }
            this.f6620f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(3);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6616b ? 1 : 0);
            parcel.writeInt(this.f6617c);
            parcel.writeInt(this.f6618d);
            if (this.f6619e != null) {
                parcel.writeInt(1);
                parcel.writeString(this.f6619e.toString());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f6620f);
        }
    }

    /* compiled from: ProGuard */
    public class SetEmptyView extends Action {
        int f6622b;
        int f6623c;
        final /* synthetic */ YFRemoteViews f6624d;

        SetEmptyView(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6624d = yFRemoteViews;
            this.f6622b = parcel.readInt();
            this.f6623c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(6);
            parcel.writeInt(this.f6622b);
            parcel.writeInt(this.f6623c);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickFillInIntent extends Action {
        Intent f6625b;
        final /* synthetic */ YFRemoteViews f6626c;

        public SetOnClickFillInIntent(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6626c = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6625b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(9);
            parcel.writeInt(this.a);
            this.f6625b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickPendingIntent extends Action {
        PendingIntent f6627b;
        final /* synthetic */ YFRemoteViews f6628c;

        public SetOnClickPendingIntent(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6628c = yFRemoteViews;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.f6627b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(1);
            parcel.writeInt(this.a);
            if (this.f6627b == null) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (this.f6627b != null) {
                this.f6627b.writeToParcel(parcel, 0);
            }
        }
    }

    /* compiled from: ProGuard */
    public class SetPendingIntentTemplate extends Action {
        PendingIntent f6629b;
        final /* synthetic */ YFRemoteViews f6630c;

        public SetPendingIntentTemplate(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6630c = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6629b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(8);
            parcel.writeInt(this.a);
            this.f6629b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterIntent extends Action {
        Intent f6631b;
        final /* synthetic */ YFRemoteViews f6632c;

        public SetRemoteViewsAdapterIntent(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6632c = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6631b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(10);
            parcel.writeInt(this.a);
            this.f6631b.writeToParcel(parcel, i);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterList extends Action {
        int f6633b;
        ArrayList<YFRemoteViews> f6634c;
        final /* synthetic */ YFRemoteViews f6635d;

        public SetRemoteViewsAdapterList(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6635d = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6633b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f6634c = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f6634c.add((YFRemoteViews) YFRemoteViews.CREATOR.createFromParcel(parcel));
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(15);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6633b);
            if (this.f6634c == null || this.f6634c.size() == 0) {
                parcel.writeInt(0);
                return;
            }
            int size = this.f6634c.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((YFRemoteViews) this.f6634c.get(i2)).writeToParcel(parcel, i);
            }
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableAction extends Action {
        boolean f6636b;
        int f6637c;
        int f6638d;
        int f6639e;
        int f6640f;
        final /* synthetic */ YFRemoteViews f6641g;

        public TextViewDrawableAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            boolean z = false;
            this.f6641g = yFRemoteViews;
            this.f6636b = false;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            }
            this.f6636b = z;
            this.f6637c = parcel.readInt();
            this.f6638d = parcel.readInt();
            this.f6639e = parcel.readInt();
            this.f6640f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(11);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6636b ? 1 : 0);
            parcel.writeInt(this.f6637c);
            parcel.writeInt(this.f6638d);
            parcel.writeInt(this.f6639e);
            parcel.writeInt(this.f6640f);
        }
    }

    /* compiled from: ProGuard */
    public class TextViewSizeAction extends Action {
        int f6642b;
        float f6643c;
        final /* synthetic */ YFRemoteViews f6644d;

        public TextViewSizeAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6644d = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6642b = parcel.readInt();
            this.f6643c = parcel.readFloat();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(13);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6642b);
            parcel.writeFloat(this.f6643c);
        }
    }

    /* compiled from: ProGuard */
    public class ViewGroupAction extends Action {
        YFRemoteViews f6645b;
        final /* synthetic */ YFRemoteViews f6646c;

        public ViewGroupAction(YFRemoteViews yFRemoteViews, Parcel parcel, ProGuard proGuard) {
            this.f6646c = yFRemoteViews;
            this.a = parcel.readInt();
            if ((parcel.readInt() == 0 ? 1 : null) == null) {
                this.f6645b = new YFRemoteViews(parcel, proGuard);
            } else {
                this.f6645b = null;
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(4);
            parcel.writeInt(this.a);
            if (this.f6645b != null) {
                parcel.writeInt(1);
                this.f6645b.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public void m8551a(ProGuard proGuard) {
            if (this.f6645b != null) {
                proGuard.m8557a(this.f6645b.m8588g());
            }
        }

        public void m8550a(ProGuard proGuard) {
            if (this.f6645b != null) {
                this.f6645b.m8582a(proGuard);
            }
        }
    }

    /* compiled from: ProGuard */
    public class ViewPaddingAction extends Action {
        int f6647b;
        int f6648c;
        int f6649d;
        int f6650e;
        final /* synthetic */ YFRemoteViews f6651f;

        public ViewPaddingAction(YFRemoteViews yFRemoteViews, Parcel parcel) {
            this.f6651f = yFRemoteViews;
            this.a = parcel.readInt();
            this.f6647b = parcel.readInt();
            this.f6648c = parcel.readInt();
            this.f6649d = parcel.readInt();
            this.f6650e = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(14);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6647b);
            parcel.writeInt(this.f6648c);
            parcel.writeInt(this.f6649d);
            parcel.writeInt(this.f6650e);
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews.a */
    public static class ProGuard extends RuntimeException {
        public ProGuard(String str) {
            super(str);
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews.b */
    public static class ProGuard {
        ArrayList<Bitmap> f6652a;

        public ProGuard() {
            this.f6652a = new ArrayList();
        }

        public ProGuard(Parcel parcel) {
            int readInt = parcel.readInt();
            this.f6652a = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f6652a.add((Bitmap) Bitmap.CREATOR.createFromParcel(parcel));
            }
        }

        public int m8552a(Bitmap bitmap) {
            if (bitmap == null) {
                return -1;
            }
            if (this.f6652a.contains(bitmap)) {
                return this.f6652a.indexOf(bitmap);
            }
            this.f6652a.add(bitmap);
            return this.f6652a.size() - 1;
        }

        public Bitmap m8553a(int i) {
            if (i == -1 || i >= this.f6652a.size()) {
                return null;
            }
            return (Bitmap) this.f6652a.get(i);
        }

        public void m8554a(Parcel parcel, int i) {
            int size = this.f6652a.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((Bitmap) this.f6652a.get(i2)).writeToParcel(parcel, i);
            }
        }

        public void m8555a(ProGuard proGuard) {
            for (int i = 0; i < this.f6652a.size(); i++) {
                proGuard.m8558a((Bitmap) this.f6652a.get(i));
            }
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews.c */
    public class ProGuard {
        int f6653a;
        final /* synthetic */ YFRemoteViews f6654b;

        public ProGuard(YFRemoteViews yFRemoteViews) {
            this.f6654b = yFRemoteViews;
        }

        public void m8556a() {
            this.f6653a = 0;
        }

        public void m8557a(int i) {
            this.f6653a += i;
        }

        public int m8559b() {
            return this.f6653a;
        }

        public void m8558a(Bitmap bitmap) {
            int i = 4;
            Config config = bitmap.getConfig();
            if (config != null) {
                switch (ProGuard.f6604a[config.ordinal()]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        i = 1;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        i = 2;
                        break;
                }
            }
            m8557a(i * (bitmap.getWidth() * bitmap.getHeight()));
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews.d */
    public static class ProGuard<F, S> {
        F f6655a;
        S f6656b;

        ProGuard(F f, S s) {
            this.f6655a = f;
            this.f6656b = s;
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
            int hashCode = this.f6655a == null ? 0 : this.f6655a.hashCode();
            if (this.f6656b != null) {
                i = this.f6656b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews.e */
    public static class ProGuard {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.yf.lib.notification.views.YFRemoteViews.f */
    public @interface ProGuard {
    }

    public /* synthetic */ Object clone() {
        return m8584c();
    }

    static {
        f6730k = new ProGuard();
        f6731l = new Object[0];
        f6732m = new HashMap();
        f6733n = new ProGuard();
        CREATOR = new ProGuard();
    }

    public void m8581a() {
        this.f6740g = false;
    }

    public boolean m8583b() {
        return (this.f6741h == null || this.f6742i == null) ? false : true;
    }

    public YFRemoteViews(Parcel parcel) {
        this(parcel, null);
    }

    public YFRemoteViews(Parcel parcel, ProGuard proGuard) {
        boolean z = true;
        int i = 0;
        this.f6734a = Process.myUserHandle();
        this.f6740g = true;
        this.f6741h = null;
        this.f6742i = null;
        this.f6743j = false;
        this.f6744o = new ProGuard(null, null);
        int readInt = parcel.readInt();
        if (proGuard == null) {
            this.f6739f = new ProGuard(parcel);
        } else {
            m8582a(proGuard);
            m8581a();
        }
        if (readInt == 0) {
            this.f6735b = parcel.readString();
            this.f6736c = parcel.readInt();
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.f6743j = z;
            int readInt2 = parcel.readInt();
            if (readInt2 > 0) {
                this.f6737d = new ArrayList(readInt2);
                while (i < readInt2) {
                    readInt = parcel.readInt();
                    switch (readInt) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            this.f6737d.add(new SetOnClickPendingIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            this.f6737d.add(new ReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            this.f6737d.add(new SetDrawableParameters(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                            this.f6737d.add(new ViewGroupAction(this, parcel, this.f6739f));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            this.f6737d.add(new ReflectionActionWithoutParams(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            this.f6737d.add(new SetEmptyView(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                            this.f6737d.add(new SetPendingIntentTemplate(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                            this.f6737d.add(new SetOnClickFillInIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                            this.f6737d.add(new SetRemoteViewsAdapterIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                            this.f6737d.add(new TextViewDrawableAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                            this.f6737d.add(new BitmapReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                            this.f6737d.add(new TextViewSizeAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                            this.f6737d.add(new ViewPaddingAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                            this.f6737d.add(new SetRemoteViewsAdapterList(this, parcel));
                            break;
                        default:
                            throw new ProGuard("Tag " + readInt + " not found");
                    }
                    i++;
                }
            }
        } else {
            this.f6741h = new YFRemoteViews(parcel, this.f6739f);
            this.f6742i = new YFRemoteViews(parcel, this.f6739f);
            this.f6735b = this.f6742i.m8585d();
            this.f6736c = this.f6742i.m8586e();
        }
        this.f6738e = new ProGuard(this);
        m8587f();
    }

    public YFRemoteViews m8584c() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        return new YFRemoteViews(obtain);
    }

    public String m8585d() {
        return this.f6735b;
    }

    public int m8586e() {
        return this.f6736c;
    }

    public void m8587f() {
        this.f6738e.m8556a();
        if (m8583b()) {
            this.f6738e.m8557a(this.f6741h.m8588g());
            this.f6738e.m8557a(this.f6742i.m8588g());
            this.f6739f.m8555a(this.f6738e);
            return;
        }
        if (this.f6737d != null) {
            int size = this.f6737d.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f6737d.get(i)).m8548a(this.f6738e);
            }
        }
        if (this.f6740g) {
            this.f6739f.m8555a(this.f6738e);
        }
    }

    public void m8582a(ProGuard proGuard) {
        this.f6739f = proGuard;
        if (m8583b()) {
            this.f6741h.m8582a(proGuard);
            this.f6742i.m8582a(proGuard);
        } else if (this.f6737d != null) {
            int size = this.f6737d.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f6737d.get(i)).m8547a(proGuard);
            }
        }
    }

    public int m8588g() {
        return this.f6738e.m8559b();
    }

    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(ProGuard.class);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        if (m8583b()) {
            parcel.writeInt(1);
            if (this.f6740g) {
                this.f6739f.m8554a(parcel, i);
            }
            this.f6741h.writeToParcel(parcel, i);
            this.f6742i.writeToParcel(parcel, i);
            return;
        }
        int size;
        parcel.writeInt(0);
        if (this.f6740g) {
            this.f6739f.m8554a(parcel, i);
        }
        parcel.writeString(this.f6735b);
        parcel.writeInt(this.f6736c);
        if (!this.f6743j) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.f6737d != null) {
            size = this.f6737d.size();
        } else {
            size = 0;
        }
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            ((Action) this.f6737d.get(i3)).writeToParcel(parcel, 0);
        }
    }
}
