.class Lcom/yf/smart/weloopx/android/ui/activities/ag;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/c/s$b;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/d;

.field final synthetic b:Z

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/activities/af;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/af;Lcom/yf/gattlib/client/d;Z)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->c:Lcom/yf/smart/weloopx/android/ui/activities/af;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->a:Lcom/yf/gattlib/client/d;

    iput-boolean p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->c:Lcom/yf/smart/weloopx/android/ui/activities/af;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ah;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ah;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ag;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->f(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1061
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ag;->c:Lcom/yf/smart/weloopx/android/ui/activities/af;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/af;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ai;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ai;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ag;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1074
    return-void
.end method
