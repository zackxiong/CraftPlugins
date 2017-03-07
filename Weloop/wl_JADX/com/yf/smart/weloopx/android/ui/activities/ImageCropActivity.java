package com.yf.smart.weloopx.android.ui.activities;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.baidu.location.LocationClientOption;
import com.p038b.p039a.p056g.p057a.ProGuard;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.view.CropImageView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

/* compiled from: ProGuard */
public class ImageCropActivity extends Activity implements OnClickListener {
    @ProGuard(a = 2131558781)
    Button f7483a;
    @ProGuard(a = 2131558782)
    Button f7484b;
    @ProGuard(a = 2131558766)
    TextView f7485c;
    private final String f7486d;
    private CropImageView f7487e;
    private Bitmap f7488f;
    private com.yf.smart.weloopx.view.ProGuard f7489g;
    private String f7490h;

    public ImageCropActivity() {
        this.f7486d = "ImageCropActivity";
        this.f7490h = null;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.crop_view);
        com.p038b.p039a.ProGuard.m4086a(this);
        m9437a();
        m9438b();
    }

    private void m9437a() {
        String stringExtra = getIntent().getStringExtra("path");
        com.yf.gattlib.p117p.ProGuard.m8292a("ImageCropActivity ImageCropActivity\u7684path = " + stringExtra);
        Options options = new Options();
        options.inJustDecodeBounds = true;
        this.f7488f = BitmapFactory.decodeFile(stringExtra, options);
        options.inSampleSize = m9436a(options, LocationClientOption.MIN_SCAN_SPAN, LocationClientOption.MIN_SCAN_SPAN);
        options.inJustDecodeBounds = false;
        this.f7488f = BitmapFactory.decodeFile(stringExtra, options);
        com.yf.gattlib.p117p.ProGuard.m8292a("ImageCropActivity \u62ff\u5230\u7684\u56fe\u7684\u5927\u5c0f\u4e3a = " + this.f7488f.getByteCount());
        this.f7487e = (CropImageView) findViewById(R.id.image);
        this.f7487e.setImageBitmap(this.f7488f);
        this.f7487e.m11405a(this.f7488f, true);
        this.f7489g = new com.yf.smart.weloopx.view.ProGuard(this, this.f7487e);
        this.f7489g.m11430a(this.f7488f);
    }

    private void m9438b() {
        this.f7485c.setText(R.string.edit_photo);
        this.f7484b.setText(R.string.save);
        this.f7483a.setOnClickListener(this);
        this.f7484b.setOnClickListener(this);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.at_btn_left:
                this.f7489g.m11429a();
                finish();
            case R.id.at_btn_right:
                m9439c();
            default:
        }
    }

    private void m9439c() {
        com.yf.gattlib.p117p.ProGuard.m8292a("ImageCropActivity \u7f16\u8f91\u5b8c\u6210\u51c6\u5907\u4fdd\u5b58");
        this.f7490h = "myphoto";
        String a = m9440a(this.f7489g.m11431b(this.f7488f), this.f7490h);
        com.yf.gattlib.p117p.ProGuard.m8292a("ImageCropActivity \u7f16\u8f91\u5b8c\u6210\u4fdd\u5b58\u5b8c\u6210");
        Intent intent = new Intent();
        intent.putExtra("path", a);
        setResult(-1, intent);
        finish();
    }

    public String m9440a(Bitmap bitmap, String str) {
        String str2;
        Exception e;
        File file = new File("mnt/sdcard/picture/");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            str2 = file.getPath() + "/" + str;
            try {
                OutputStream fileOutputStream = new FileOutputStream(str2);
                bitmap.compress(CompressFormat.JPEG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                com.yf.gattlib.p117p.ProGuard.m8292a("ImageCropActivity saveBmp is here");
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return str2;
            }
        } catch (Exception e3) {
            Exception exception = e3;
            str2 = null;
            e = exception;
            e.printStackTrace();
            return str2;
        }
        return str2;
    }

    public static int m9436a(Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        i3 = Math.round(((float) i3) / ((float) i2));
        i4 = Math.round(((float) i4) / ((float) i));
        return i3 < i4 ? i3 : i4;
    }
}
