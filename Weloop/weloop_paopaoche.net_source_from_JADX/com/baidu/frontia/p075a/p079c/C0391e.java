package com.baidu.frontia.p075a.p079c;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

/* renamed from: com.baidu.frontia.a.c.e */
class C0391e implements HttpRequestInterceptor {
    final /* synthetic */ C0389c f3646a;

    C0391e(C0389c c0389c) {
        this.f3646a = c0389c;
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        if (!httpRequest.containsHeader("Accept-Encoding")) {
            httpRequest.addHeader("Accept-Encoding", "gzip");
        }
    }
}
