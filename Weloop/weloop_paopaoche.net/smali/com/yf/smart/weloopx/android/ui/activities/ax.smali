.class Lcom/yf/smart/weloopx/android/ui/activities/ax;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/aw;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/aw;)V
    .locals 0

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1230
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ax;->a:Lcom/yf/smart/weloopx/android/ui/activities/aw;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/aw;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ay;

    invoke-direct {v1, p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/ay;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ax;II)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->k(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1245
    :cond_0
    return-void
.end method
