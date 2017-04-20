.class final Lcom/tencent/b/a/h;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/tencent/b/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/h;->a:Lcom/tencent/b/a/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/tencent/b/a/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/b/a/b/l;->c()Lcom/tencent/b/a/b/b;

    move-result-object v0

    const-string v1, "TimerTask run"

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/b/a/h;->a:Lcom/tencent/b/a/g;

    invoke-static {v0}, Lcom/tencent/b/a/g;->a(Lcom/tencent/b/a/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/b/a/v;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/b/a/h;->cancel()Z

    iget-object v0, p0, Lcom/tencent/b/a/h;->a:Lcom/tencent/b/a/g;

    invoke-virtual {v0}, Lcom/tencent/b/a/g;->a()V

    return-void
.end method
