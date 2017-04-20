.class Lcom/yf/smart/weloopx/android/ui/c/bm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/e$e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/e$e",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bl;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07014e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0x80011

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "KEY_RANK_TIME_LABEL"

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->b(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0, v6}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Lcom/yf/smart/weloopx/android/ui/c/bl;Z)Z

    .line 162
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0, v6}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Lcom/yf/smart/weloopx/android/ui/c/bl;I)I

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v0, v5}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Z)V

    .line 168
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bm;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0, v5}, Lcom/yf/smart/weloopx/android/ui/c/bl;->a(Lcom/yf/smart/weloopx/android/ui/c/bl;Z)Z

    goto :goto_0
.end method
