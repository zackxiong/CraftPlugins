.class public Lcom/yf/smart/weloopx/g/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/g/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yf/gattlib/client/d;

.field private c:Landroid/content/Context;

.field private d:Lcom/yf/smart/weloopx/data/a;

.field private e:Lcom/yf/smart/weloopx/g/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yf/smart/weloopx/g/a$a;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "AlarmZeroClockUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/g/a;->a:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/g/a;->b:Lcom/yf/gattlib/client/d;

    .line 31
    iput-object p1, p0, Lcom/yf/smart/weloopx/g/a;->c:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/yf/smart/weloopx/data/a;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/data/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/g/a;->d:Lcom/yf/smart/weloopx/data/a;

    .line 33
    iput-object p2, p0, Lcom/yf/smart/weloopx/g/a;->e:Lcom/yf/smart/weloopx/g/a$a;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/g/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/g/a;)Lcom/yf/gattlib/client/d;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/a;->b:Lcom/yf/gattlib/client/d;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/g/a;)Lcom/yf/smart/weloopx/data/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/a;->d:Lcom/yf/smart/weloopx/data/a;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/g/a;)Lcom/yf/smart/weloopx/g/a$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/a;->e:Lcom/yf/smart/weloopx/g/a$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 37
    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 38
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 39
    new-instance v1, Lcom/yf/gattlib/client/b/aj;

    new-instance v2, Lcom/yf/smart/weloopx/g/b;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/g/b;-><init>(Lcom/yf/smart/weloopx/g/a;)V

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lcom/yf/gattlib/client/b/aj;-><init>(Lcom/yf/gattlib/client/b/aj$a;[BI)V

    invoke-virtual {v1}, Lcom/yf/gattlib/client/b/aj;->f()Lcom/yf/gattlib/client/b/e;

    .line 69
    return-void
.end method
