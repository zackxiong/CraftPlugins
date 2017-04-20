.class public abstract Lcom/yf/gattlib/client/b/a;
.super Lcom/yf/gattlib/client/b/ad;
.source "ProGuard"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 9
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ad;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/b/a;->a:I

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/b/a;->b:I

    .line 13
    iput v1, p0, Lcom/yf/gattlib/client/b/a;->c:I

    .line 15
    iput v1, p0, Lcom/yf/gattlib/client/b/a;->d:I

    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0x3

    .line 53
    if-ne v0, v2, :cond_1

    .line 55
    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/client/b/a;->a(II)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    if-nez v0, :cond_2

    .line 60
    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/client/b/a;->a(II)V

    .line 63
    :cond_2
    shr-int/lit8 v0, p1, 0x2

    and-int/lit8 v0, v0, 0x3

    .line 65
    if-nez v0, :cond_3

    .line 67
    const/16 v1, 0x3eb

    invoke-virtual {p0, p1, v1}, Lcom/yf/gattlib/client/b/a;->a(II)V

    .line 69
    :cond_3
    if-ne v0, v2, :cond_0

    .line 71
    and-int/lit8 v0, p1, 0x3

    .line 73
    if-ne v0, v2, :cond_4

    const/16 v0, 0x3ed

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/client/b/a;->a(II)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x3ec

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(II)V
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraControlTransaction \u62cd\u7167\u4e8b\u52a1\u7684 onGetValue \u7684value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u901a\u9053 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, v0}, Lcom/yf/gattlib/client/b/a;->b(I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/a;->b([B)[B

    .line 32
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/a;->i()V

    .line 33
    return-void
.end method

.method public a()[I
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x59

    aput v2, v0, v1

    return-object v0
.end method
