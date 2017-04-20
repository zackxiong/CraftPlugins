.class final Lcom/tencent/b/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/b/a/ai;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/ai;Ljava/util/List;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/tencent/b/a/aj;->e:Lcom/tencent/b/a/ai;

    iput-object p2, p0, Lcom/tencent/b/a/aj;->a:Ljava/util/List;

    iput v0, p0, Lcom/tencent/b/a/aj;->b:I

    iput-boolean p3, p0, Lcom/tencent/b/a/aj;->c:Z

    iput-boolean v0, p0, Lcom/tencent/b/a/aj;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/b/a/aj;->e:Lcom/tencent/b/a/ai;

    iget-object v1, p0, Lcom/tencent/b/a/aj;->a:Ljava/util/List;

    iget v2, p0, Lcom/tencent/b/a/aj;->b:I

    iget-boolean v3, p0, Lcom/tencent/b/a/aj;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/b/a/ai;->a(Lcom/tencent/b/a/ai;Ljava/util/List;IZ)V

    iget-boolean v0, p0, Lcom/tencent/b/a/aj;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/b/a/aj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
