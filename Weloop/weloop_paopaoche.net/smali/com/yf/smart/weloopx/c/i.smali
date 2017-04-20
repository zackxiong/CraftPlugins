.class Lcom/yf/smart/weloopx/c/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/c;

.field private b:I


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/c;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/i;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/smart/weloopx/c/i;->b:I

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/i;)I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/yf/smart/weloopx/c/i;->b:I

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/i;I)I
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/yf/smart/weloopx/c/i;->b:I

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/c/i;)I
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/yf/smart/weloopx/c/i;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yf/smart/weloopx/c/i;->b:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 251
    const-string v0, "CustomInitializer test, Runnable mGetDeviceState"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 252
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v1

    .line 255
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v2

    .line 256
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v0

    .line 257
    new-instance v3, Lcom/yf/gattlib/client/b/m;

    new-instance v4, Lcom/yf/smart/weloopx/c/j;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/c/j;-><init>(Lcom/yf/smart/weloopx/c/i;)V

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/yf/gattlib/client/b/m;-><init>(IIILcom/yf/gattlib/client/b/m$a;)V

    invoke-virtual {v3}, Lcom/yf/gattlib/client/b/m;->g()Lcom/yf/gattlib/client/b/e;

    .line 290
    return-void
.end method
