.class public Lcom/yf/gattlib/server/android/GattServerService;
.super Landroid/app/Service;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/server/android/GattServerService$b;,
        Lcom/yf/gattlib/server/android/GattServerService$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Lcom/yf/gattlib/a/b;

.field private final g:Lcom/yf/gattlib/server/android/GattServerService$a;

.field private final h:Landroid/content/BroadcastReceiver;

.field private i:Lcom/yf/gattlib/a/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 218
    new-instance v0, Lcom/yf/gattlib/server/android/GattServerService$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/server/android/GattServerService$a;-><init>(Lcom/yf/gattlib/server/android/GattServerService;Lcom/yf/gattlib/server/android/g;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->g:Lcom/yf/gattlib/server/android/GattServerService$a;

    .line 255
    new-instance v0, Lcom/yf/gattlib/server/android/g;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/server/android/g;-><init>(Lcom/yf/gattlib/server/android/GattServerService;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->h:Landroid/content/BroadcastReceiver;

    .line 340
    new-instance v0, Lcom/yf/gattlib/server/android/i;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/server/android/i;-><init>(Lcom/yf/gattlib/server/android/GattServerService;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->i:Lcom/yf/gattlib/a/f;

    .line 360
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/server/android/GattServerService;)Lcom/yf/gattlib/a/b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/server/android/GattServerService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/yf/gattlib/server/android/GattServerService;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/yf/gattlib/db/LastConnection;->obtainLastConnection()Lcom/yf/gattlib/db/LastConnection;

    move-result-object v0

    .line 137
    iget-object v0, v0, Lcom/yf/gattlib/db/LastConnection;->device:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yf/gattlib/server/android/GattServerService;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->b:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.gattlib.intent.action.ACTION_GATT_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    const-string v1, "EXTRA_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->b(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method static synthetic c(Lcom/yf/gattlib/server/android/GattServerService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/gattlib/server/android/GattServerService;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->j()V

    return-void
.end method

.method static synthetic e(Lcom/yf/gattlib/server/android/GattServerService;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->c:J

    return-wide v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x3afc

    iput-wide v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->a:J

    .line 55
    invoke-static {}, Lcom/yf/gattlib/c/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->b:J

    .line 56
    invoke-static {}, Lcom/yf/gattlib/c/e;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->c:J

    .line 58
    return-void
.end method

.method static synthetic f(Lcom/yf/gattlib/server/android/GattServerService;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->i()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/server/android/GattServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 62
    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->h()Lcom/yf/gattlib/h/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/h/h;->a(Landroid/media/AudioManager;)V

    .line 63
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->g()Lcom/yf/gattlib/server/android/b;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/yf/gattlib/server/android/e;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/server/android/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/server/android/b;->a(Lcom/yf/gattlib/server/android/a;)V

    .line 68
    new-instance v1, Lcom/yf/gattlib/server/android/f;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/server/android/f;-><init>(Lcom/yf/gattlib/server/android/GattServerService;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/server/android/b;->a(Lcom/yf/gattlib/server/android/a;)V

    .line 69
    new-instance v1, Lcom/yf/gattlib/server/android/GattServerService$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yf/gattlib/server/android/GattServerService$b;-><init>(Lcom/yf/gattlib/server/android/GattServerService;Lcom/yf/gattlib/server/android/g;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/server/android/b;->a(Lcom/yf/gattlib/server/android/a;)V

    .line 70
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->h()Lcom/yf/gattlib/h/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/h/h;->a(Landroid/content/Context;)V

    .line 105
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->o()Lcom/yf/gattlib/o/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/o/a;->a(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->i()Lcom/yf/gattlib/i/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/i/a;->a(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->j()Lcom/yf/gattlib/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/g/a;->a(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->h()Lcom/yf/gattlib/h/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/h/h;->b(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->o()Lcom/yf/gattlib/o/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/o/a;->b(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->i()Lcom/yf/gattlib/i/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/i/a;->b(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->j()Lcom/yf/gattlib/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/g/a;->b(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/yf/gattlib/db/LastConnection;->obtainLastConnection()Lcom/yf/gattlib/db/LastConnection;

    move-result-object v0

    .line 132
    iget-object v0, v0, Lcom/yf/gattlib/db/LastConnection;->device:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-static {}, Lcom/yf/gattlib/db/LastConnection;->obtainLastConnection()Lcom/yf/gattlib/db/LastConnection;

    move-result-object v0

    .line 143
    iget-object v1, v0, Lcom/yf/gattlib/db/LastConnection;->device:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    iget-object v2, v0, Lcom/yf/gattlib/db/LastConnection;->device:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/f/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yf/gattlib/f/b;->a(Z)V

    .line 151
    new-instance v1, Lcom/yf/gattlib/server/android/d;

    invoke-direct {v1}, Lcom/yf/gattlib/server/android/d;-><init>()V

    iget-object v2, v0, Lcom/yf/gattlib/db/LastConnection;->device:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/yf/gattlib/server/android/d;->a(Ljava/lang/String;ZZZ)Lcom/yf/gattlib/server/android/d;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yf/gattlib/server/android/e;->a(Landroid/content/Context;Lcom/yf/gattlib/server/android/d;)V

    .line 153
    const-string v1, "GattServerService connectHistoryDevice() postConnection "

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 154
    iget-object v0, v0, Lcom/yf/gattlib/db/LastConnection;->device:Ljava/lang/String;

    iget-wide v2, p0, Lcom/yf/gattlib/server/android/GattServerService;->a:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/yf/gattlib/server/android/GattServerService;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private m()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/yf/gattlib/server/android/GattServerService;->c()V

    .line 159
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.yf.gattlib.intent.action.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 207
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    const-string v1, "rx_service_uuid"

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService;->i:Lcom/yf/gattlib/a/f;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->a(Ljava/lang/String;Lcom/yf/gattlib/a/f;)V

    .line 208
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    const-string v1, "dfu_service_uuid"

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService;->i:Lcom/yf/gattlib/a/f;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->a(Ljava/lang/String;Lcom/yf/gattlib/a/f;)V

    .line 209
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 213
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;)V

    .line 214
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    const-string v1, "rx_service_uuid"

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService;->i:Lcom/yf/gattlib/a/f;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->b(Ljava/lang/String;Lcom/yf/gattlib/a/f;)V

    .line 215
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    const-string v1, "dfu_service_uuid"

    iget-object v2, p0, Lcom/yf/gattlib/server/android/GattServerService;->i:Lcom/yf/gattlib/a/f;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->b(Ljava/lang/String;Lcom/yf/gattlib/a/f;)V

    .line 216
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "auto connect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-boolean v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->e:Z

    if-eqz v0, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->l()V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/yf/gattlib/server/android/GattServerService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->l()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 2. postConnection, delayed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattServerService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 333
    const-string v1, "GattServerService"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattServerService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p0}, Lcom/yf/gattlib/server/android/GattServerService;->e()V

    .line 336
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->g:Lcom/yf/gattlib/server/android/GattServerService$a;

    iput-object p1, v0, Lcom/yf/gattlib/server/android/GattServerService$a;->a:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService;->g:Lcom/yf/gattlib/server/android/GattServerService$a;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 92
    const-string v0, "GattServerService"

    const-string v1, "create gatt"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/yf/gattlib/server/android/GattServerService;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->e:Z

    .line 95
    iget-boolean v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->e:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 98
    :cond_0
    const-string v0, "created"

    invoke-direct {p0, v0}, Lcom/yf/gattlib/server/android/GattServerService;->b(Ljava/lang/String;)V

    .line 99
    const-string v0, "GattServerService"

    const-string v1, "create gatt 2"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "GattServerService"

    const-string v1, "destory gatt"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->e:Z

    .line 120
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->j()V

    .line 121
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->e()V

    .line 122
    const-string v0, "detroyed"

    invoke-direct {p0, v0}, Lcom/yf/gattlib/server/android/GattServerService;->b(Ljava/lang/String;)V

    .line 123
    const-string v0, "GattServerService"

    const-string v1, "destory gatt 2"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->g:Lcom/yf/gattlib/server/android/GattServerService$a;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService;->g:Lcom/yf/gattlib/server/android/GattServerService$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    const-string v0, "GattServerService GattServerService() onCreate "

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 41
    const-string v0, "GattServerService, onCreate"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->d:Landroid/os/Handler;

    .line 44
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->f()V

    .line 45
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->n()V

    .line 46
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->g()V

    .line 47
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->h()V

    .line 49
    invoke-virtual {p0}, Lcom/yf/gattlib/server/android/GattServerService;->a()V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->m()V

    .line 189
    invoke-direct {p0}, Lcom/yf/gattlib/server/android/GattServerService;->o()V

    .line 190
    const-string v0, "GattServerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "GattServerService, onDestroy"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 192
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 193
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 163
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v4

    .line 167
    :cond_1
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattServerService 4. GattServerService onStartCommand get code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattServerService 4. GattServerService onStartCommand get code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 170
    const-string v1, "GattServerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "destroy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "disconnect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->g()Lcom/yf/gattlib/server/android/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/server/android/b;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-boolean v1, p0, Lcom/yf/gattlib/server/android/GattServerService;->e:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/yf/gattlib/server/android/GattServerService;->b()Z

    .line 180
    :cond_3
    iget-boolean v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->e:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService;->f:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->g()Lcom/yf/gattlib/server/android/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/server/android/b;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
