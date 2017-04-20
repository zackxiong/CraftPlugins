.class Lcom/yf/smart/weloopx/c/y;
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
    .line 215
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 3.1 \u8bfb\u53d6\u539f\u59cb\u6570\u636e  onReadDataTimeout"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, -0x1

    const v2, 0x7f070248

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 248
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Z)Z

    .line 249
    return-void
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0, p3, p4, p1, p2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;JJ)V

    .line 231
    return-void
.end method

.method public a([BJLjava/util/Calendar;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 237
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 3.0 \u8bfb\u53d6\u539f\u59cb\u6570\u636e  onReadDataSuccees"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-static {v3}, Lcom/yf/smart/weloopx/g/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p5, v3, v1, p1}, Lcom/yf/smart/weloopx/b/b;->a(Ljava/lang/String;ILjava/lang/String;[B)V

    .line 240
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/x;->c(Lcom/yf/smart/weloopx/c/x;)V

    .line 241
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 2. \u8bfb\u53d6\u539f\u59cb\u6570\u636e onReadDataStart"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->b(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 220
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 3.2 \u8bfb\u53d6\u539f\u59cb\u6570\u636e  onReadDataFail"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, -0x1

    const v2, 0x7f070247

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;IILjava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;II)V

    .line 256
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Z)Z

    .line 257
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const-string v1, "SyncDeviceDataUtil 3.3 \u8bfb\u53d6\u539f\u59cb\u6570\u636e  onNoData"

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/x;->c(Lcom/yf/smart/weloopx/c/x;)V

    .line 263
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/y;->a:Lcom/yf/smart/weloopx/c/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/c/x;->a(Lcom/yf/smart/weloopx/c/x;Z)Z

    .line 264
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/c/y;->c()V

    .line 269
    return-void
.end method
