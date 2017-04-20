.class abstract Landroid/support/v7/app/c;
.super Landroid/support/v7/app/b;
.source "ProGuard"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field private i:Landroid/support/v7/app/a;

.field private j:Ljava/lang/CharSequence;

.field private k:Z


# virtual methods
.method abstract a()Landroid/support/v7/app/a;
.end method

.method abstract a(Ljava/lang/CharSequence;)V
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method public b()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/support/v7/app/c;->d:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/app/c;->i:Landroid/support/v7/app/a;

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/app/c;->a()Landroid/support/v7/app/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/c;->i:Landroid/support/v7/app/a;

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->i:Landroid/support/v7/app/a;

    return-object v0
.end method

.method final c()Landroid/content/Context;
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/support/v7/app/c;->b()Landroid/support/v7/app/a;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Landroid/support/v7/app/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 154
    :cond_0
    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/content/Context;

    .line 157
    :cond_1
    return-object v0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Landroid/support/v7/app/c;->k:Z

    return v0
.end method

.method final e()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/app/c;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/support/v7/app/c;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->j:Ljava/lang/CharSequence;

    goto :goto_0
.end method
