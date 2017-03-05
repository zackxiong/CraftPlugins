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
public class YFHtcRemoteViews implements Parcelable, Filter {
    public static final Creator<YFHtcRemoteViews> CREATOR;
    public static final ProGuard f6590j;
    public static final Object[] f6591k;
    public static final HashMap<Class<? extends View>, HashMap<ProGuard<String, Class<?>>, Method>> f6592l;
    public static final ThreadLocal<Object[]> f6593m;
    public ApplicationInfo f6594a;
    public final int f6595b;
    public ArrayList<Action> f6596c;
    public ProGuard f6597d;
    public ProGuard f6598e;
    public boolean f6599f;
    public YFHtcRemoteViews f6600g;
    public YFHtcRemoteViews f6601h;
    public boolean f6602i;
    public final ProGuard<String, Class<?>> f6603n;

    /* renamed from: com.yf.lib.notification.views.YFHtcRemoteViews.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] f6529a;

        static {
            f6529a = new int[Config.values().length];
            try {
                f6529a[Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6529a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6529a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6529a[Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: ProGuard */
    public static abstract class Action implements Parcelable {
        public int f6530a;
        public boolean f6531b;
        public boolean f6532c;

        public int describeContents() {
            return 0;
        }

        public void m8525a(ProGuard proGuard) {
        }

        public void m8524a(ProGuard proGuard) {
        }

        public void m8523a(Parcel parcel) {
            boolean z;
            boolean z2 = true;
            if (parcel.readByte() != null) {
                z = true;
            } else {
                z = false;
            }
            this.f6531b = z;
            if (parcel.readByte() == null) {
                z2 = false;
            }
            this.f6532c = z2;
        }

        public void m8526b(Parcel parcel) {
            int i;
            int i2 = 1;
            parcel.writeBooleanArray(new boolean[]{this.f6531b, this.f6532c});
            if (this.f6531b) {
                i = 1;
            } else {
                i = 0;
            }
            parcel.writeByte((byte) i);
            if (!this.f6532c) {
                i2 = 0;
            }
            parcel.writeByte((byte) i2);
        }
    }

    /* compiled from: ProGuard */
    public class BitmapReflectionAction extends Action {
        int f6533d;
        Bitmap f6534e;
        String f6535f;
        final /* synthetic */ YFHtcRemoteViews f6536g;

        BitmapReflectionAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6536g = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6535f = parcel.readString();
            this.f6533d = parcel.readInt();
            this.f6534e = yFHtcRemoteViews.f6598e.m8532a(this.f6533d);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(12);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6535f);
            parcel.writeInt(this.f6533d);
        }

        public void m8527a(ProGuard proGuard) {
            this.f6533d = proGuard.m8531a(this.f6534e);
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionAction extends Action {
        public String f6537d;
        public int f6538e;
        public Object f6539f;
        final /* synthetic */ YFHtcRemoteViews f6540g;

        ReflectionAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6540g = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6537d = parcel.readString();
            this.f6538e = parcel.readInt();
            m8523a(parcel);
            switch (this.f6538e) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    this.f6539f = Boolean.valueOf(parcel.readInt() != 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    this.f6539f = Byte.valueOf(parcel.readByte());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    this.f6539f = Short.valueOf((short) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    this.f6539f = Integer.valueOf(parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    this.f6539f = Long.valueOf(parcel.readLong());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    this.f6539f = Float.valueOf(parcel.readFloat());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    this.f6539f = Double.valueOf(parcel.readDouble());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    this.f6539f = Character.valueOf((char) parcel.readInt());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    this.f6539f = parcel.readString();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    this.f6539f = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (parcel.readInt() != 0) {
                        this.f6539f = Uri.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (parcel.readInt() != 0) {
                        this.f6539f = Bitmap.CREATOR.createFromParcel(parcel);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    this.f6539f = parcel.readBundle();
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (parcel.readInt() != 0) {
                        this.f6539f = Intent.CREATOR.createFromParcel(parcel);
                    }
                default:
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(2);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6537d);
            parcel.writeInt(this.f6538e);
            m8526b(parcel);
            switch (this.f6538e) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    parcel.writeInt(((Boolean) this.f6539f).booleanValue() ? 1 : 0);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    parcel.writeByte(((Byte) this.f6539f).byteValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    parcel.writeInt(((Short) this.f6539f).shortValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    parcel.writeInt(((Integer) this.f6539f).intValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                    parcel.writeLong(((Long) this.f6539f).longValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                    parcel.writeFloat(((Float) this.f6539f).floatValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    parcel.writeDouble(((Double) this.f6539f).doubleValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                    parcel.writeInt(((Character) this.f6539f).charValue());
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                    parcel.writeString((String) this.f6539f);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                    TextUtils.writeToParcel((CharSequence) this.f6539f, parcel, i);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                    if (this.f6539f == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6539f != null) {
                        ((Uri) this.f6539f).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                    if (this.f6539f == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6539f != null) {
                        ((Bitmap) this.f6539f).writeToParcel(parcel, i);
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                    parcel.writeBundle((Bundle) this.f6539f);
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                    if (this.f6539f == null) {
                        i2 = 0;
                    }
                    parcel.writeInt(i2);
                    if (this.f6539f != null) {
                        ((Intent) this.f6539f).writeToParcel(parcel, i);
                    }
                default:
            }
        }
    }

    /* compiled from: ProGuard */
    public final class ReflectionActionWithoutParams extends Action {
        final String f6541d;
        final /* synthetic */ YFHtcRemoteViews f6542e;

        ReflectionActionWithoutParams(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6542e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6541d = parcel.readString();
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(5);
            parcel.writeInt(this.a);
            parcel.writeString(this.f6541d);
            m8526b(parcel);
        }
    }

    /* compiled from: ProGuard */
    public class SetDrawableParameters extends Action {
        boolean f6543d;
        int f6544e;
        int f6545f;
        Mode f6546g;
        int f6547h;
        final /* synthetic */ YFHtcRemoteViews f6548i;

        public SetDrawableParameters(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            Object obj = 1;
            this.f6548i = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6543d = parcel.readInt() != 0;
            this.f6544e = parcel.readInt();
            this.f6545f = parcel.readInt();
            if (parcel.readInt() == 0) {
                obj = null;
            }
            if (obj != null) {
                this.f6546g = Mode.valueOf(parcel.readString());
            } else {
                this.f6546g = null;
            }
            this.f6547h = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(3);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6543d ? 1 : 0);
            parcel.writeInt(this.f6544e);
            parcel.writeInt(this.f6545f);
            if (this.f6546g != null) {
                parcel.writeInt(1);
                parcel.writeString(this.f6546g.toString());
            } else {
                parcel.writeInt(0);
            }
            parcel.writeInt(this.f6547h);
        }
    }

    /* compiled from: ProGuard */
    public class SetEmptyView extends Action {
        public int f6549d;
        public int f6550e;
        final /* synthetic */ YFHtcRemoteViews f6551f;

        SetEmptyView(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6551f = yFHtcRemoteViews;
            this.f6549d = parcel.readInt();
            this.f6550e = parcel.readInt();
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(6);
            parcel.writeInt(this.f6549d);
            parcel.writeInt(this.f6550e);
            m8526b(parcel);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickFillInIntent extends Action {
        Intent f6552d;
        final /* synthetic */ YFHtcRemoteViews f6553e;

        public SetOnClickFillInIntent(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6553e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6552d = (Intent) Intent.CREATOR.createFromParcel(parcel);
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(9);
            parcel.writeInt(this.a);
            this.f6552d.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetOnClickPendingIntent extends Action {
        PendingIntent f6554d;
        final /* synthetic */ YFHtcRemoteViews f6555e;

        public SetOnClickPendingIntent(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6555e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                this.f6554d = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            }
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(1);
            parcel.writeInt(this.a);
            if (this.f6554d == null) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (this.f6554d != null) {
                this.f6554d.writeToParcel(parcel, 0);
            }
        }
    }

    /* compiled from: ProGuard */
    public class SetPendingIntentTemplate extends Action {
        PendingIntent f6556d;
        final /* synthetic */ YFHtcRemoteViews f6557e;

        public SetPendingIntentTemplate(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6557e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6556d = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(8);
            parcel.writeInt(this.a);
            this.f6556d.writeToParcel(parcel, 0);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterIntent extends Action {
        Intent f6558d;
        final /* synthetic */ YFHtcRemoteViews f6559e;

        public SetRemoteViewsAdapterIntent(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6559e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6558d = (Intent) Intent.CREATOR.createFromParcel(parcel);
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(10);
            parcel.writeInt(this.a);
            this.f6558d.writeToParcel(parcel, i);
        }
    }

    /* compiled from: ProGuard */
    public class SetRemoteViewsAdapterList extends Action {
        int f6560d;
        ArrayList<YFHtcRemoteViews> f6561e;
        final /* synthetic */ YFHtcRemoteViews f6562f;

        public SetRemoteViewsAdapterList(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6562f = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6560d = parcel.readInt();
            int readInt = parcel.readInt();
            this.f6561e = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f6561e.add((YFHtcRemoteViews) YFHtcRemoteViews.CREATOR.createFromParcel(parcel));
            }
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(15);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6560d);
            if (this.f6561e == null || this.f6561e.size() == 0) {
                parcel.writeInt(0);
                return;
            }
            int size = this.f6561e.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((YFHtcRemoteViews) this.f6561e.get(i2)).writeToParcel(parcel, i);
            }
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableAction extends Action {
        public boolean f6563d;
        public int f6564e;
        public int f6565f;
        public int f6566g;
        public int f6567h;
        final /* synthetic */ YFHtcRemoteViews f6568i;

        public TextViewDrawableAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            boolean z = false;
            this.f6568i = yFHtcRemoteViews;
            this.f6563d = false;
            this.a = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            }
            this.f6563d = z;
            this.f6564e = parcel.readInt();
            this.f6565f = parcel.readInt();
            this.f6566g = parcel.readInt();
            this.f6567h = parcel.readInt();
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(11);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6563d ? 1 : 0);
            parcel.writeInt(this.f6564e);
            parcel.writeInt(this.f6565f);
            parcel.writeInt(this.f6566g);
            parcel.writeInt(this.f6567h);
        }
    }

    /* compiled from: ProGuard */
    public class TextViewDrawableColorFilterAction extends Action {
        public final boolean f6569d;
        public final int f6570e;
        public final int f6571f;
        public final Mode f6572g;
        final /* synthetic */ YFHtcRemoteViews f6573h;

        public TextViewDrawableColorFilterAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6573h = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6569d = parcel.readInt() != 0;
            this.f6570e = parcel.readInt();
            this.f6571f = parcel.readInt();
            this.f6572g = m8528c(parcel);
            m8523a(parcel);
        }

        public Mode m8528c(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt < 0 || readInt >= Mode.values().length) {
                return Mode.CLEAR;
            }
            return Mode.values()[readInt];
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(17);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6569d ? 1 : 0);
            parcel.writeInt(this.f6570e);
            parcel.writeInt(this.f6571f);
            parcel.writeInt(this.f6572g.ordinal());
        }
    }

    /* compiled from: ProGuard */
    public class TextViewSizeAction extends Action {
        int f6574d;
        float f6575e;
        final /* synthetic */ YFHtcRemoteViews f6576f;

        public TextViewSizeAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6576f = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6574d = parcel.readInt();
            this.f6575e = parcel.readFloat();
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(13);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6574d);
            parcel.writeFloat(this.f6575e);
        }
    }

    /* compiled from: ProGuard */
    public class ViewGroupAction extends Action {
        public YFHtcRemoteViews f6577d;
        final /* synthetic */ YFHtcRemoteViews f6578e;

        public ViewGroupAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel, ProGuard proGuard) {
            this.f6578e = yFHtcRemoteViews;
            this.a = parcel.readInt();
            if ((parcel.readInt() == 0 ? 1 : null) == null) {
                this.f6577d = new YFHtcRemoteViews(parcel, proGuard);
            } else {
                this.f6577d = null;
            }
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(4);
            parcel.writeInt(this.a);
            if (this.f6577d != null) {
                parcel.writeInt(1);
                this.f6577d.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public void m8530a(ProGuard proGuard) {
            if (this.f6577d != null) {
                proGuard.m8536a(this.f6577d.m8546f());
            }
        }

        public void m8529a(ProGuard proGuard) {
            if (this.f6577d != null) {
                this.f6577d.m8541a(proGuard);
            }
        }
    }

    /* compiled from: ProGuard */
    public class ViewPaddingAction extends Action {
        public int f6579d;
        public int f6580e;
        public int f6581f;
        public int f6582g;
        final /* synthetic */ YFHtcRemoteViews f6583h;

        public ViewPaddingAction(YFHtcRemoteViews yFHtcRemoteViews, Parcel parcel) {
            this.f6583h = yFHtcRemoteViews;
            this.a = parcel.readInt();
            this.f6579d = parcel.readInt();
            this.f6580e = parcel.readInt();
            this.f6581f = parcel.readInt();
            this.f6582g = parcel.readInt();
            m8523a(parcel);
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(14);
            parcel.writeInt(this.a);
            parcel.writeInt(this.f6579d);
            parcel.writeInt(this.f6580e);
            parcel.writeInt(this.f6581f);
            parcel.writeInt(this.f6582g);
            m8526b(parcel);
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFHtcRemoteViews.a */
    public static class ProGuard {
        ArrayList<Bitmap> f6584a;

        public ProGuard() {
            this.f6584a = new ArrayList();
        }

        public ProGuard(Parcel parcel) {
            int readInt = parcel.readInt();
            this.f6584a = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                this.f6584a.add((Bitmap) Bitmap.CREATOR.createFromParcel(parcel));
            }
        }

        public int m8531a(Bitmap bitmap) {
            if (bitmap == null) {
                return -1;
            }
            if (this.f6584a.contains(bitmap)) {
                return this.f6584a.indexOf(bitmap);
            }
            this.f6584a.add(bitmap);
            return this.f6584a.size() - 1;
        }

        public Bitmap m8532a(int i) {
            if (i == -1 || i >= this.f6584a.size()) {
                return null;
            }
            return (Bitmap) this.f6584a.get(i);
        }

        public void m8533a(Parcel parcel, int i) {
            int size = this.f6584a.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                ((Bitmap) this.f6584a.get(i2)).writeToParcel(parcel, i);
            }
        }

        public void m8534a(ProGuard proGuard) {
            for (int i = 0; i < this.f6584a.size(); i++) {
                proGuard.m8537a((Bitmap) this.f6584a.get(i));
            }
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFHtcRemoteViews.b */
    public class ProGuard {
        public int f6585a;
        final /* synthetic */ YFHtcRemoteViews f6586b;

        public ProGuard(YFHtcRemoteViews yFHtcRemoteViews) {
            this.f6586b = yFHtcRemoteViews;
        }

        public void m8535a() {
            this.f6585a = 0;
        }

        public void m8536a(int i) {
            this.f6585a += i;
        }

        public int m8538b() {
            return this.f6585a;
        }

        public void m8537a(Bitmap bitmap) {
            int i = 4;
            Config config = bitmap.getConfig();
            if (config != null) {
                switch (ProGuard.f6529a[config.ordinal()]) {
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                        i = 1;
                        break;
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                        i = 2;
                        break;
                }
            }
            m8536a(i * (bitmap.getWidth() * bitmap.getHeight()));
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFHtcRemoteViews.c */
    public class ProGuard<F, S> {
        public F f6587a;
        public S f6588b;
        final /* synthetic */ YFHtcRemoteViews f6589c;

        ProGuard(YFHtcRemoteViews yFHtcRemoteViews, F f, S s) {
            this.f6589c = yFHtcRemoteViews;
            this.f6587a = f;
            this.f6588b = s;
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
            int hashCode = this.f6587a == null ? 0 : this.f6587a.hashCode();
            if (this.f6588b != null) {
                i = this.f6588b.hashCode();
            }
            return hashCode ^ i;
        }
    }

    /* renamed from: com.yf.lib.notification.views.YFHtcRemoteViews.d */
    public static class ProGuard {
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.yf.lib.notification.views.YFHtcRemoteViews.e */
    public @interface ProGuard {
    }

    public /* synthetic */ Object clone() {
        return m8543c();
    }

    static {
        f6590j = new ProGuard();
        f6591k = new Object[0];
        f6592l = new HashMap();
        f6593m = new ProGuard();
        CREATOR = new ProGuard();
    }

    public void m8540a() {
        this.f6599f = false;
    }

    public boolean m8542b() {
        return (this.f6600g == null || this.f6601h == null) ? false : true;
    }

    public YFHtcRemoteViews(Parcel parcel) {
        this(parcel, null);
    }

    public YFHtcRemoteViews(Parcel parcel, ProGuard proGuard) {
        this.f6599f = true;
        this.f6600g = null;
        this.f6601h = null;
        this.f6602i = false;
        this.f6603n = new ProGuard(this, null, null);
        int readInt = parcel.readInt();
        if (proGuard == null) {
            this.f6598e = new ProGuard(parcel);
        } else {
            m8541a(proGuard);
            m8540a();
        }
        if (readInt == 0) {
            boolean z;
            this.f6594a = (ApplicationInfo) parcel.readParcelable(null);
            this.f6595b = parcel.readInt();
            if (parcel.readInt() == 1) {
                z = true;
            } else {
                z = false;
            }
            this.f6602i = z;
            int readInt2 = parcel.readInt();
            if (readInt2 > 0) {
                this.f6596c = new ArrayList(readInt2);
                readInt = 0;
                while (readInt < readInt2 && parcel.dataPosition() < parcel.dataSize()) {
                    switch (parcel.readInt()) {
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                            this.f6596c.add(new SetOnClickPendingIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                            this.f6596c.add(new ReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                            this.f6596c.add(new SetDrawableParameters(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                            this.f6596c.add(new ViewGroupAction(this, parcel, this.f6598e));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTint /*5*/:
                            this.f6596c.add(new ReflectionActionWithoutParams(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_backgroundTintMode /*6*/:
                            this.f6596c.add(new SetEmptyView(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_popupTheme /*8*/:
                            this.f6596c.add(new SetPendingIntentTemplate(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleTextAppearance /*9*/:
                            this.f6596c.add(new SetOnClickFillInIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_subtitleTextAppearance /*10*/:
                            this.f6596c.add(new SetRemoteViewsAdapterIntent(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMargins /*11*/:
                            this.f6596c.add(new TextViewDrawableAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                            this.f6596c.add(new BitmapReflectionAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginEnd /*13*/:
                            this.f6596c.add(new TextViewSizeAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginTop /*14*/:
                            this.f6596c.add(new ViewPaddingAction(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_titleMarginBottom /*15*/:
                            this.f6596c.add(new SetRemoteViewsAdapterList(this, parcel));
                            break;
                        case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Toolbar_collapseIcon /*17*/:
                            this.f6596c.add(new TextViewDrawableColorFilterAction(this, parcel));
                            break;
                        default:
                            if (!m8539a(parcel)) {
                                readInt = readInt2;
                                break;
                            }
                            break;
                    }
                    readInt++;
                }
            }
        } else {
            this.f6600g = new YFHtcRemoteViews(parcel, this.f6598e);
            this.f6601h = new YFHtcRemoteViews(parcel, this.f6598e);
            this.f6594a = this.f6601h.f6594a;
            this.f6595b = this.f6601h.m8544d();
        }
        this.f6597d = new ProGuard(this);
        m8545e();
    }

    private boolean m8539a(Parcel parcel) {
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

    public YFHtcRemoteViews m8543c() {
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        YFHtcRemoteViews yFHtcRemoteViews = new YFHtcRemoteViews(obtain);
        obtain.recycle();
        return yFHtcRemoteViews;
    }

    public int m8544d() {
        return this.f6595b;
    }

    public void m8545e() {
        this.f6597d.m8535a();
        if (m8542b()) {
            this.f6597d.m8536a(this.f6600g.m8546f());
            this.f6597d.m8536a(this.f6601h.m8546f());
            this.f6598e.m8534a(this.f6597d);
            return;
        }
        if (this.f6596c != null) {
            int size = this.f6596c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f6596c.get(i)).m8525a(this.f6597d);
            }
        }
        if (this.f6599f) {
            this.f6598e.m8534a(this.f6597d);
        }
    }

    public void m8541a(ProGuard proGuard) {
        this.f6598e = proGuard;
        if (m8542b()) {
            this.f6600g.m8541a(proGuard);
            this.f6601h.m8541a(proGuard);
        } else if (this.f6596c != null) {
            int size = this.f6596c.size();
            for (int i = 0; i < size; i++) {
                ((Action) this.f6596c.get(i)).m8524a(proGuard);
            }
        }
    }

    public int m8546f() {
        return this.f6597d.m8538b();
    }

    public boolean onLoadClass(Class cls) {
        return cls.isAnnotationPresent(ProGuard.class);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        if (m8542b()) {
            parcel.writeInt(1);
            if (this.f6599f) {
                this.f6598e.m8533a(parcel, i);
            }
            this.f6600g.writeToParcel(parcel, i);
            this.f6601h.writeToParcel(parcel, i);
            return;
        }
        int size;
        parcel.writeInt(0);
        if (this.f6599f) {
            this.f6598e.m8533a(parcel, i);
        }
        parcel.writeParcelable(this.f6594a, i);
        parcel.writeInt(this.f6595b);
        if (!this.f6602i) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (this.f6596c != null) {
            size = this.f6596c.size();
        } else {
            size = 0;
        }
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            ((Action) this.f6596c.get(i3)).writeToParcel(parcel, 0);
        }
    }
}
