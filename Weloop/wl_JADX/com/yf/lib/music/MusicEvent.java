package com.yf.lib.music;

import com.yf.lib.p136b.ProGuard;

/* compiled from: ProGuard */
public class MusicEvent extends ProGuard {
    public final String album;
    public final String artist;
    public final String track;

    public MusicEvent(String str, String str2, String str3) {
        this.artist = str;
        this.album = str2;
        this.track = str3;
    }
}
