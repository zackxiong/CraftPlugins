.class public Lcom/yf/gattlib/client/dfu/a;
.super Lcom/yf/gattlib/client/dfu/g;
.source "ProGuard"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/dfu/g;-><init>(Ljava/io/InputStream;)V

    .line 9
    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/a;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public available()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/a;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please, use readPacket() method instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/dfu/a;->a([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please, use readPacket() method instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/yf/gattlib/client/dfu/g;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
