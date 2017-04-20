.class public abstract Lcom/yf/gattlib/client/b/bn;
.super Lcom/yf/gattlib/client/b/ad;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ad;-><init>()V

    .line 10
    const-string v0, "VideoRecordTransaction"

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bn;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 19
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/gattlib/client/b/bn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5f55\u50cf\u4e8b\u52a1\u7684value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/bn;->b([B)[B

    .line 22
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bn;->c()V

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bn;->i()V

    .line 28
    return-void

    .line 24
    :cond_1
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bn;->e()V

    goto :goto_0
.end method

.method public a()[I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x5a
        0x5b
    .end array-data
.end method

.method protected abstract c()V
.end method

.method protected abstract e()V
.end method
