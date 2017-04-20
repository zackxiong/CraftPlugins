.class public Lcom/yf/smart/weloopx/a/a;
.super Lcom/yf/gattlib/c/a;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yf/gattlib/c/a;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yf/smart/weloopx/a/a;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yf/gattlib/c/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-string v0, "pull dirty minute step data"

    invoke-virtual {p1, v0, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 31
    const-string v0, "sync phone name"

    invoke-virtual {p1, v0, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 32
    const-string v0, "sync language"

    invoke-virtual {p1, v0, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 33
    return-void
.end method

.method public a(Lcom/yf/gattlib/c/d;)V
    .locals 0

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1, p0}, Lcom/yf/gattlib/c/d;->a(Lcom/yf/gattlib/c/b;)V

    .line 55
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yf/gattlib/c/g;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/d/a;->d()Lcom/yf/gattlib/c/g;

    move-result-object v0

    return-object v0
.end method
