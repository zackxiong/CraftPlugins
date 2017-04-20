.class public Lcom/yf/smart/weloopx/c/s;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/c/s$a;,
        Lcom/yf/smart/weloopx/c/s$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yf/gattlib/client/b/bo;

.field private b:[B

.field private c:[B

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "DeviceStateHelper"

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/s;->d:Ljava/lang/String;

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/s;)Lcom/yf/gattlib/client/b/bo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->a:Lcom/yf/gattlib/client/b/bo;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/c/s;)[B
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/c/s;)[B
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->c:[B

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    .line 93
    const-string v1, "wake up pattern"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    .line 95
    invoke-static {v1}, Lcom/yf/gattlib/client/b/bo;->a(B)Lcom/yf/gattlib/client/b/bo;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/c/s;->a:Lcom/yf/gattlib/client/b/bo;

    .line 96
    const-string v1, "anti disturb time"

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    .line 97
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    .line 100
    :cond_0
    return-void
.end method

.method public a(B)V
    .locals 1

    .prologue
    .line 103
    invoke-static {p1}, Lcom/yf/gattlib/client/b/bo;->a(B)Lcom/yf/gattlib/client/b/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/s;->a:Lcom/yf/gattlib/client/b/bo;

    .line 104
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/c/s$a;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/d;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/yf/gattlib/client/d;->a([BI)Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v2, Lcom/yf/gattlib/client/b/ak;

    new-instance v3, Lcom/yf/smart/weloopx/c/u;

    invoke-direct {v3, p0, p1}, Lcom/yf/smart/weloopx/c/u;-><init>(Lcom/yf/smart/weloopx/c/s;Lcom/yf/smart/weloopx/c/s$a;)V

    invoke-direct {v2, v3, v0, v1}, Lcom/yf/gattlib/client/b/ak;-><init>(Lcom/yf/gattlib/client/b/ak$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/yf/gattlib/client/b/ak;->f()Lcom/yf/gattlib/client/b/e;

    .line 200
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/c/s$b;)V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/yf/gattlib/client/b/at;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/s;->a:Lcom/yf/gattlib/client/b/bo;

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/at;-><init>(Lcom/yf/gattlib/client/b/bo;)V

    new-instance v1, Lcom/yf/smart/weloopx/c/t;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/c/t;-><init>(Lcom/yf/smart/weloopx/c/s;Lcom/yf/smart/weloopx/c/s$b;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/at;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 158
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->a:Lcom/yf/gattlib/client/b/bo;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/client/b/bo;->a(Z)V

    .line 52
    return-void
.end method

.method public a(Z[B)V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    .line 73
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/s;->c:[B

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    aget-byte v1, p2, v2

    aput-byte v1, v0, v2

    .line 76
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    aget-byte v1, p2, v3

    aput-byte v1, v0, v3

    .line 77
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    aget-byte v1, p2, v4

    aput-byte v1, v0, v4

    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    aget-byte v1, p2, v5

    aput-byte v1, v0, v5

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->c:[B

    aget-byte v1, p2, v2

    aput-byte v1, v0, v2

    .line 86
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->c:[B

    aget-byte v1, p2, v3

    aput-byte v1, v0, v3

    .line 87
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->c:[B

    aget-byte v1, p2, v4

    aput-byte v1, v0, v4

    .line 88
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->c:[B

    aget-byte v1, p2, v5

    aput-byte v1, v0, v5

    .line 89
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    aput-byte v2, v0, v2

    .line 81
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    aput-byte v2, v0, v3

    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    aput-byte v2, v0, v4

    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/s;->b:[B

    aput-byte v2, v0, v5

    goto :goto_0
.end method
