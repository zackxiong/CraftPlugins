.class final Lcom/tencent/b/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/b/a/w;

.field final synthetic c:Lcom/tencent/b/a/a/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/b/a/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/b/a/r;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/b/a/r;->b:Lcom/tencent/b/a/w;

    iput-object p2, p0, Lcom/tencent/b/a/r;->c:Lcom/tencent/b/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/tencent/b/a/a/a;

    iget-object v1, p0, Lcom/tencent/b/a/r;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/b/a/r;->a:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/b/a/r;->b:Lcom/tencent/b/a/w;

    invoke-static {v2, v3, v4}, Lcom/tencent/b/a/v;->a(Landroid/content/Context;ZLcom/tencent/b/a/w;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/b/a/r;->c:Lcom/tencent/b/a/a/b;

    iget-object v3, v3, Lcom/tencent/b/a/a/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/b/a/r;->b:Lcom/tencent/b/a/w;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/b/a/a/a;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/tencent/b/a/w;)V

    invoke-virtual {v0}, Lcom/tencent/b/a/a/a;->a()Lcom/tencent/b/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/b/a/r;->c:Lcom/tencent/b/a/a/b;

    iget-object v2, v2, Lcom/tencent/b/a/a/b;->c:Lorg/json/JSONObject;

    iput-object v2, v1, Lcom/tencent/b/a/a/b;->c:Lorg/json/JSONObject;

    new-instance v1, Lcom/tencent/b/a/ae;

    invoke-direct {v1, v0}, Lcom/tencent/b/a/ae;-><init>(Lcom/tencent/b/a/a/d;)V

    invoke-virtual {v1}, Lcom/tencent/b/a/ae;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/b/a/v;->e()Lcom/tencent/b/a/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/b/a/b/b;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/b/a/r;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/b/a/v;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
