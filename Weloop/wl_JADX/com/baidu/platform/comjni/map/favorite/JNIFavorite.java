package com.baidu.platform.comjni.map.favorite;

import android.os.Bundle;

public class JNIFavorite {
    public native boolean Add(int i, String str, String str2);

    public native boolean Clear(int i);

    public native int Create();

    public native int GetAll(int i, Bundle bundle);

    public native String GetValue(int i, String str);

    public native boolean IsExist(int i, String str);

    public native boolean Load(int i, String str, String str2, String str3, int i2, int i3, int i4);

    public native int Release(int i);

    public native boolean Remove(int i, String str);

    public native boolean SaveCache(int i);

    public native boolean SetType(int i, int i2);

    public native boolean Update(int i, String str, String str2);
}
