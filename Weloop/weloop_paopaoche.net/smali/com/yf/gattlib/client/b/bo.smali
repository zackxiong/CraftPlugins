.class public Lcom/yf/gattlib/client/b/bo;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-byte p1, p0, Lcom/yf/gattlib/client/b/bo;->a:B

    .line 19
    return-void
.end method

.method public static a(B)Lcom/yf/gattlib/client/b/bo;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yf/gattlib/client/b/bo;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/b/bo;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public a()B
    .locals 1

    .prologue
    .line 50
    iget-byte v0, p0, Lcom/yf/gattlib/client/b/bo;->a:B

    return v0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/yf/gattlib/client/b/bo;->a:B

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/yf/gattlib/client/b/bo;->a:B

    goto :goto_0
.end method
