.class Lcom/yf/smart/weloopx/android/ui/a/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/a/u;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/a/u;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/w;->a:Lcom/yf/smart/weloopx/android/ui/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/w;->a:Lcom/yf/smart/weloopx/android/ui/a/u;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->b(Lcom/yf/smart/weloopx/android/ui/a/s;)Lcom/yf/smart/weloopx/android/ui/a/s$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/w;->a:Lcom/yf/smart/weloopx/android/ui/a/u;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/a/s;->b(Lcom/yf/smart/weloopx/android/ui/a/s;)Lcom/yf/smart/weloopx/android/ui/a/s$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/w;->a:Lcom/yf/smart/weloopx/android/ui/a/u;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/a/u;->a:Lcom/yf/smart/weloopx/android/ui/a/s;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/a/s$a;->a(Lcom/yf/smart/weloopx/android/ui/a/s;I)V

    .line 132
    :cond_0
    return-void
.end method
