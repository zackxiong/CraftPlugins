.class public Lcom/yf/gattlib/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/a/a$1;,
        Lcom/yf/gattlib/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/support/v4/a/d;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yf/gattlib/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yf/gattlib/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/a/a;->d:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/a/a$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yf/gattlib/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/gattlib/a/a;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/yf/gattlib/a/a$a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    return-object v0
.end method

.method private g(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 57
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->c:Landroid/support/v4/a/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 49
    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->c:Landroid/support/v4/a/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 45
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/support/v4/a/d;->a(Landroid/content/Context;)Landroid/support/v4/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/a/a;->c:Landroid/support/v4/a/d;

    .line 34
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->c:Landroid/support/v4/a/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/d;->a(Landroid/content/Intent;)Z

    .line 41
    return-void
.end method

.method public a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    sget-object v0, Lcom/yf/gattlib/a/a;->a:Ljava/lang/String;

    const-string v1, "error broadcast"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/yf/gattlib/l/a;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method public a(Lcom/yf/gattlib/l/a;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yf/gattlib/a/f;)V
    .locals 3

    .prologue
    .line 170
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/a/a;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/a/e;

    .line 176
    if-nez v0, :cond_2

    .line 177
    new-instance v0, Lcom/yf/gattlib/a/e;

    invoke-direct {v0}, Lcom/yf/gattlib/a/e;-><init>()V

    .line 178
    iget-object v2, p0, Lcom/yf/gattlib/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/a/e;->registerObserver(Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/yf/gattlib/a/a;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/a/e;

    .line 162
    if-nez v0, :cond_0

    .line 163
    monitor-exit v1

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method

.method public b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/yf/gattlib/a/a;->g(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/yf/gattlib/a/f;)V
    .locals 2

    .prologue
    .line 185
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/a/a;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/a/e;

    .line 191
    if-nez v0, :cond_2

    .line 192
    monitor-exit v1

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    invoke-virtual {v0, p2}, Lcom/yf/gattlib/a/e;->unregisterObserver(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/yf/gattlib/a/a;->g(Landroid/content/Intent;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lcom/yf/gattlib/a/a;->a:Ljava/lang/String;

    const-string v2, "error broadcast"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public e(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/yf/gattlib/a/a;->g(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/a/a;->d(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public f(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    sget-object v0, Lcom/yf/gattlib/a/a;->a:Ljava/lang/String;

    const-string v1, "error start service"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
