package com.tencent.p099b.p100a;

import android.content.Context;
import com.baidu.location.C0524j;
import com.baidu.location.LocationClientOption;
import com.tencent.p099b.p100a.p101a.C0662d;
import com.tencent.p099b.p100a.p102b.C0683l;
import com.tencent.p099b.p100a.p102b.C0688q;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.tencent.b.a.ae */
final class ae {
    private static volatile long f5105f;
    private C0662d f5106a;
    private C0709u f5107b;
    private boolean f5108c;
    private Context f5109d;
    private long f5110e;

    static {
        f5105f = 0;
    }

    public ae(C0662d c0662d) {
        this.f5107b = null;
        this.f5108c = false;
        this.f5109d = null;
        this.f5110e = System.currentTimeMillis();
        this.f5106a = c0662d;
        this.f5107b = C0708t.m7047a();
        this.f5108c = c0662d.m6869f();
        this.f5109d = c0662d.m6868e();
    }

    private void m6888a(C0671k c0671k) {
        C0700l.m7035b(C0710v.f5344t).m7036a(this.f5106a, c0671k);
    }

    private void m6890b() {
        if (ai.m6913b().f5117a <= 0 || !C0708t.f5302m) {
            m6888a(new ah(this));
            return;
        }
        ai.m6913b().m6927a(this.f5106a, null, this.f5108c, true);
        ai.m6913b().m6926a(-1);
    }

