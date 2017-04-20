.class final Lcom/tencent/b/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/b/a/k;

.field final synthetic c:Lcom/tencent/b/a/l;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/l;Ljava/util/List;Lcom/tencent/b/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/n;->c:Lcom/tencent/b/a/l;

    iput-object p2, p0, Lcom/tencent/b/a/n;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/b/a/n;->b:Lcom/tencent/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/b/a/n;->c:Lcom/tencent/b/a/l;

    iget-object v1, p0, Lcom/tencent/b/a/n;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/b/a/n;->b:Lcom/tencent/b/a/k;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/b/a/l;->a(Ljava/util/List;Lcom/tencent/b/a/k;)V

    return-void
.end method
