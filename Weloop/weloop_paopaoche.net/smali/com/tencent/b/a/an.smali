.class final Lcom/tencent/b/a/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/b/a/i;

.field final synthetic b:Lcom/tencent/b/a/ai;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/ai;Lcom/tencent/b/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/an;->b:Lcom/tencent/b/a/ai;

    iput-object p2, p0, Lcom/tencent/b/a/an;->a:Lcom/tencent/b/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/b/a/an;->b:Lcom/tencent/b/a/ai;

    iget-object v1, p0, Lcom/tencent/b/a/an;->a:Lcom/tencent/b/a/i;

    invoke-static {v0, v1}, Lcom/tencent/b/a/ai;->a(Lcom/tencent/b/a/ai;Lcom/tencent/b/a/i;)V

    return-void
.end method
