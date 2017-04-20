.class final Lcom/tencent/b/a/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/b/a/a/d;

.field final synthetic b:Lcom/tencent/b/a/k;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/b/a/ai;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/ai;Lcom/tencent/b/a/a/d;Lcom/tencent/b/a/k;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/am;->e:Lcom/tencent/b/a/ai;

    iput-object p2, p0, Lcom/tencent/b/a/am;->a:Lcom/tencent/b/a/a/d;

    iput-object p3, p0, Lcom/tencent/b/a/am;->b:Lcom/tencent/b/a/k;

    iput-boolean p4, p0, Lcom/tencent/b/a/am;->c:Z

    iput-boolean p5, p0, Lcom/tencent/b/a/am;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/b/a/am;->e:Lcom/tencent/b/a/ai;

    iget-object v1, p0, Lcom/tencent/b/a/am;->a:Lcom/tencent/b/a/a/d;

    iget-object v2, p0, Lcom/tencent/b/a/am;->b:Lcom/tencent/b/a/k;

    iget-boolean v3, p0, Lcom/tencent/b/a/am;->c:Z

    iget-boolean v4, p0, Lcom/tencent/b/a/am;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/b/a/ai;->a(Lcom/tencent/b/a/ai;Lcom/tencent/b/a/a/d;Lcom/tencent/b/a/k;ZZ)V

    return-void
.end method
