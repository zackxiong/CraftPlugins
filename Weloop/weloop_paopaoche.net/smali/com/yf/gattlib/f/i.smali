.class Lcom/yf/gattlib/f/i;
.super Lcom/yf/gattlib/f/b$a;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/f/h;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/f/h;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 411
    iput-object p1, p0, Lcom/yf/gattlib/f/i;->a:Lcom/yf/gattlib/f/h;

    iget-object v0, p1, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0, v0, p2}, Lcom/yf/gattlib/f/b$a;-><init>(Lcom/yf/gattlib/f/b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxNum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/f/i;->a:Lcom/yf/gattlib/f/h;

    iget-object v1, v1, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1}, Lcom/yf/gattlib/f/b;->h(Lcom/yf/gattlib/f/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    const-string v1, "GattInstance"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/f/i;->a:Lcom/yf/gattlib/f/h;

    iget-object v0, v0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->h(Lcom/yf/gattlib/f/b;)I

    move-result v0

    if-lez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/yf/gattlib/f/i;->a:Lcom/yf/gattlib/f/h;

    iget-object v0, v0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->d(Lcom/yf/gattlib/f/b;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/f/i;->a:Lcom/yf/gattlib/f/h;

    iget-object v1, v1, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1}, Lcom/yf/gattlib/f/b;->k(Lcom/yf/gattlib/f/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/yf/gattlib/f/i;->a:Lcom/yf/gattlib/f/h;

    iget-object v0, v0, Lcom/yf/gattlib/f/h;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->e(Lcom/yf/gattlib/f/b;)Lcom/yf/gattlib/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->k()V

    .line 423
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/f/b$a;->a(III[Ljava/lang/Object;)V

    goto :goto_0
.end method
