.class Lcom/yf/smart/weloopx/android/ui/a/u;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yf/smart/weloopx/android/ui/b/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/a/s;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-virtual {v0, p2}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->c(Lcom/yf/smart/weloopx/android/ui/a/s;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/a/w;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/a/w;-><init>(Lcom/yf/smart/weloopx/android/ui/a/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/a/v;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Lcom/yf/smart/weloopx/android/ui/a/s;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/a/v;-><init>(Lcom/yf/smart/weloopx/android/ui/a/u;Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/a/u;->a(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/android/ui/b/a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/s;->a(Ljava/util/List;)V

    .line 139
    return-void
.end method
