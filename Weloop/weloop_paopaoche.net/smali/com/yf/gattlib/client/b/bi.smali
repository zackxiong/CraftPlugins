.class Lcom/yf/gattlib/client/b/bi;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/yf/gattlib/client/b/e;

.field final synthetic e:Lcom/yf/gattlib/client/b/be;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/b/be;[BIILcom/yf/gattlib/client/b/e;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bi;->e:Lcom/yf/gattlib/client/b/be;

    iput-object p2, p0, Lcom/yf/gattlib/client/b/bi;->a:[B

    iput p3, p0, Lcom/yf/gattlib/client/b/bi;->b:I

    iput p4, p0, Lcom/yf/gattlib/client/b/bi;->c:I

    iput-object p5, p0, Lcom/yf/gattlib/client/b/bi;->d:Lcom/yf/gattlib/client/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bi;->e:Lcom/yf/gattlib/client/b/be;

    invoke-static {v0}, Lcom/yf/gattlib/client/b/be;->b(Lcom/yf/gattlib/client/b/be;)Lcom/yf/gattlib/client/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bi;->a:[B

    iget v2, p0, Lcom/yf/gattlib/client/b/bi;->b:I

    iget v3, p0, Lcom/yf/gattlib/client/b/bi;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/client/b/ai;->a([BII)V
    :try_end_0
    .catch Lcom/yf/gattlib/e/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bi;->e:Lcom/yf/gattlib/client/b/be;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bi;->d:Lcom/yf/gattlib/client/b/e;

    const/4 v2, -0x4

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;I)V

    goto :goto_0
.end method
