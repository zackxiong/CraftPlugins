.class final Lcom/tencent/b/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/tencent/b/a/v;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/b/a/x;->a(Landroid/content/Context;)Lcom/tencent/b/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/b/a/x;->h()V

    iget-object v0, p0, Lcom/tencent/b/a/o;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/b/a/b/l;->a(Landroid/content/Context;Z)I

    iget-object v0, p0, Lcom/tencent/b/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/b/a/ai;->a(Landroid/content/Context;)Lcom/tencent/b/a/ai;

    iget-object v0, p0, Lcom/tencent/b/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/b/a/l;->b(Landroid/content/Context;)Lcom/tencent/b/a/l;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/b/a/v;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/tencent/b/a/ac;

    invoke-direct {v0}, Lcom/tencent/b/a/ac;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/tencent/b/a/t;->a()Lcom/tencent/b/a/u;

    move-result-object v0

    sget-object v1, Lcom/tencent/b/a/u;->d:Lcom/tencent/b/a/u;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/b/a/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/b/a/v;->b(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/tencent/b/a/t;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/b/a/v;->e()Lcom/tencent/b/a/b/b;

    move-result-object v0

    const-string v1, "Init MTA StatService success."

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->g(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
