package com.baidu.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import com.umeng.update.util.ProGuard;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class BitmapDescriptor {
    Bitmap f4265a;
    private Bundle f4266b;

    BitmapDescriptor(Bitmap bitmap) {
        if (bitmap != null) {
            this.f4265a = m6202a(bitmap, bitmap.getWidth(), bitmap.getHeight());
        }
    }

    private Bitmap m6202a(Bitmap bitmap, int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    byte[] m6203a() {
        Buffer allocate = ByteBuffer.allocate((this.f4265a.getWidth() * this.f4265a.getHeight()) * 4);
        this.f4265a.copyPixelsToBuffer(allocate);
        return allocate.array();
    }

    Bundle m6204b() {
        if (this.f4265a == null) {
            throw new IllegalStateException("the bitmap has been recycled! you can not use it again");
        }
        if (this.f4266b == null) {
            Bundle bundle = new Bundle();
            bundle.putInt("image_width", this.f4265a.getWidth());
            bundle.putInt("image_height", this.f4265a.getHeight());
            byte[] a = m6203a();
            bundle.putByteArray("image_data", a);
            MessageDigest messageDigest = null;
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            messageDigest.update(a, 0, a.length);
            byte[] digest = messageDigest.digest();
            StringBuilder stringBuilder = new StringBuilder("");
            for (byte b : digest) {
                stringBuilder.append(Integer.toString((b & 255) + ProGuard.f5669b, 16).substring(1));
            }
            bundle.putString("image_hashcode", stringBuilder.toString());
            this.f4266b = bundle;
        }
        return this.f4266b;
    }

    public void recycle() {
        if (this.f4265a != null && !this.f4265a.isRecycled()) {
            this.f4265a.recycle();
            this.f4265a = null;
        }
    }
}
