.class Lcom/yf/smart/weloopx/android/ui/c/bv;
.super Landroid/content/AsyncTaskLoader;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yf/smart/weloopx/data/models/RankingUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bu;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bu;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bv;->a:Lcom/yf/smart/weloopx/android/ui/c/bu;

    invoke-direct {p0, p2}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/RankingUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bv;->a:Lcom/yf/smart/weloopx/android/ui/c/bu;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/bu;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/a;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bv;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/bv;->forceLoad()V

    .line 132
    return-void
.end method
