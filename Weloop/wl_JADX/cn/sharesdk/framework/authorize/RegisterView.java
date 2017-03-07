package cn.sharesdk.framework.authorize;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.framework.utils.C0064R;
import cn.sharesdk.framework.utils.C0071e;

public class RegisterView extends ResizeLayout {
    private TitleLayout f1928a;
    private RelativeLayout f1929b;
    private WebView f1930c;

    public RegisterView(Context context) {
        super(context);
        m2913a(context);
    }

    public RegisterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m2913a(context);
    }

    private void m2913a(Context context) {
        setBackgroundColor(-1);
        setOrientation(1);
        int b = m2914b(context);
        this.f1928a = new TitleLayout(context);
        try {
            this.f1928a.setBackgroundResource(C0064R.getBitmapRes(context, "ssdk_auth_title_back"));
        } catch (Throwable th) {
            C0071e.m3269c(th);
        }
        this.f1928a.getBtnRight().setVisibility(8);
        this.f1928a.getTvTitle().setText(C0064R.getStringRes(getContext(), "weibo_oauth_regiseter"));
        addView(this.f1928a);
        View imageView = new ImageView(context);
        imageView.setImageResource(C0064R.getBitmapRes(context, "ssdk_logo"));
        imageView.setScaleType(ScaleType.CENTER_INSIDE);
        imageView.setPadding(0, 0, C0064R.dipToPx(context, 10), 0);
        imageView.setLayoutParams(new LayoutParams(-2, -1));
        imageView.setOnClickListener(new C0012c(this));
        this.f1928a.addView(imageView);
        this.f1929b = new RelativeLayout(context);
        ViewGroup.LayoutParams layoutParams = new LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        this.f1929b.setLayoutParams(layoutParams);
        addView(this.f1929b);
        imageView = new LinearLayout(context);
        imageView.setOrientation(1);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f1929b.addView(imageView);
        View textView = new TextView(context);
        textView.setLayoutParams(new LayoutParams(-1, 5));
        textView.setBackgroundColor(-12929302);
        imageView.addView(textView);
        textView.setVisibility(8);
        this.f1930c = new WebView(context);
        ViewGroup.LayoutParams layoutParams2 = new LayoutParams(-1, -2);
        layoutParams2.weight = 1.0f;
        this.f1930c.setLayoutParams(layoutParams2);
        this.f1930c.setWebChromeClient(new C0013d(this, textView, b));
        imageView.addView(this.f1930c);
        this.f1930c.requestFocus();
    }

    private int m2914b(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (!(context instanceof Activity)) {
            return 0;
        }
        WindowManager windowManager = ((Activity) context).getWindowManager();
        if (windowManager == null) {
            return 0;
        }
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public View m2915a() {
        return this.f1928a.getBtnBack();
    }

    public void m2916a(boolean z) {
        this.f1928a.setVisibility(z ? 8 : 0);
    }

    public WebView m2917b() {
        return this.f1930c;
    }

    public TitleLayout m2918c() {
        return this.f1928a;
    }

    public RelativeLayout m2919d() {
        return this.f1929b;
    }
}
