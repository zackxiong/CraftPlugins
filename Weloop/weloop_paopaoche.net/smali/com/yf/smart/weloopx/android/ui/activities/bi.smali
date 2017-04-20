.class Lcom/yf/smart/weloopx/android/ui/activities/bi;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/a/f;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bi;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bi;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->r(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bi;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/bj;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bj;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/bi;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 275
    :cond_0
    return-void
.end method
