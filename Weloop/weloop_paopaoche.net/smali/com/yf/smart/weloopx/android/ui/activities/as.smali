.class Lcom/yf/smart/weloopx/android/ui/activities/as;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/ar;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/ar;Z)V
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iput-boolean p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/as;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1197
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/as;->b:Lcom/yf/smart/weloopx/android/ui/activities/ar;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/ar;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/at;

    invoke-direct {v1, p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/at;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/as;II)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->j(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1212
    :cond_0
    return-void
.end method
