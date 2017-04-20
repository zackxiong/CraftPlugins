.class Lcom/yf/gattlib/client/dfu/e;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/dfu/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 458
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, p0}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 459
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0, v6}, Lcom/yf/gattlib/client/dfu/b;->f(Lcom/yf/gattlib/client/dfu/b;Z)Z

    .line 460
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/gattlib/client/dfu/b;->b(Lcom/yf/gattlib/client/dfu/b;J)J

    .line 461
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->p(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/client/dfu/f;->c()V

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->k(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->q(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v2}, Lcom/yf/gattlib/client/dfu/b;->q(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v2}, Lcom/yf/gattlib/client/dfu/b;->r(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    const-wide/16 v2, 0x20

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 473
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->p(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    const-string v1, "File transfer failed"

    invoke-interface {v0, v1, v6}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    .line 500
    :cond_1
    :goto_2
    return-void

    .line 469
    :catch_0
    move-exception v2

    .line 470
    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 478
    :cond_2
    const/16 v0, 0x19

    .line 479
    :goto_3
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v1}, Lcom/yf/gattlib/client/dfu/b;->k(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 481
    const-wide/16 v2, 0x7

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :goto_4
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v1}, Lcom/yf/gattlib/client/dfu/b;->q(Lcom/yf/gattlib/client/dfu/b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    :try_start_2
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v1}, Lcom/yf/gattlib/client/dfu/b;->s(Lcom/yf/gattlib/client/dfu/b;)V
    :try_end_2
    .catch Lcom/yf/gattlib/e/h; {:try_start_2 .. :try_end_2} :catch_2

    .line 490
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 482
    :catch_1
    move-exception v1

    .line 483
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 491
    :catch_2
    move-exception v0

    .line 492
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    .line 493
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    invoke-static {v0}, Lcom/yf/gattlib/client/dfu/b;->p(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    const-string v1, "Error on reading file"

    invoke-interface {v0, v1, v6}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/dfu/b;->f(Lcom/yf/gattlib/client/dfu/b;Z)Z

    goto/16 :goto_0

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/e;->a:Lcom/yf/gattlib/client/dfu/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_2
.end method
