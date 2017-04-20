.class final Lcom/tencent/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/b/a/k;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/b/a/ai;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/ai;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/b;->c:Lcom/tencent/b/a/ai;

    iput-object p2, p0, Lcom/tencent/b/a/b;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/tencent/b/a/b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/tencent/b/a/v;->b()V

    iget-object v0, p0, Lcom/tencent/b/a/b;->c:Lcom/tencent/b/a/ai;

    iget-object v1, p0, Lcom/tencent/b/a/b;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/tencent/b/a/b;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/tencent/b/a/ai;->b(Ljava/util/List;Z)V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/tencent/b/a/v;->c()V

    iget-object v0, p0, Lcom/tencent/b/a/b;->c:Lcom/tencent/b/a/ai;

    iget-object v1, p0, Lcom/tencent/b/a/b;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/tencent/b/a/b;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/tencent/b/a/ai;->a(Ljava/util/List;Z)V

    return-void
.end method
