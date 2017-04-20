.class Lcom/yf/smart/weloopx/android/ui/c/ac;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/o$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->n(Lcom/yf/smart/weloopx/android/ui/c/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Lcom/yf/smart/weloopx/android/ui/c/l;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/l$a;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/c/l$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/l;Lcom/yf/smart/weloopx/android/ui/c/m;)V

    .line 407
    iput v0, v1, Lcom/yf/smart/weloopx/android/ui/c/l$a;->b:I

    .line 408
    aget-object v2, p1, v0

    iput-object v2, v1, Lcom/yf/smart/weloopx/android/ui/c/l$a;->a:Ljava/lang/String;

    .line 409
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/l;->n(Lcom/yf/smart/weloopx/android/ui/c/l;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/ad;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/ad;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ac;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    .line 417
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->p(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 418
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->m(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 397
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->m(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 423
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 427
    const-string v0, "BaseDialogFragment \u83b7\u5f97\u8868\u76d8\u4fe1\u606f\u8d85\u65f6"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ac;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->m(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 429
    return-void
.end method
