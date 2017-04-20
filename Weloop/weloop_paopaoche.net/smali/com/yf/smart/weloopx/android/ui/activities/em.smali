.class Lcom/yf/smart/weloopx/android/ui/activities/em;
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
        "Landroid/widget/ScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

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
            "Landroid/widget/ScrollView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07014e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getActivity()Landroid/app/Activity;

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

    .line 217
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "KEY_USER_TIME_LABEL"

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/e;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/handmark/pulltorefresh/library/a;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->b(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->c(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/smart/weloopx/g/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->b(Lcom/yf/smart/weloopx/android/ui/activities/el;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/en;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/en;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/em;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Lcom/yf/smart/weloopx/android/ui/activities/el;Ljava/lang/Runnable;)V

    .line 229
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    const v2, 0x7f07017c

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/el;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Lcom/yf/smart/weloopx/android/ui/activities/el;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/em;->a:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->e(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    goto :goto_0
.end method
