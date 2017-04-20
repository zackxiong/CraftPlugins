.class public Lcom/yf/smart/weloopx/f/o;
.super Lcom/yf/smart/weloopx/f/m;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yf/smart/weloopx/f/m;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-super {p0}, Lcom/yf/smart/weloopx/f/m;->c()Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-super {p0}, Lcom/yf/smart/weloopx/f/m;->d()Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_0
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-super {p0}, Lcom/yf/smart/weloopx/f/m;->l()Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_0
    return-object v0
.end method
