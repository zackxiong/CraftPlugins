package cn.sharesdk.framework;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;

/* renamed from: cn.sharesdk.framework.r */
class C0046r extends TextView {
    final /* synthetic */ ImageView f2007a;
    final /* synthetic */ TitleLayout f2008b;

    C0046r(TitleLayout titleLayout, Context context, ImageView imageView) {
        this.f2008b = titleLayout;
        this.f2007a = imageView;
        super(context);
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        this.f2007a.setVisibility(i);
    }
}
