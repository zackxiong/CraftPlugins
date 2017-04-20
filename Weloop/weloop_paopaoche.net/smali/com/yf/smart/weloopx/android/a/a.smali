.class public Lcom/yf/smart/weloopx/android/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/yf/smart/weloopx/android/a/b;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/a/b;-><init>(Lcom/yf/smart/weloopx/android/a/a;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/a/a;->a:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/a/b;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/smart/weloopx/android/a/a;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/yf/smart/weloopx/android/a/a$a;->a()Lcom/yf/smart/weloopx/android/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "AppExit"

    invoke-virtual {v0, v1, p1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/a/a;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 36
    return-void
.end method

.method public c()I
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {}, Lcom/yf/gattlib/c/e;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/4 v0, -0x1

    .line 43
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "AppExit"

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/c/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 44
    const-string v1, "AppExitMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get exitVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v0
.end method
