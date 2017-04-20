.class Lcom/yf/smart/weloopx/android/ui/activities/au;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/e;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    .line 260
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/au;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/av;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/av;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/au;I)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method
