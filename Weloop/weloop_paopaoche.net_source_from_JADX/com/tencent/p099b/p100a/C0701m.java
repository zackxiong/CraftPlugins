package com.tencent.p099b.p100a;

import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;

/* renamed from: com.tencent.b.a.m */
final class C0701m extends DefaultConnectionKeepAliveStrategy {
    final /* synthetic */ C0700l f5255a;

    C0701m(C0700l c0700l) {
        this.f5255a = c0700l;
    }

    public final long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
        long keepAliveDuration = super.getKeepAliveDuration(httpResponse, httpContext);
        return keepAliveDuration == -1 ? 30000 : keepAliveDuration;
    }
}
