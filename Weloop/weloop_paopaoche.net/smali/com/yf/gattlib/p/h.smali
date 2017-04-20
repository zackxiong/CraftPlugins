.class public Lcom/yf/gattlib/p/h;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I

.field private c:[Z


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/yf/gattlib/p/h;->a:I

    .line 25
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/yf/gattlib/p/h;->b:I

    .line 26
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/p/h;->a(B)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/p/h;->c:[Z

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/yf/gattlib/p/h;->a:I

    return v0
.end method

.method public a(B)[Z
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x0

    .line 31
    const-string v0, ""

    .line 32
    new-array v3, v7, [Z

    move v1, v2

    .line 34
    :goto_0
    if-ge v1, v7, :cond_1

    .line 36
    shr-int/lit8 v4, p1, 0x1

    int-to-byte v4, v4

    .line 37
    shl-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    .line 38
    if-ne v4, p1, :cond_0

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    aput-boolean v2, v3, v1

    .line 45
    :goto_1
    shr-int/lit8 v4, v4, 0x1

    int-to-byte p1, v4

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    const/4 v5, 0x1

    aput-boolean v5, v3, v1

    goto :goto_1

    .line 47
    :cond_1
    return-object v3
.end method

.method public b()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/yf/gattlib/p/h;->b:I

    return v0
.end method

.method public c()[Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yf/gattlib/p/h;->c:[Z

    return-object v0
.end method
