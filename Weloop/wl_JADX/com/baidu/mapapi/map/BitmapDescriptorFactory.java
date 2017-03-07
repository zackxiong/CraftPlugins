package com.baidu.mapapi.map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.view.View;
import android.view.View.MeasureSpec;
import com.baidu.mapapi.C0556a;
import com.baidu.platform.comapi.p088c.C0607c;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class BitmapDescriptorFactory {
    public static BitmapDescriptor fromAsset(String str) {
        Context e = C0556a.m6153a().m6162e();
        if (e == null) {
            return null;
        }
        try {
            InputStream open = e.getAssets().open(str);
            Bitmap decodeStream = BitmapFactory.decodeStream(open);
            open.close();
            BitmapDescriptor fromBitmap = fromBitmap(decodeStream);
            decodeStream.recycle();
            return fromBitmap;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static BitmapDescriptor fromAssetWithDpi(String str) {
        Context e = C0556a.m6153a().m6162e();
        if (e == null) {
            return null;
        }
        try {
            Bitmap createBitmap;
            BitmapDescriptor fromBitmap;
            InputStream open = e.getAssets().open(str);
            Bitmap decodeStream = BitmapFactory.decodeStream(open);
            int j = C0607c.m6489j();
            Matrix matrix;
            if (j > 480) {
                matrix = new Matrix();
                matrix.postScale(2.0f, 2.0f);
                createBitmap = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true);
                open.close();
                fromBitmap = fromBitmap(createBitmap);
            } else if (j <= 320 || j > 480) {
                open.close();
                fromBitmap = fromBitmap(decodeStream);
                createBitmap = null;
            } else {
                matrix = new Matrix();
                matrix.postScale(1.5f, 1.5f);
                createBitmap = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true);
                open.close();
                fromBitmap = fromBitmap(createBitmap);
            }
            decodeStream.recycle();
            if (createBitmap != null) {
                createBitmap.recycle();
            }
            return fromBitmap;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static BitmapDescriptor fromBitmap(Bitmap bitmap) {
        return bitmap == null ? null : new BitmapDescriptor(bitmap);
    }

    public static BitmapDescriptor fromFile(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        try {
            Context e = C0556a.m6153a().m6162e();
            if (e != null) {
                InputStream openFileInput = e.openFileInput(str);
                Bitmap decodeStream = BitmapFactory.decodeStream(openFileInput);
                openFileInput.close();
                if (decodeStream != null) {
                    BitmapDescriptor fromBitmap = fromBitmap(decodeStream);
                    decodeStream.recycle();
                    return fromBitmap;
                }
            }
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        return null;
    }

    public static BitmapDescriptor fromPath(String str) {
        Bitmap decodeFile = BitmapFactory.decodeFile(str);
        if (decodeFile == null || decodeFile == null) {
            return null;
        }
        BitmapDescriptor fromBitmap = fromBitmap(decodeFile);
        decodeFile.recycle();
        return fromBitmap;
    }

    public static BitmapDescriptor fromResource(int i) {
        Context e = C0556a.m6153a().m6162e();
        if (e == null) {
            return null;
        }
        Bitmap decodeResource = BitmapFactory.decodeResource(e.getResources(), i);
        if (decodeResource == null) {
            return null;
        }
        BitmapDescriptor fromBitmap = fromBitmap(decodeResource);
        decodeResource.recycle();
        return fromBitmap;
    }

    public static BitmapDescriptor fromView(View view) {
        view.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.buildDrawingCache();
        Bitmap drawingCache = view.getDrawingCache();
        BitmapDescriptor fromBitmap = fromBitmap(drawingCache);
        if (drawingCache != null) {
            drawingCache.recycle();
        }
        return fromBitmap;
    }
}
