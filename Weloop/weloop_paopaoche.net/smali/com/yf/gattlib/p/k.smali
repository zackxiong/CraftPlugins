.class public final Lcom/yf/gattlib/p/k;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(J)V
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long p0, v0, v2

    .line 24
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 25
    return-void

    .line 19
    :catch_0
    move-exception v2

    goto :goto_0
.end method
