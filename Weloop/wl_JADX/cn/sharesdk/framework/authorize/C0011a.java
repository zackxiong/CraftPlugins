package cn.sharesdk.framework.authorize;

import android.content.Context;
import android.content.Intent;
import cn.sharesdk.framework.FakeActivity;

/* renamed from: cn.sharesdk.framework.authorize.a */
public class C0011a extends FakeActivity {
    protected AuthorizeHelper f1931a;

    public AuthorizeHelper m2920a() {
        return this.f1931a;
    }

    public void m2921a(AuthorizeHelper authorizeHelper) {
        this.f1931a = authorizeHelper;
        super.show(authorizeHelper.getPlatform().getContext(), null);
    }

    public void show(Context context, Intent intent) {
        throw new RuntimeException("This method is deprecated, use show(AuthorizeHelper, Intent) instead");
    }
}
