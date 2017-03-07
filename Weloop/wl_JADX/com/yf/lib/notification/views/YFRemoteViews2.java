package com.yf.lib.notification.views;

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
    public static final ProGuard f6716j;
    public static final Object[] f6717k;
    public static final HashMap<Class<? extends View>, HashMap<ProGuard<String, Class<?>>, Method>> f6718l;
    public static final ThreadLocal<Object[]> f6719m;
    public ApplicationInfo f6720a;
    public final int f6721b;
    public ArrayList<Action> f6722c;
    public ProGuard f6723d;
    public ProGuard f6724e;
    public boolean f6725f;
    public YFRemoteViews2 f6726g;
    public YFRemoteViews2 f6727h;
    public boolean f6728i;
    public final ProGuard<String, Class<?>> f6729n;

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews2.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f6657a;

        static {
            f6657a = new int[Config.values().length];
            try {
                f6657a[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6657a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6657a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6657a[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: ProGuard */
    public static abstract class Action implements Parcelable {
        public int f6658a;

        public int describeContents() {
            return 0;
        }

        public void m8561a(ProGuard proGuard) {
        }

        public void m8560a(ProGuard proGuard) {
        }
    }

    /* compiled from: ProGuard */
    public class BitmapReflectionAction extends Action {
        int f6659b;
        Bitmap f6660c;
        String f6661d;
        final /* synthetic */ YFRemoteViews2 f6662e;

        BitmapReflectionAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6662e = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6661d = parcel.readString();
            this.f6659b = parcel.readInt();
            this.f6660c = yFRemoteViews2.f6724e.m8567a(this.f6659b);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(12);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6661d);
            parcel.writeInt(this.f6659b);
        }

        public void m8562a(ProGuard proGuard) {
            this.f6659b = proGuard.m8566a(this.f6660c);
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionAction extends Action {
        public String f6663b;
        public int f6664c;
        public Object f6665d;
        final /* synthetic */ YFRemoteViews2 f6666e;

        ReflectionAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6666e = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6663b = parcel.readString();
            this.f6664c = parcel.readInt();
            switch (this.f6664c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f6665d = Boolean.valueOf(parcel.readInt() != 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f6665d = Byte.valueOf(parcel.readByte());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f6665d = Short.valueOf((short) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    this.f6665d = Integer.valueOf(parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f6665d = Long.valueOf(parcel.readLong());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    this.f6665d = Float.valueOf(parcel.readFloat());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    this.f6665d = Double.valueOf(parcel.readDouble());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    this.f6665d = Character.valueOf((char) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    this.f6665d = parcel.readString();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    this.f6665d = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (parcel.readInt() != 0) {
                        this.f6665d = Uri.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (parcel.readInt() != 0) {
                        this.f6665d = Bitmap.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    this.f6665d = parcel.readBundle();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (parcel.readInt() != 0) {
                        this.f6665d = Intent.CREATOR.createFromParcel(parcel);
                    }
                default:
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(2);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6663b);
            parcel.writeInt(this.f6664c);
            switch (this.f6664c) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.writeInt(((Boolean) this.f6665d).booleanValue() ? 1 : 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.writeByte(((Byte) this.f6665d).byteValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.writeInt(((Short) this.f6665d).shortValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    parcel.writeInt(((Integer) this.f6665d).intValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    parcel.writeLong(((Long) this.f6665d).longValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    parcel.writeFloat(((Float) this.f6665d).floatValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    parcel.writeDouble(((Double) this.f6665d).doubleValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    parcel.writeInt(((Character) this.f6665d).charValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    parcel.writeString((String) this.f6665d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    TextUtils.writeToParcel((CharSequence) this.f6665d, parcel, i);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (this.f6665d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6665d != null) {
                        ((Uri) this.f6665d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (this.f6665d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6665d != null) {
                        ((Bitmap) this.f6665d).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    parcel.writeBundle((Bundle) this.f6665d);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (this.f6665d == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6665d != null) {
                        ((Intent) this.f6665d).writeToParcel(parcel, i);
                    }
                default:
            }
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionActionWithoutParams extends Action {
        final String f6667b;
        final /* synthetic */ YFRemoteViews2 f6668c;

        ReflectionActionWithoutParams(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6668c = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6667b = parcel.readString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(5);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6667b);
        }
    }

    /* compiled from: ProGuard */
    public class SetDrawableParameters extends Action {
        boolean f6669b;
        int f6670c;
        int f6671d;
        Mode f6672e;
        int f6673f;
        final /* synthetic */ YFRemoteViews2 f6674g;

        public SetDrawableParameters(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            Object obj = 1;
            this.f6674g = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6669b = parcel.readInt() != 0;
            this.f6670c = parcel.readInt();
            this.f6671d = parcel.readInt();
            if (parcel.readInt() == 0) {
                obj = null;
            }
            if (obj != null) {
                this.f6672e = Mode.valueOf(parcel.readString());
            } else {
                this.f6672e = null;
            }
            this.f6673f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(3);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6669b ? 1 : 0);
            parcel.writeInt(this.f6670c);
            parcel.writeInt(this.f6671d);
            if (this.f6672e != null) {
                parcel.writeInt(1);
                parcel.writeString(this.f6672e.toString());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f6673f);
        }
    }

    /* compiled from: ProGuard */
    public class SetEmptyView extends Action {
        public int f6675b;
        public int f6676c;
        final /* synthetic */ YFRemoteViews2 f6677d;

        SetEmptyView(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6677d = yFRemoteViews2;
            this.f6675b = parcel.readInt();
            this.f6676c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(6);
            parcel.writeInt(this.f6675b);
            parcel.writeInt(this.f6676c);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickFillInIntent extends Action {
        Intent f6678b;
        final /* synthetic */ YFRemoteViews2 f6679c;

        public SetOnClickFillInIntent(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6679c = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6678b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(9);
            parcel.writeInt(this.a);
            this.f6678b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickPendingIntent extends Action {
        PendingIntent f6680b;
        final /* synthetic */ YFRemoteViews2 f6681c;

        public SetOnClickPendingIntent(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6681c = yFRemoteViews2;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.f6680b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(1);
            parcel.writeInt(this.a);
            if (this.f6680b == null) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (this.f6680b != null) {
                this.f6680b.writeToParcel(parcel, 0);
            }
        }
    }

    /* compiled from: ProGuard */
    public class SetPendingIntentTemplate extends Action {
        PendingIntent f6682b;
        final /* synthetic */ YFRemoteViews2 f6683c;

        public SetPendingIntentTemplate(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6683c = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6682b = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(8);
            parcel.writeInt(this.a);
            this.f6682b.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterIntent extends Action {
        Intent f6684b;
        final /* synthetic */ YFRemoteViews2 f6685c;

        public SetRemoteViewsAdapterIntent(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6685c = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6684b = (Intent) Intent.CREATOR.createFromParcel(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(10);
            parcel.writeInt(this.a);
            this.f6684b.writeToParcel(parcel, i);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterList extends Action {
        int f6686b;
        ArrayList<YFRemoteViews2> f6687c;
        final /* synthetic */ YFRemoteViews2 f6688d;

        public SetRemoteViewsAdapterList(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6688d = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6686b = parcel.readInt();
            int readInt = parcel.readInt();
            this.f6687c = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f6687c.add((YFRemoteViews2) YFRemoteViews2.CREATOR.createFromParcel(parcel));
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(15);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6686b);
            if (this.f6687c == null || this.f6687c.size() == 0) {
                parcel.writeInt(0);
                return;
            }
            int size = this.f6687c.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((YFRemoteViews2) this.f6687c.get(i2)).writeToParcel(parcel, i);
            }
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableAction extends Action {
        public boolean f6689b;
        public int f6690c;
        public int f6691d;
        public int f6692e;
        public int f6693f;
        final /* synthetic */ YFRemoteViews2 f6694g;

        public TextViewDrawableAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            boolean z = false;
            this.f6694g = yFRemoteViews2;
            this.f6689b = false;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            }
            this.f6689b = z;
            this.f6690c = parcel.readInt();
            this.f6691d = parcel.readInt();
            this.f6692e = parcel.readInt();
            this.f6693f = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(11);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6689b ? 1 : 0);
            parcel.writeInt(this.f6690c);
            parcel.writeInt(this.f6691d);
            parcel.writeInt(this.f6692e);
            parcel.writeInt(this.f6693f);
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableColorFilterAction extends Action {
        public final boolean f6695b;
        public final int f6696c;
        public final int f6697d;
        public final Mode f6698e;
        final /* synthetic */ YFRemoteViews2 f6699f;

        public TextViewDrawableColorFilterAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6699f = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6695b = parcel.readInt() != 0;
            this.f6696c = parcel.readInt();
            this.f6697d = parcel.readInt();
            this.f6698e = m8563a(parcel);
        }

        public Mode m8563a(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt < 0 || readInt >= Mode.values().length) {
                return Mode.CLEAR;
            }
            return Mode.values()[readInt];
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(17);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6695b ? 1 : 0);
            parcel.writeInt(this.f6696c);
            parcel.writeInt(this.f6697d);
            parcel.writeInt(this.f6698e.ordinal());
        }
    }

    /* compiled from: ProGuard */
    public class TextViewSizeAction extends Action {
        int f6700b;
        float f6701c;
        final /* synthetic */ YFRemoteViews2 f6702d;

        public TextViewSizeAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6702d = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6700b = parcel.readInt();
            this.f6701c = parcel.readFloat();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(13);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6700b);
            parcel.writeFloat(this.f6701c);
        }
    }

    /* compiled from: ProGuard */
    public class ViewGroupAction extends Action {
        public YFRemoteViews2 f6703b;
        final /* synthetic */ YFRemoteViews2 f6704c;

        public ViewGroupAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel, ProGuard proGuard) {
            this.f6704c = yFRemoteViews2;
            this.a = parcel.readInt();
            if ((parcel.readInt() == 0 ? 1 : null) == null) {
                this.f6703b = new YFRemoteViews2(parcel, proGuard);
            } else {
                this.f6703b = null;
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(4);
            parcel.writeInt(this.a);
            if (this.f6703b != null) {
                parcel.writeInt(1);
                this.f6703b.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public void m8565a(ProGuard proGuard) {
            if (this.f6703b != null) {
                proGuard.m8571a(this.f6703b.m8580f());
            }
        }

        public void m8564a(ProGuard proGuard) {
            if (this.f6703b != null) {
                this.f6703b.m8575a(proGuard);
            }
        }
    }

    /* compiled from: ProGuard */
    public class ViewPaddingAction extends Action {
        public int f6705b;
        public int f6706c;
        public int f6707d;
        public int f6708e;
        final /* synthetic */ YFRemoteViews2 f6709f;

        public ViewPaddingAction(YFRemoteViews2 yFRemoteViews2, Parcel parcel) {
            this.f6709f = yFRemoteViews2;
            this.a = parcel.readInt();
            this.f6705b = parcel.readInt();
            this.f6706c = parcel.readInt();
            this.f6707d = parcel.readInt();
            this.f6708e = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(14);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6705b);
            parcel.writeInt(this.f6706c);
            parcel.writeInt(this.f6707d);
            parcel.writeInt(this.f6708e);
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews2.a */
    public static class ProGuard extends RuntimeException {
        public ProGuard(String str) {
            super(str);
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews2.b */
    public static class ProGuard {
        ArrayList<Bitmap> f6710a;

        public ProGuard() {
            this.f6710a = new ArrayList();
        }

        public ProGuard(Parcel parcel) {
            int readInt = parcel.readInt();
            this.f6710a = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f6710a.add((Bitmap) Bitmap.CREATOR.createFromParcel(parcel));
            }
        }

        public int m8566a(Bitmap bitmap) {
            if (bitmap == null) {
                return -1;
            }
            if (this.f6710a.contains(bitmap)) {
                return this.f6710a.indexOf(bitmap);
            }
            this.f6710a.add(bitmap);
            return this.f6710a.size() - 1;
        }

        public Bitmap m8567a(int i) {
            if (i == -1 || i >= this.f6710a.size()) {
                return null;
            }
            return (Bitmap) this.f6710a.get(i);
        }

        public void m8568a(Parcel parcel, int i) {
            int size = this.f6710a.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((Bitmap) this.f6710a.get(i2)).writeToParcel(parcel, i);
            }
        }

        public void m8569a(ProGuard proGuard) {
            for (int i = 0; i < this.f6710a.size(); i++) {
                proGuard.m8572a((Bitmap) this.f6710a.get(i));
            }
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews2.c */
    public class ProGuard {
        public int f6711a;
        final /* synthetic */ YFRemoteViews2 f6712b;

        public ProGuard(YFRemoteViews2 yFRemoteViews2) {
            this.f6712b = yFRemoteViews2;
        }

        public void m8570a() {
            this.f6711a = 0;
        }

        public void m8571a(int i) {
            this.f6711a += i;
        }

        public int m8573b() {
            return this.f6711a;
        }

        public void m8572a(Bitmap bitmap) {
            int i = 4;
            Config config = bitmap.getConfig();
            if (config != null) {
                switch (ProGuard.f6657a[config.ordinal()]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        i = 1;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        i = 2;
                        break;
                }
            }
            m8571a(i * (bitmap.getWidth() * bitmap.getHeight()));
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews2.d */
    public class ProGuard<F, S> {
        public F f6713a;
        public S f6714b;
        final /* synthetic */ YFRemoteViews2 f6715c;

        ProGuard(YFRemoteViews2 yFRemoteViews2, F f, S s) {
            this.f6715c = yFRemoteViews2;
            this.f6713a = f;
            this.f6714b = s;
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
            int hashCode = this.f6713a == null ? 0 : this.f6713a.hashCode();
            if (this.f6714b != null) {
                i = this.f6714b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFRemoteViews2.e */
    public static class ProGuard {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.yf.lib.notification.views.YFRemoteViews2.f */
    public @interface ProGuard {
    }

    public /* synthetic */ Object clone() {
        return m8577c();
    }

    static {
        f6716j = new ProGuard();
        f6717k = new Object[0];
        f6718l = new HashMap();
        f6719m = new ProGuard();
        CREATOR = new ProGuard();
    }

    public void m8574a() {
        this.f6725f = false;
    }

    public boolean m8576b() {
        return (this.f6726g == null || this.f6727h == null) ? false : true;
    }

    public YFRemoteViews2(Parcel parcel) {
        this(parcel, null);
    }

    public YFRemoteViews2(Parcel parcel, ProGuard proGuard) {
        int i = 0;
        this.f6725f = true;
        this.f6726g = null;
        this.f6727h = null;
        this.f6728i = false;
        this.f6729n = new ProGuard(this, null, null);
        int readInt = parcel.readInt();
        if (proGuard == null) {
            this.f6724e = new ProGuard(parcel);
        } else {
            m8575a(proGuard);
            m8574a();
        }
        if (readInt == 0) {
            boolean z;
            this.f6720a = (ApplicationInfo) parcel.readParcelable(null);
            this.f6721b = parcel.readInt();
            if (parcel.readInt() == 1) {
                z = true;
            } else {
                z = false;
            }
            this.f6728i = z;
            readInt = parcel.readInt();
            if (readInt > 0) {
                this.f6722c = new ArrayList(readInt);
                while (i < readInt) {
                    int readInt2 = parcel.readInt();
                    switch (readInt2) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            this.f6722c.add(new SetOnClickPendingIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            this.f6722c.add(new ReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            this.f6722c.add(new SetDrawableParameters(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                            this.f6722c.add(new ViewGroupAction(this, parcel, this.f6724e));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            this.f6722c.add(new ReflectionActionWithoutParams(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            this.f6722c.add(new SetEmptyView(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                            this.f6722c.add(new SetPendingIntentTemplate(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                            this.f6722c.add(new SetOnClickFillInIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                            this.f6722c.add(new SetRemoteViewsAdapterIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                            this.f6722c.add(new TextViewDrawableAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                            this.f6722c.add(new BitmapReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                            this.f6722c.add(new TextViewSizeAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                            this.f6722c.add(new ViewPaddingAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                            this.f6722c.add(new SetRemoteViewsAdapterList(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_collapseIcon /*17*/:
                            this.f6722c.add(new TextViewDrawableColorFilterAction(this, parcel));
                            break;
                        default:
                            throw new ProGuard("Tag " + readInt2 + " not found");
                    }
                    i++;
                }
            }
        } else {
            this.f6726g = new YFRemoteViews2(parcel, this.f6724e);
            this.f6727h = new YFRemoteViews2(parcel, this.f6724e);
            this.f6720a = this.f6727h.f6720a;
            this.f6721b = this.f6727h.m8578d();
        }
        this.f6723d = new ProGuard(this);
        m8579e();
    }

    public YFRemoteViews2 m8577c() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        YFRemoteViews2 yFRemoteViews2 = new YFRemoteViews2(obtain);
        obtain.recycle();
        return yFRemoteViews2;
    }

    public int m8578d() {
        return this.f6721b;
    }

    public void m8579e() {
        this.f6723d.m8570a();
        if (m8576b()) {
            this.f6723d.m8571a(this.f6726g.m8580f());
            this.f6723d.m8571a(this.f6727h.m8580f());
            this.f6724e.m8569a(this.f6723d);
            return;
        }
        if (this.f6722c != null) {
            int size = this.f6722c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f6722c.get(i)).m8561a(this.f6723d);
            }
        }
        if (this.f6725f) {
            this.f6724e.m8569a(this.f6723d);
        }
    }

    public void m8575a(ProGuard proGuard) {
        this.f6724e = proGuard;
        if (m8576b()) {
            this.f6726g.m8575a(proGuard);
            this.f6727h.m8575a(proGuard);
        } else if (this.f6722c != null) {
            int size = this.f6722c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f6722c.get(i)).m8560a(proGuard);
            }
        }
    }

    public int m8580f() {
        return this.f6723d.m8573b();
    }

    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(ProGuard.class);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        if (m8576b()) {
            parcel.writeInt(1);
            if (this.f6725f) {
                this.f6724e.m8568a(parcel, i);
            }
            this.f6726g.writeToParcel(parcel, i);
            this.f6727h.writeToParcel(parcel, i);
            return;
        }
        int size;
        parcel.writeInt(0);
        if (this.f6725f) {
            this.f6724e.m8568a(parcel, i);
        }
        parcel.writeParcelable(this.f6720a, i);
        parcel.writeInt(this.f6721b);
        if (!this.f6728i) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.f6722c != null) {
            size = this.f6722c.size();
        } else {
            size = 0;
        }
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            ((Action) this.f6722c.get(i3)).writeToParcel(parcel, 0);
        }
    }
}
