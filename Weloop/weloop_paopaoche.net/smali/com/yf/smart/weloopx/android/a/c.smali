.class public Lcom/yf/smart/weloopx/android/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 5

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/a/c;->d:Landroid/app/Service;

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForeground"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/app/Notification;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/a/c;->b:Ljava/lang/reflect/Method;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stopForeground"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/a/c;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/a/c;->c:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/a/c;->b:Ljava/lang/reflect/Method;

    .line 32
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForeground"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/a/c;->a:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/a/c;->d:Landroid/app/Service;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/NotificationManager;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/a/c;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 69
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/a/c;->c:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/a/c;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 74
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 75
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/a/c;->a:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/a/c;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/a/c;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 54
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 55
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/a/c;->b:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/a/c;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 60
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/a/c;->a:Ljava/lang/reflect/Method;

    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/a/c;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
