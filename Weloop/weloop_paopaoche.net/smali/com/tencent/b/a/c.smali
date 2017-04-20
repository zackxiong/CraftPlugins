.class final Lcom/tencent/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/b/a/ai;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/ai;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/c;->b:Lcom/tencent/b/a/ai;

    iput p2, p0, Lcom/tencent/b/a/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/b/a/c;->b:Lcom/tencent/b/a/ai;

    iget v1, p0, Lcom/tencent/b/a/c;->a:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/b/a/ai;->a(Lcom/tencent/b/a/ai;IZ)V

    iget-object v0, p0, Lcom/tencent/b/a/c;->b:Lcom/tencent/b/a/ai;

    iget v1, p0, Lcom/tencent/b/a/c;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/b/a/ai;->a(Lcom/tencent/b/a/ai;IZ)V

    return-void
.end method
