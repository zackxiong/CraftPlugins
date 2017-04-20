.class public Lcom/yf/smart/weloopx/c/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/f/a;


# instance fields
.field a:Lcom/yf/smart/weloopx/data/WeatherResult;

.field private b:Lcom/yf/gattlib/a/b;

.field private c:Lcom/yf/gattlib/f/b;

.field private d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;

.field private g:I

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    .line 106
    new-instance v0, Lcom/yf/smart/weloopx/c/d;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/c/d;-><init>(Lcom/yf/smart/weloopx/c/c;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->f:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Lcom/yf/smart/weloopx/c/e;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/c/e;-><init>(Lcom/yf/smart/weloopx/c/c;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->h:Ljava/lang/Runnable;

    .line 191
    new-instance v0, Lcom/yf/smart/weloopx/c/g;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/c/g;-><init>(Lcom/yf/smart/weloopx/c/c;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->i:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Lcom/yf/smart/weloopx/c/i;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/c/i;-><init>(Lcom/yf/smart/weloopx/c/c;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->j:Ljava/lang/Runnable;

    .line 306
    new-instance v0, Lcom/yf/smart/weloopx/c/k;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/c/k;-><init>(Lcom/yf/smart/weloopx/c/c;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->l:Ljava/lang/Runnable;

    .line 49
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->b:Lcom/yf/gattlib/a/b;

    .line 50
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->c:Lcom/yf/gattlib/f/b;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/c;)Lcom/yf/gattlib/a/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->b:Lcom/yf/gattlib/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/c;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->p()V

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 100
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/c;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->p()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/c/c;J)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/c/c;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/c/c;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yf/smart/weloopx/c/c;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yf/smart/weloopx/c/c;->g:I

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/c/c;->e:Landroid/os/Handler;

    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 69
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "CustomInitializer stack push saveDeviceState"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 71
    const-string v0, "CustomInitializer test, stack push saveDeviceState"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/c;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "CustomInitializer stack push syncStep"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 74
    const-string v0, "CustomInitializer test, stack push syncStep"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/c;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "CustomInitializer stack push mGetDeviceState"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 80
    const-string v0, "CustomInitializer test, stack push mGetDeviceState"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/smart/weloopx/c/c;->g:I

    .line 84
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/c;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "CustomInitializer stack push checkUserInfo"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 86
    const-string v0, "CustomInitializer test, stack push checkUserInfo"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/c/c;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/yf/smart/weloopx/c/c;->g:I

    return v0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->m()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "V 4.05"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->f()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "V 2.20"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 302
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/c/c;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/c/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/c;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yf/smart/weloopx/c/c;->b()V

    .line 63
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/c/c;->a(J)V

    .line 64
    return-void
.end method
