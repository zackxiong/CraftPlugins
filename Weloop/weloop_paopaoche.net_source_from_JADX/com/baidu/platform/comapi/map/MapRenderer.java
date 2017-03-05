package com.baidu.platform.comapi.map;

import android.opengl.GLSurfaceView.Renderer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class MapRenderer implements Renderer {
    private static final String f4752d;
    public int f4753a;
    public int f4754b;
    public int f4755c;
    private int f4756e;
    private C0613a f4757f;
    private final C0620f f4758g;

    /* renamed from: com.baidu.platform.comapi.map.MapRenderer.a */
    public interface C0613a {
        void m6498u();
    }

    static {
        f4752d = MapRenderer.class.getSimpleName();
    }

    public MapRenderer(C0620f c0620f, C0613a c0613a) {
        this.f4757f = c0613a;
        this.f4758g = c0620f;
    }

    private void m6499a(GL10 gl10) {
        gl10.glClear(16640);
        gl10.glClearColor(0.85f, 0.8f, 0.8f, 0.0f);
    }

    private boolean m6500a() {
        return this.f4756e != 0;
    }

    private static native void nativeInit(int i);

    private static native int nativeRender(int i);

    private static native void nativeResize(int i, int i2, int i3);

    public void m6501a(int i) {
        this.f4756e = i;
    }

    public void onDrawFrame(GL10 gl10) {
        if (m6500a()) {
            if (this.f4755c <= 1) {
                nativeResize(this.f4756e, this.f4753a, this.f4754b);
                this.f4755c++;
            }
            this.f4757f.m6498u();
            int nativeRender = nativeRender(this.f4756e);
            for (C0565h c0565h : this.f4758g.f4805c) {
                C0639z q = this.f4758g.m6578q();
                gl10.glPushMatrix();
                gl10.glRotatef((float) q.f4884c, 1.0f, 0.0f, 0.0f);
                gl10.glRotatef((float) q.f4883b, 0.0f, 0.0f, 1.0f);
                c0565h.m6290a(gl10, q);
                gl10.glPopMatrix();
                gl10.glColor4f(0.96f, 0.95f, 0.94f, 1.0f);
            }
            C0620f c0620f = this.f4758g;
            if (nativeRender == 1) {
                c0620f.requestRender();
                return;
            } else if (this.f4758g.m6552b()) {
                if (c0620f.getRenderMode() != 1) {
                    c0620f.setRenderMode(1);
                    return;
                }
                return;
            } else if (c0620f.getRenderMode() != 0) {
                c0620f.setRenderMode(0);
                return;
            } else {
                return;
            }
        }
        m6499a(gl10);
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        if (this.f4756e != 0) {
            nativeResize(this.f4756e, i, i2);
        }
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        nativeInit(this.f4756e);
        if (m6500a()) {
            this.f4757f.m6498u();
        }
    }
}
