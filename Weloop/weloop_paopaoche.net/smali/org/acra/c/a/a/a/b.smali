.class Lorg/acra/c/a/a/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:Lorg/acra/c/a/a/a/a;


# direct methods
.method public constructor <init>(Lorg/acra/c/a/a/a/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/acra/c/a/a/a/b;->a:Lorg/acra/c/a/a/a/a;

    .line 38
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/acra/c/a/a/a/b;->a:Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1, p2}, Lorg/acra/c/a/a/a/a;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/acra/c/a/a/a/b;->a:Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->e(Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/acra/c/a/a/a/b;->a:Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->c(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/acra/c/a/a/a/b;->a:Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->b(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/acra/c/a/a/a/b;->a:Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1, p2}, Lorg/acra/c/a/a/a/a;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/acra/c/a/a/a/b;->a:Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->a(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/acra/c/a/a/a/b;->a:Lorg/acra/c/a/a/a/a;

    invoke-interface {v0, p1}, Lorg/acra/c/a/a/a/a;->d(Landroid/app/Activity;)V

    .line 63
    return-void
.end method
