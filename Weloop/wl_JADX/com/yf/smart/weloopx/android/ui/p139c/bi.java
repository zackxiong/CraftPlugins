package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.yf.smart.weloopx.dist.R;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.bi */
public class bi extends ProGuard {
    public int f8268a;
    public int f8269b;
    public int f8270c;
    public ImageView f8271d;
    public Button f8272e;
    public TextView f8273f;
    public TextView f8274g;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.bi.a */
    public interface ProGuard {
        void m9416a();

        void m9417a(int i);
    }

    public static bi m10279a(int i, int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt("currentImage", i);
        bundle.putInt("currentPosition", i2);
        bundle.putInt("totalPages", i3);
        bi biVar = new bi();
        biVar.setArguments(bundle);
        return biVar;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8268a = getArguments().getInt("currentImage");
        this.f8269b = getArguments().getInt("currentPosition", 0);
        this.f8270c = getArguments().getInt("totalPages", 0);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.one_guide_layout, null);
        this.f8271d = (ImageView) inflate.findViewById(R.id.iv_guide);
        this.f8272e = (Button) inflate.findViewById(R.id.next);
        this.f8273f = (TextView) inflate.findViewById(R.id.currentPage);
        this.f8274g = (TextView) inflate.findViewById(R.id.ingore_guide);
        this.f8273f.setText((this.f8269b + 1) + "/" + this.f8270c);
        this.f8271d.setImageBitmap(bi.m10278a(getActivity(), this.f8268a));
        ProGuard proGuard = (ProGuard) m9823c();
        this.f8272e.setOnClickListener(new bj(this, proGuard));
        this.f8274g.setOnClickListener(new bk(this, proGuard));
        Drawable drawable = getResources().getDrawable(R.drawable.btn_right);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getIntrinsicHeight());
        this.f8274g.setCompoundDrawablesWithIntrinsicBounds(null, null, drawable, null);
        if (this.f8269b + 1 == this.f8270c) {
            this.f8272e.setText(getString(R.string.finished));
            this.f8272e.setVisibility(0);
        }
        return inflate;
    }

    public static Bitmap m10278a(Context context, int i) {
        Options options = new Options();
        options.inPreferredConfig = Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = 2;
        return BitmapFactory.decodeStream(context.getResources().openRawResource(i), null, options);
    }
}
