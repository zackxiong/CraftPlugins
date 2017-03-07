package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.app.ProGuard.ProGuard;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* compiled from: ProGuard */
final class BackStackState implements Parcelable {
    public static final Creator<BackStackState> CREATOR;
    final int[] f55a;
    final int f56b;
    final int f57c;
    final String f58d;
    final int f59e;
    final int f60f;
    final CharSequence f61g;
    final int f62h;
    final CharSequence f63i;
    final ArrayList<String> f64j;
    final ArrayList<String> f65k;

    public BackStackState(ProGuard proGuard, ProGuard proGuard2) {
        int i = 0;
        for (ProGuard proGuard3 = proGuard2.f207c; proGuard3 != null; proGuard3 = proGuard3.f191a) {
            if (proGuard3.f199i != null) {
                i += proGuard3.f199i.size();
            }
        }
        this.f55a = new int[(i + (proGuard2.f209e * 7))];
        if (proGuard2.f216l) {
            i = 0;
            for (ProGuard proGuard4 = proGuard2.f207c; proGuard4 != null; proGuard4 = proGuard4.f191a) {
                int i2 = i + 1;
                this.f55a[i] = proGuard4.f193c;
                int i3 = i2 + 1;
                this.f55a[i2] = proGuard4.f194d != null ? proGuard4.f194d.mIndex : -1;
                int i4 = i3 + 1;
                this.f55a[i3] = proGuard4.f195e;
                i2 = i4 + 1;
                this.f55a[i4] = proGuard4.f196f;
                i4 = i2 + 1;
                this.f55a[i2] = proGuard4.f197g;
                i2 = i4 + 1;
                this.f55a[i4] = proGuard4.f198h;
                if (proGuard4.f199i != null) {
                    int size = proGuard4.f199i.size();
                    i4 = i2 + 1;
                    this.f55a[i2] = size;
                    i2 = 0;
                    while (i2 < size) {
                        i3 = i4 + 1;
                        this.f55a[i4] = ((Fragment) proGuard4.f199i.get(i2)).mIndex;
                        i2++;
                        i4 = i3;
                    }
                    i = i4;
                } else {
                    i = i2 + 1;
                    this.f55a[i2] = 0;
                }
            }
            this.f56b = proGuard2.f214j;
            this.f57c = proGuard2.f215k;
            this.f58d = proGuard2.f218n;
            this.f59e = proGuard2.f220p;
            this.f60f = proGuard2.f221q;
            this.f61g = proGuard2.f222r;
            this.f62h = proGuard2.f223s;
            this.f63i = proGuard2.f224t;
            this.f64j = proGuard2.f225u;
            this.f65k = proGuard2.f226v;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    public BackStackState(Parcel parcel) {
        this.f55a = parcel.createIntArray();
        this.f56b = parcel.readInt();
        this.f57c = parcel.readInt();
        this.f58d = parcel.readString();
        this.f59e = parcel.readInt();
        this.f60f = parcel.readInt();
        this.f61g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f62h = parcel.readInt();
        this.f63i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f64j = parcel.createStringArrayList();
        this.f65k = parcel.createStringArrayList();
    }

    public ProGuard m105a(ProGuard proGuard) {
        ProGuard proGuard2 = new ProGuard(proGuard);
        int i = 0;
        int i2 = 0;
        while (i2 < this.f55a.length) {
            ProGuard proGuard3 = new ProGuard();
            int i3 = i2 + 1;
            proGuard3.f193c = this.f55a[i2];
            if (ProGuard.f267a) {
                Log.v("FragmentManager", "Instantiate " + proGuard2 + " op #" + i + " base fragment #" + this.f55a[i3]);
            }
            int i4 = i3 + 1;
            i2 = this.f55a[i3];
            if (i2 >= 0) {
                proGuard3.f194d = (Fragment) proGuard.f273f.get(i2);
            } else {
                proGuard3.f194d = null;
            }
            i3 = i4 + 1;
            proGuard3.f195e = this.f55a[i4];
            i4 = i3 + 1;
            proGuard3.f196f = this.f55a[i3];
            i3 = i4 + 1;
            proGuard3.f197g = this.f55a[i4];
            int i5 = i3 + 1;
            proGuard3.f198h = this.f55a[i3];
            i4 = i5 + 1;
            int i6 = this.f55a[i5];
            if (i6 > 0) {
                proGuard3.f199i = new ArrayList(i6);
                i3 = 0;
                while (i3 < i6) {
                    if (ProGuard.f267a) {
                        Log.v("FragmentManager", "Instantiate " + proGuard2 + " set remove fragment #" + this.f55a[i4]);
                    }
                    i5 = i4 + 1;
                    proGuard3.f199i.add((Fragment) proGuard.f273f.get(this.f55a[i4]));
                    i3++;
                    i4 = i5;
                }
            }
            proGuard2.m246a(proGuard3);
            i++;
            i2 = i4;
        }
        proGuard2.f214j = this.f56b;
        proGuard2.f215k = this.f57c;
        proGuard2.f218n = this.f58d;
        proGuard2.f220p = this.f59e;
        proGuard2.f216l = true;
        proGuard2.f221q = this.f60f;
        proGuard2.f222r = this.f61g;
        proGuard2.f223s = this.f62h;
        proGuard2.f224t = this.f63i;
        proGuard2.f225u = this.f64j;
        proGuard2.f226v = this.f65k;
        proGuard2.m245a(1);
        return proGuard2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f55a);
        parcel.writeInt(this.f56b);
        parcel.writeInt(this.f57c);
        parcel.writeString(this.f58d);
        parcel.writeInt(this.f59e);
        parcel.writeInt(this.f60f);
        TextUtils.writeToParcel(this.f61g, parcel, 0);
        parcel.writeInt(this.f62h);
        TextUtils.writeToParcel(this.f63i, parcel, 0);
        parcel.writeStringList(this.f64j);
        parcel.writeStringList(this.f65k);
    }

    static {
        CREATOR = new ProGuard();
    }
}
