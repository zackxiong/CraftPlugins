.class Lcom/yf/gattlib/server/a/b/a/a$c;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/server/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/a/b/a/a;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/server/a/b/a/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/a/a$c;->a:Lcom/yf/gattlib/server/a/b/a/a;

    .line 215
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 220
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a$c;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/a/a;->c(Lcom/yf/gattlib/server/a/b/a/a;)V

    .line 221
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a$c;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/a/a;->a(Lcom/yf/gattlib/server/a/b/a/a;)Lcom/yf/gattlib/server/a/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/d;->a()Lcom/yf/gattlib/server/a/b/a/c;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a$c;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v0}, Lcom/yf/gattlib/server/a/b/a/a;->d(Lcom/yf/gattlib/server/a/b/a/a;)V

    .line 249
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {v0, v5}, Lcom/yf/gattlib/server/a/b/a/c;->a(Z)V

    .line 228
    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/c;->a()B

    move-result v1

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/c;->c()Lcom/yf/gattlib/notification/NotificationContent;

    move-result-object v2

    iget-byte v2, v2, Lcom/yf/gattlib/notification/NotificationContent;->b:B

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/c;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v1, v5, v2, v5, v0}, Lcom/yf/gattlib/server/a/b/e;->a(BBBB[B)[B

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a$c;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v1}, Lcom/yf/gattlib/server/a/b/a/a;->e(Lcom/yf/gattlib/server/a/b/a/a;)[B

    move-result-object v1

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/yf/gattlib/server/a/b/a/a$c;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-static {v2}, Lcom/yf/gattlib/server/a/b/a/a;->f(Lcom/yf/gattlib/server/a/b/a/a;)Lcom/yf/gattlib/server/a/b/c;

    move-result-object v2

    sget-object v3, Lcom/yf/gattlib/server/a/b/d$a;->a:Ljava/util/UUID;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/yf/gattlib/server/a/b/c;->a(Ljava/util/UUID;[BZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/gattlib/server/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SendingHandler have problem"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
