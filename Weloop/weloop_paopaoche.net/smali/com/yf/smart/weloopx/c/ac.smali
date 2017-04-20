.class Lcom/yf/smart/weloopx/c/ac;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/p$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/x;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/x;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onReadDataTimeout"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, -0x1

    const v2, 0x7f07024a

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 579
    return-void
.end method

.method public a(JJ)V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public a([BJLjava/util/Calendar;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 559
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onReadDataSuccees"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 560
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 561
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 563
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 564
    new-instance v1, Lcom/yf/gattlib/client/b/b/b;

    invoke-direct {v1}, Lcom/yf/gattlib/client/b/b/b;-><init>()V

    .line 565
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/yf/gattlib/client/b/b/b;->a:I

    .line 566
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/yf/gattlib/client/b/b/b;->b:I

    .line 567
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/yf/gattlib/client/b/b/b;->c:I

    .line 568
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/yf/gattlib/client/b/b/b;->d:I

    .line 569
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->g()Lcom/yf/smart/weloopx/data/j;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v3}, Lcom/yf/smart/weloopx/c/x;->f(Lcom/yf/smart/weloopx/c/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/yf/smart/weloopx/data/j;->a(Lcom/yf/gattlib/client/b/b/b;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/x;->c()Z

    .line 572
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onReadDataStart"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 544
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onReadDataFail"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, -0x1

    const v2, 0x7f070249

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 586
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil \u8bfb\u53d6\u8dd1\u6b65\u6570\u636e onNoData"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 592
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/ac;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/x;->c()Z

    .line 593
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/c/ac;->c()V

    .line 598
    return-void
.end method
