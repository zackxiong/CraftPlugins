package com.baidu.frontia.p075a.p079c;

import com.baidu.frontia.p075a.p079c.C0389c.C0388a;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

/* renamed from: com.baidu.frontia.a.c.f */
class C0392f implements HttpResponseInterceptor {
    final /* synthetic */ C0389c f3647a;

    C0392f(C0389c c0389c) {
        this.f3647a = c0389c;
    }

    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        HttpEntity entity = httpResponse.getEntity();
        if (entity != null) {
            Header contentEncoding = entity.getContentEncoding();
            if (contentEncoding != null) {
                for (HeaderElement name : contentEncoding.getElements()) {
                    if (name.getName().equalsIgnoreCase("gzip")) {
                        httpResponse.setEntity(new C0388a(entity));
                        return;
                    }
                }
            }
        }
    }
}
