.class public Lcom/b/a/a$a;
.super Lcom/b/a/e/c;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/b/a/e/c",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/b/a/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/a/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/b/a/a/c;

.field private g:Lcom/b/a/a/a/b;


# direct methods
.method public constructor <init>(Lcom/b/a/a;Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/b/a/a/c;",
            "Lcom/b/a/a/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 411
    iput-object p1, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-direct {p0}, Lcom/b/a/e/c;-><init>()V

    .line 409
    sget-object v0, Lcom/b/a/a/a/b;->b:Lcom/b/a/a/a/b;

    iput-object v0, p0, Lcom/b/a/a$a;->g:Lcom/b/a/a/a/b;

    .line 412
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "args may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/b/a/a$a;->d:Ljava/lang/ref/WeakReference;

    .line 417
    iput-object p5, p0, Lcom/b/a/a$a;->e:Lcom/b/a/a/a/a;

    .line 418
    iput-object p3, p0, Lcom/b/a/a$a;->c:Ljava/lang/String;

    .line 419
    iput-object p4, p0, Lcom/b/a/a$a;->f:Lcom/b/a/a/c;

    .line 420
    return-void
.end method

.method static synthetic a(Lcom/b/a/a$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/b/a/a$a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 425
    iget-object v1, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-static {v1}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 426
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-static {v2}, Lcom/b/a/a;->b(Lcom/b/a/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/b/a/a$a;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 428
    :try_start_1
    iget-object v2, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-static {v2}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 429
    iget-object v2, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-static {v2}, Lcom/b/a/a;->c(Lcom/b/a/a;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    :try_start_2
    monitor-exit v1

    .line 451
    :cond_1
    :goto_1
    return-object v0

    .line 435
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    invoke-virtual {p0}, Lcom/b/a/a$a;->d()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/b/a/a$a;->a_()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 441
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/b/a/a$a;->f([Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->d(Lcom/b/a/a;)Lcom/b/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/d;->f()Lcom/b/a/a/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/a$a;->f:Lcom/b/a/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/b/b;->b(Ljava/lang/String;Lcom/b/a/a/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    :cond_3
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a$a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/b/a/a$a;->a_()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->d(Lcom/b/a/a;)Lcom/b/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/d;->f()Lcom/b/a/a/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/a$a;->f:Lcom/b/a/a/c;

    invoke-virtual {v0, v1, v2, p0}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    sget-object v1, Lcom/b/a/a/a/b;->c:Lcom/b/a/a/a/b;

    iput-object v1, p0, Lcom/b/a/a$a;->g:Lcom/b/a/a/a/b;

    goto :goto_1

    .line 435
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 432
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 455
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/b/a/a$a;->f([Ljava/lang/Object;)V

    .line 456
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/b/a/a$a;->a_()Landroid/view/View;

    move-result-object v1

    .line 484
    if-eqz v1, :cond_0

    .line 485
    if-eqz p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/b/a/a$a;->e:Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/a$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/b/a/a$a;->f:Lcom/b/a/a/c;

    iget-object v5, p0, Lcom/b/a/a$a;->g:Lcom/b/a/a/a/b;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/a/a/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/b/a/a/c;Lcom/b/a/a/a/b;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/b/a/a$a;->e:Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/a$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/a/a$a;->f:Lcom/b/a/a/c;

    invoke-virtual {v3}, Lcom/b/a/a/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/a/a/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 403
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/b/a/a$a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a_()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/b/a/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 510
    iget-object v1, p0, Lcom/b/a/a$a;->e:Lcom/b/a/a/a/a;

    invoke-static {v0, v1}, Lcom/b/a/a;->a(Landroid/view/View;Lcom/b/a/a/a/a;)Lcom/b/a/a$a;

    move-result-object v1

    .line 512
    if-ne p0, v1, :cond_0

    .line 516
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a$a;->a:Lcom/b/a/a;

    invoke-static {v0}, Lcom/b/a/a;->a(Lcom/b/a/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 505
    monitor-exit v1

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 403
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/b/a/a$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 463
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/a$a;->a_()Landroid/view/View;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_0

    .line 468
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/a$a;->e:Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/a$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/a/a$a;->f:Lcom/b/a/a/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/b/a/a/a/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;)V

    goto :goto_0

    .line 473
    :pswitch_1
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 474
    iget-object v0, p0, Lcom/b/a/a$a;->e:Lcom/b/a/a/a/a;

    iget-object v2, p0, Lcom/b/a/a$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/a/a$a;->f:Lcom/b/a/a/c;

    const/4 v4, 0x1

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x2

    aget-object v6, p1, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/b/a/a/a/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;JJ)V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected synthetic c([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lcom/b/a/a$a;->a([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
