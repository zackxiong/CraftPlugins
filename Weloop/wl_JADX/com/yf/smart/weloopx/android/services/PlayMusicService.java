package com.yf.smart.weloopx.android.services;

import android.app.Service;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.os.IBinder;
import com.yf.smart.weloopx.dist.R;
import java.io.IOException;

/* compiled from: ProGuard */
public class PlayMusicService extends Service {
    private MediaPlayer f7175a;

    public IBinder onBind(Intent intent) {
        if (m9102b()) {
            this.f7175a.start();
        }
        return null;
    }

    public boolean onUnbind(Intent intent) {
        if (this.f7175a != null) {
            this.f7175a.stop();
        }
        return super.onUnbind(intent);
    }

    public void onCreate() {
        super.onCreate();
        m9102b();
    }

    private MediaPlayer m9101a() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        AssetFileDescriptor openRawResourceFd = getResources().openRawResourceFd(R.raw.tip_music);
        try {
            mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
            mediaPlayer.setAudioStreamType(2);
            openRawResourceFd.close();
            mediaPlayer.prepare();
            return mediaPlayer;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean m9102b() {
        if (this.f7175a == null) {
            this.f7175a = m9101a();
            if (this.f7175a != null) {
                this.f7175a.setLooping(true);
            }
        }
        if (this.f7175a == null) {
            return false;
        }
        return true;
    }

    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        if (m9102b()) {
            this.f7175a.start();
        }
    }

    public void onDestroy() {
        if (this.f7175a != null) {
            this.f7175a.stop();
            this.f7175a.release();
        }
        super.onDestroy();
    }
}
