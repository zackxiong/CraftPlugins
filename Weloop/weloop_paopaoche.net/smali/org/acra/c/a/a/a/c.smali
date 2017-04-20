.class public Lorg/acra/c/a/a/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/acra/c/a/a/a/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;Lorg/acra/c/a/a/a/a;)V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lorg/acra/c/a/a/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p1}, Lorg/acra/c/a/a/a/c;->a(Lorg/acra/c/a/a/a/a;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {p0, p1}, Lorg/acra/c/a/a/a/c;->b(Landroid/app/Application;Lorg/acra/c/a/a/a/a;)V

    goto :goto_0
.end method

.method private static a(Lorg/acra/c/a/a/a/a;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lorg/acra/c/a/a/a/d;->a()Lorg/acra/c/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/acra/c/a/a/a/d;->a(Lorg/acra/c/a/a/a/a;)V

    .line 61
    return-void
.end method

.method private static b(Landroid/app/Application;Lorg/acra/c/a/a/a/a;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/acra/c/a/a/a/b;

    invoke-direct {v0, p1}, Lorg/acra/c/a/a/a/b;-><init>(Lorg/acra/c/a/a/a/a;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 66
    return-void
.end method
