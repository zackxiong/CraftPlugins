.class Lcom/yf/smart/weloopx/android/ui/activities/cn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/j/a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lb/a/a/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/a/b;

    move-result-object v1

    const-string v2, "V 1.00"

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/a;->a(Lcom/yf/gattlib/a/b;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lb/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/co;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/co;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/cn;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lb/a/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->e(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    goto :goto_0
.end method
