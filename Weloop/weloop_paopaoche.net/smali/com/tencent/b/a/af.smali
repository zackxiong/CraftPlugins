.class final Lcom/tencent/b/a/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/b/a/k;


# instance fields
.field final synthetic a:Lcom/tencent/b/a/ae;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/af;->a:Lcom/tencent/b/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/tencent/b/a/v;->b()V

    invoke-static {}, Lcom/tencent/b/a/ai;->b()Lcom/tencent/b/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/b/a/ai;->a()I

    move-result v0

    invoke-static {}, Lcom/tencent/b/a/t;->f()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/b/a/ai;->b()Lcom/tencent/b/a/ai;

    move-result-object v0

    invoke-static {}, Lcom/tencent/b/a/t;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/ai;->a(I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    invoke-static {}, Lcom/tencent/b/a/v;->c()V

    return-void
.end method
