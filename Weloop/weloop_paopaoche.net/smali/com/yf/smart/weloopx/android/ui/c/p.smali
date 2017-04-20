.class Lcom/yf/smart/weloopx/android/ui/c/p;
.super Lcom/yf/smart/weloopx/b/b/e;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/l$a;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/o;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/o;Lcom/yf/smart/weloopx/android/ui/c/l$a;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/p;->b:Lcom/yf/smart/weloopx/android/ui/c/o;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/p;->a:Lcom/yf/smart/weloopx/android/ui/c/l$a;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/yf/smart/weloopx/data/models/Watchface;)V
    .locals 3

    .prologue
    .line 476
    if-eqz p3, :cond_0

    .line 477
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/p;->a:Lcom/yf/smart/weloopx/android/ui/c/l$a;

    iput-object p3, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->c:Lcom/yf/smart/weloopx/data/models/Watchface;

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/p;->b:Lcom/yf/smart/weloopx/android/ui/c/o;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/p;->b:Lcom/yf/smart/weloopx/android/ui/c/o;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/o;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->v(Lcom/yf/smart/weloopx/android/ui/c/l;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Ljava/lang/Runnable;)V

    .line 482
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/p;->a:Lcom/yf/smart/weloopx/android/ui/c/l$a;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/p;->a:Lcom/yf/smart/weloopx/android/ui/c/l$a;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/c/l$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/b/c;->f(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/Watchface;

    move-result-object v1

    iput-object v1, v0, Lcom/yf/smart/weloopx/android/ui/c/l$a;->c:Lcom/yf/smart/weloopx/data/models/Watchface;

    goto :goto_0
.end method
