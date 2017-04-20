.class Lcom/yf/gattlib/f/e;
.super Lcom/yf/gattlib/f/b$a;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/f/d;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/f/d;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    iput-object p1, p0, Lcom/yf/gattlib/f/e;->a:Lcom/yf/gattlib/f/d;

    iget-object v0, p1, Lcom/yf/gattlib/f/d;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0, v0, p2}, Lcom/yf/gattlib/f/b$a;-><init>(Lcom/yf/gattlib/f/b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    const/16 v0, 0x3ea

    if-ne v0, p1, :cond_1

    .line 353
    aget-object v0, p4, v4

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0, v4}, Lcom/yf/gattlib/client/d;->a([BZ)Lcom/yf/gattlib/client/d;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->y()V

    .line 355
    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/client/d;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v2, "last anti disturb time"

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;[B)V

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattInstance mGetDeviceState get isRecover params = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->u()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p4, v4

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 361
    if-eqz v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/yf/gattlib/f/e;->a:Lcom/yf/gattlib/f/d;

    iget-object v0, v0, Lcom/yf/gattlib/f/d;->a:Lcom/yf/gattlib/f/b;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->b(Z)V

    .line 366
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/f/b$a;->a(III[Ljava/lang/Object;)V

    .line 367
    return-void
.end method
