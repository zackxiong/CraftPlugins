.class Lcom/yf/smart/weloopx/android/ui/c/bw;
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
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bt;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bw;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/e;)V
    .locals 5
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
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bw;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    const v2, 0x7f07014e

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/bt;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bw;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getActivity()Landroid/app/Activity;

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

    .line 169
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bw;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/bt;->e(Lcom/yf/smart/weloopx/android/ui/c/bt;)Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "KEY_RANK_TIME_LABEL"

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bw;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->c(Lcom/yf/smart/weloopx/android/ui/c/bt;)V

    .line 173
    return-void
.end method
