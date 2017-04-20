.class final Lcom/tencent/b/a/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/b/a/k;


# instance fields
.field final synthetic a:Lcom/tencent/b/a/ae;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/ah;->a:Lcom/tencent/b/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/tencent/b/a/v;->b()V

    invoke-static {}, Lcom/tencent/b/a/ai;->b()Lcom/tencent/b/a/ai;

    move-result-object v0

    iget v0, v0, Lcom/tencent/b/a/ai;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/b/a/ah;->a:Lcom/tencent/b/a/ae;

    invoke-static {v0}, Lcom/tencent/b/a/ae;->a(Lcom/tencent/b/a/ae;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/b/a/v;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/tencent/b/a/ai;->b()Lcom/tencent/b/a/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/b/a/ah;->a:Lcom/tencent/b/a/ae;

    invoke-static {v1}, Lcom/tencent/b/a/ae;->b(Lcom/tencent/b/a/ae;)Lcom/tencent/b/a/a/d;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/b/a/ah;->a:Lcom/tencent/b/a/ae;

    invoke-static {v3}, Lcom/tencent/b/a/ae;->c(Lcom/tencent/b/a/ae;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/b/a/ai;->a(Lcom/tencent/b/a/a/d;Lcom/tencent/b/a/k;ZZ)V

    invoke-static {}, Lcom/tencent/b/a/v;->c()V

    return-void
.end method
