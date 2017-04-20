.class public final Lcom/yf/gattlib/j/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/gattlib/j/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/j/b;)Lcom/yf/gattlib/j/a;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/yf/gattlib/j/b;->a:Lcom/yf/gattlib/j/a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/yf/gattlib/j/b;->a:Lcom/yf/gattlib/j/a;

    invoke-interface {v0}, Lcom/yf/gattlib/j/a;->a()V

    .line 23
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 25
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->l()Lcom/yf/gattlib/c/b;

    move-result-object v0

    new-instance v1, Lcom/yf/gattlib/j/c;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/j/c;-><init>(Lcom/yf/gattlib/j/b;)V

    invoke-interface {v0, v1}, Lcom/yf/gattlib/c/b;->a(Lcom/yf/gattlib/c/d;)V

    .line 33
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/yf/gattlib/j/a;)Z
    .locals 1

    .prologue
    .line 16
    iput-object p2, p0, Lcom/yf/gattlib/j/b;->a:Lcom/yf/gattlib/j/a;

    .line 17
    invoke-virtual {p0}, Lcom/yf/gattlib/j/b;->a()Z

    move-result v0

    return v0
.end method
