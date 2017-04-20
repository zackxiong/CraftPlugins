.class Lcom/yf/gattlib/d/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/d/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/d/b;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yf/gattlib/d/c;->a:Lcom/yf/gattlib/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v0, p0, Lcom/yf/gattlib/d/c;->a:Lcom/yf/gattlib/d/b;

    invoke-static {v0}, Lcom/yf/gattlib/d/b;->a(Lcom/yf/gattlib/d/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/d/c;->a:Lcom/yf/gattlib/d/b;

    invoke-static {v0}, Lcom/yf/gattlib/d/b;->b(Lcom/yf/gattlib/d/b;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/d/c;->a:Lcom/yf/gattlib/d/b;

    invoke-static {v0}, Lcom/yf/gattlib/d/b;->c(Lcom/yf/gattlib/d/b;)I

    .line 45
    iget-object v0, p0, Lcom/yf/gattlib/d/c;->a:Lcom/yf/gattlib/d/b;

    invoke-static {v0}, Lcom/yf/gattlib/d/b;->d(Lcom/yf/gattlib/d/b;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/yf/gattlib/server/android/d;

    invoke-direct {v1}, Lcom/yf/gattlib/server/android/d;-><init>()V

    iget-object v2, p0, Lcom/yf/gattlib/d/c;->a:Lcom/yf/gattlib/d/b;

    invoke-static {v2}, Lcom/yf/gattlib/d/b;->a(Lcom/yf/gattlib/d/b;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/yf/gattlib/server/android/d;->a(Ljava/lang/String;ZZZ)Lcom/yf/gattlib/server/android/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/android/e;->a(Landroid/content/Context;Lcom/yf/gattlib/server/android/d;)V

    goto :goto_0
.end method
