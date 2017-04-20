.class public Lcom/yf/gattlib/d/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/d/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yf/gattlib/d/b$a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/os/Handler;

.field private h:Landroid/content/Context;

.field private i:Lcom/yf/gattlib/l/a;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/yf/gattlib/d/b$a;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lcom/yf/gattlib/d/b;-><init>(Lcom/yf/gattlib/d/b$a;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/d/b$a;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/d/b;->e:Z

    .line 37
    new-instance v0, Lcom/yf/gattlib/d/c;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/d/c;-><init>(Lcom/yf/gattlib/d/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/d/b;->f:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcom/yf/gattlib/d/d;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/d/d;-><init>(Lcom/yf/gattlib/d/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/d/b;->i:Lcom/yf/gattlib/l/a;

    .line 137
    new-instance v0, Lcom/yf/gattlib/d/e;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/d/e;-><init>(Lcom/yf/gattlib/d/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/d/b;->j:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/d/b;->g:Landroid/os/Handler;

    .line 59
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/d/b;->h:Landroid/content/Context;

    .line 60
    iput-object p1, p0, Lcom/yf/gattlib/d/b;->a:Lcom/yf/gattlib/d/b$a;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yf.gattlib.intent.action.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/d/b;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yf.gattlib.intent.action.ACTION_GATT_INIT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/d/b;->i:Lcom/yf/gattlib/l/a;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/a/a;->a(Lcom/yf/gattlib/l/a;Landroid/content/IntentFilter;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/d/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/d/b;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/d/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/yf/gattlib/d/b;->e:Z

    if-eqz v0, :cond_0

    .line 110
    if-eqz p2, :cond_2

    .line 111
    iput-boolean v1, p0, Lcom/yf/gattlib/d/b;->d:Z

    .line 112
    invoke-direct {p0}, Lcom/yf/gattlib/d/b;->b()V

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->a:Lcom/yf/gattlib/d/b$a;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->a:Lcom/yf/gattlib/d/b$a;

    invoke-interface {v0, p1, p2}, Lcom/yf/gattlib/d/b$a;->a(Ljava/lang/String;Z)V

    .line 123
    :cond_1
    return-void

    .line 113
    :cond_2
    iget v0, p0, Lcom/yf/gattlib/d/b;->c:I

    if-gtz v0, :cond_1

    .line 115
    iget v0, p0, Lcom/yf/gattlib/d/b;->c:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/yf/gattlib/d/b;->d:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->a(Z)V

    .line 117
    invoke-direct {p0}, Lcom/yf/gattlib/d/b;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yf/gattlib/d/b;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yf/gattlib/d/b;->c:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/d/b;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/d/b;->b:Ljava/lang/String;

    .line 97
    iput v2, p0, Lcom/yf/gattlib/d/b;->c:I

    .line 98
    iput-boolean v2, p0, Lcom/yf/gattlib/d/b;->e:Z

    .line 99
    return-void
.end method

.method static synthetic c(Lcom/yf/gattlib/d/b;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yf/gattlib/d/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/d/b;->c:I

    return v0
.end method

.method static synthetic d(Lcom/yf/gattlib/d/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/yf/gattlib/d/b;)Lcom/yf/gattlib/d/b$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->a:Lcom/yf/gattlib/d/b$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/d/b;->a:Lcom/yf/gattlib/d/b$a;

    .line 90
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/d/b;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 91
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/d/b;->i:Lcom/yf/gattlib/l/a;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->a(Lcom/yf/gattlib/l/a;)V

    .line 92
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 70
    invoke-direct {p0}, Lcom/yf/gattlib/d/b;->b()V

    .line 71
    iput-boolean v3, p0, Lcom/yf/gattlib/d/b;->e:Z

    .line 72
    iput-boolean v3, p0, Lcom/yf/gattlib/d/b;->d:Z

    .line 73
    iput-object p1, p0, Lcom/yf/gattlib/d/b;->b:Ljava/lang/String;

    .line 74
    iput v3, p0, Lcom/yf/gattlib/d/b;->c:I

    .line 76
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yf/gattlib/f/b;->a(Z)V

    .line 77
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->h:Landroid/content/Context;

    new-instance v1, Lcom/yf/gattlib/server/android/d;

    invoke-direct {v1}, Lcom/yf/gattlib/server/android/d;-><init>()V

    iget-object v2, p0, Lcom/yf/gattlib/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/yf/gattlib/server/android/d;->a(Ljava/lang/String;ZZZ)Lcom/yf/gattlib/server/android/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/android/e;->a(Landroid/content/Context;Lcom/yf/gattlib/server/android/d;)V

    .line 79
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/d/b;->f:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/yf/gattlib/p/g;->a()V

    .line 84
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->a(Z)V

    .line 85
    iget-object v0, p0, Lcom/yf/gattlib/d/b;->h:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/yf/gattlib/server/android/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method
