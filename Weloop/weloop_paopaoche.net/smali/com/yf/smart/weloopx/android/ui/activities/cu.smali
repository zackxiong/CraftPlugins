.class Lcom/yf/smart/weloopx/android/ui/activities/cu;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 260
    const-string v0, "DfuActivity"

    const-string v1, "Upgrade button pressed"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->r(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    .line 263
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->s(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Lcom/yf/smart/weloopx/android/ui/activities/ce;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->execute([Ljava/lang/Object;)Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    .line 274
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/client/dfu/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->k()V

    .line 271
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/client/dfu/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->b()V

    .line 272
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cu;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    goto :goto_0
.end method
