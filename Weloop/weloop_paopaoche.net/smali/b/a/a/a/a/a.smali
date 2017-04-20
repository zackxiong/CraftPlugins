.class public final Lb/a/a/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/a/b;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "VersionComparer"

    iput-object v0, p0, Lb/a/a/a/a/a;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a/a;->a(Lcom/yf/gattlib/a/b;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/a/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "VersionComparer"

    iput-object v0, p0, Lb/a/a/a/a/a;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a/a;->a(Lcom/yf/gattlib/a/b;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lb/a/a/a/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/yf/gattlib/a/b;I)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/a/a;->a(Lcom/yf/gattlib/a/b;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public a(Lcom/yf/gattlib/a/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/yf/gattlib/a/b;->l()Lcom/yf/gattlib/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/c/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a;->c:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lb/a/a/a/a/a;->d:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lb/a/a/a/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lb/a/a/a/a/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/a/a;->c:Ljava/lang/String;

    .line 31
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lb/a/a/a/a/a;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lb/a/a/a/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lb/a/a/a/a/a;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lb/a/a/a/a/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/a/a;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public d()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lb/a/a/a/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    iget-object v1, p0, Lb/a/a/a/a/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lb/a/a/a/a/a;->b:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lb/a/a/a/a/a;->c:Ljava/lang/String;

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method
