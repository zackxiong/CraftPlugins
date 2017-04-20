.class Lcom/yf/gattlib/f/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/f/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/f/b;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/yf/gattlib/f/k;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 456
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, p1, v1

    .line 457
    if-eqz v3, :cond_0

    .line 461
    :goto_1
    return v0

    .line 456
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 442
    const-string v0, " test, Runnable SyncNotificationFilterOutList"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/yf/gattlib/f/k;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/f/k;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->i()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/gattlib/f/k;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, " test, SyncNotificationFilterOutList, same"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/yf/gattlib/f/k;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->g(Lcom/yf/gattlib/f/b;)V

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v0, Lcom/yf/gattlib/client/b/ay;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/ay;-><init>()V

    new-instance v1, Lcom/yf/gattlib/f/b$a;

    iget-object v2, p0, Lcom/yf/gattlib/f/k;->a:Lcom/yf/gattlib/f/b;

    const-string v3, "sync notification filter list"

    invoke-direct {v1, v2, v3}, Lcom/yf/gattlib/f/b$a;-><init>(Lcom/yf/gattlib/f/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/ay;->c(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    goto :goto_0
.end method
