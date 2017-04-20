.class final Lcom/tencent/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/b/a/ao;


# direct methods
.method constructor <init>(Lcom/tencent/b/a/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/f;->a:Lcom/tencent/b/a/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/f;->a:Lcom/tencent/b/a/ao;

    iget-object v0, v0, Lcom/tencent/b/a/ao;->a:Lcom/tencent/b/a/x;

    invoke-virtual {v0}, Lcom/tencent/b/a/x;->g()V

    return-void
.end method