    public final void m6892a() {
        boolean z;
        long l;
        if (C0708t.f5297h > 0) {
            if (this.f5110e > C0710v.f5332h) {
                C0710v.f5331g.clear();
                C0710v.f5332h = this.f5110e + C0708t.f5298i;
                if (C0708t.m7062b()) {
                    C0710v.f5341q.m6935a("clear methodsCalledLimitMap, nextLimitCallClearTime=" + C0710v.f5332h);
                }
            }
            Integer valueOf = Integer.valueOf(this.f5106a.m6865b().m6877a());
            Integer num = (Integer) C0710v.f5331g.get(valueOf);
            if (num != null) {
                C0710v.f5331g.put(valueOf, Integer.valueOf(num.intValue() + 1));
                if (num.intValue() > C0708t.f5297h) {
                    if (C0708t.m7062b()) {
                        C0710v.f5341q.m6941e("event " + this.f5106a.m6870g() + " was discard, cause of called limit, current:" + num + ", limit:" + C0708t.f5297h + ", period:" + C0708t.f5298i + " ms");
                    }
                    z = true;
                    if (z) {
                        if (C0708t.f5303n > 0 && this.f5110e >= f5105f) {
                            C0710v.m7102c(this.f5109d);
                            f5105f = this.f5110e + C0708t.f5304o;
                            if (C0708t.m7062b()) {
                                C0710v.f5341q.m6935a("nextFlushTime=" + f5105f);
                            }
                        }
                        if (C0712x.m7120a(this.f5109d).m7130f()) {
                            ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                            return;
                        }
                        if (C0708t.m7062b()) {
                            C0710v.f5341q.m6935a("sendFailedCount=" + C0710v.f5325a);
                        }
                        if (C0710v.m7097a()) {
                            if (this.f5106a.m6867d() != null && this.f5106a.m6867d().m7114a()) {
                                this.f5107b = C0709u.INSTANT;
                            }
                            if (C0708t.f5299j && C0712x.m7120a(C0710v.f5344t).m7129e()) {
                                this.f5107b = C0709u.INSTANT;
                            }
                            if (C0708t.m7062b()) {
                                C0710v.f5341q.m6935a("strategy=" + this.f5107b.name());
                            }
                            switch (aa.f5099a[this.f5107b.ordinal()]) {
                                case ProGuard.styleable.View_android_focusable /*1*/:
                                    m6890b();
                                case ProGuard.styleable.View_paddingStart /*2*/:
                                    ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                                    if (C0708t.m7062b()) {
                                        C0710v.f5341q.m6935a("PERIOD currTime=" + this.f5110e + ",nextPeriodSendTs=" + C0710v.f5327c + ",difftime=" + (C0710v.f5327c - this.f5110e));
                                    }
                                    if (C0710v.f5327c == 0) {
                                        C0710v.f5327c = C0688q.m7009a(this.f5109d, "last_period_ts");
                                        if (this.f5110e > C0710v.f5327c) {
                                            C0710v.m7104d(this.f5109d);
                                        }
                                        l = this.f5110e + ((long) ((C0708t.m7077l() * 60) * LocationClientOption.MIN_SCAN_SPAN));
                                        if (C0710v.f5327c > l) {
                                            C0710v.f5327c = l;
                                        }
                                        C0696g.m7031a(this.f5109d).m7032a();
                                    }
                                    if (C0708t.m7062b()) {
                                        C0710v.f5341q.m6935a("PERIOD currTime=" + this.f5110e + ",nextPeriodSendTs=" + C0710v.f5327c + ",difftime=" + (C0710v.f5327c - this.f5110e));
                                    }
                                    if (this.f5110e > C0710v.f5327c) {
                                        C0710v.m7104d(this.f5109d);
                                    }
                                case ProGuard.styleable.View_paddingEnd /*3*/:
                                case ProGuard.styleable.View_theme /*4*/:
                                    ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                                case ProGuard.styleable.View_backgroundTint /*5*/:
                                    ai.m6901a(this.f5109d).m6927a(this.f5106a, new af(this), this.f5108c, true);
                                case ProGuard.styleable.View_backgroundTintMode /*6*/:
                                    if (C0712x.m7120a(C0710v.f5344t).m7127c() != 1) {
                                        m6890b();
                                    } else {
                                        ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                                    }
                                case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                                    if (C0683l.m6979e(this.f5109d)) {
                                        m6888a(new ag(this));
                                    }
                                default:
                                    C0710v.f5341q.m6940d("Invalid stat strategy:" + C0708t.m7047a());
                            }
                        }
                        ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                        if (this.f5110e - C0710v.f5326b > C0524j.lk) {
                            C0710v.m7093a(this.f5109d);
                            return;
                        }
                        return;
                    }
                }
            }
            C0710v.f5331g.put(valueOf, Integer.valueOf(1));
        }
        z = false;
        if (z) {
            C0710v.m7102c(this.f5109d);
            f5105f = this.f5110e + C0708t.f5304o;
            if (C0708t.m7062b()) {
                C0710v.f5341q.m6935a("nextFlushTime=" + f5105f);
            }
            if (C0712x.m7120a(this.f5109d).m7130f()) {
                ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                return;
            }
            if (C0708t.m7062b()) {
                C0710v.f5341q.m6935a("sendFailedCount=" + C0710v.f5325a);
            }
            if (C0710v.m7097a()) {
                ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                if (this.f5110e - C0710v.f5326b > C0524j.lk) {
                    C0710v.m7093a(this.f5109d);
                    return;
                }
                return;
            }
            this.f5107b = C0709u.INSTANT;
            this.f5107b = C0709u.INSTANT;
            if (C0708t.m7062b()) {
                C0710v.f5341q.m6935a("strategy=" + this.f5107b.name());
            }
            switch (aa.f5099a[this.f5107b.ordinal()]) {
                case ProGuard.styleable.View_android_focusable /*1*/:
                    m6890b();
                case ProGuard.styleable.View_paddingStart /*2*/:
                    ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                    if (C0708t.m7062b()) {
                        C0710v.f5341q.m6935a("PERIOD currTime=" + this.f5110e + ",nextPeriodSendTs=" + C0710v.f5327c + ",difftime=" + (C0710v.f5327c - this.f5110e));
                    }
                    if (C0710v.f5327c == 0) {
                        C0710v.f5327c = C0688q.m7009a(this.f5109d, "last_period_ts");
                        if (this.f5110e > C0710v.f5327c) {
                            C0710v.m7104d(this.f5109d);
                        }
                        l = this.f5110e + ((long) ((C0708t.m7077l() * 60) * LocationClientOption.MIN_SCAN_SPAN));
                        if (C0710v.f5327c > l) {
                            C0710v.f5327c = l;
                        }
                        C0696g.m7031a(this.f5109d).m7032a();
                    }
                    if (C0708t.m7062b()) {
                        C0710v.f5341q.m6935a("PERIOD currTime=" + this.f5110e + ",nextPeriodSendTs=" + C0710v.f5327c + ",difftime=" + (C0710v.f5327c - this.f5110e));
                    }
                    if (this.f5110e > C0710v.f5327c) {
                        C0710v.m7104d(this.f5109d);
                    }
                case ProGuard.styleable.View_paddingEnd /*3*/:
                case ProGuard.styleable.View_theme /*4*/:
                    ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                case ProGuard.styleable.View_backgroundTint /*5*/:
                    ai.m6901a(this.f5109d).m6927a(this.f5106a, new af(this), this.f5108c, true);
                case ProGuard.styleable.View_backgroundTintMode /*6*/:
                    if (C0712x.m7120a(C0710v.f5344t).m7127c() != 1) {
                        ai.m6901a(this.f5109d).m6927a(this.f5106a, null, this.f5108c, false);
                    } else {
                        m6890b();
                    }
                case ProGuard.styleable.Toolbar_contentInsetRight /*7*/:
                    if (C0683l.m6979e(this.f5109d)) {
                        m6888a(new ag(this));
                    }
                default:
                    C0710v.f5341q.m6940d("Invalid stat strategy:" + C0708t.m7047a());
            }
        }
    }
}
