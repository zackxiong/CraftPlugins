.class final Lcom/umeng/update/net/j$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:J


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/umeng/update/net/j$1;->a:Ljava/io/File;

    iput-wide p2, p0, Lcom/umeng/update/net/j$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/umeng/update/net/j$1;->a:Ljava/io/File;

    iget-wide v2, p0, Lcom/umeng/update/net/j$1;->b:J

    invoke-static {v0, v2, v3}, Lcom/umeng/update/net/j;->a(Ljava/io/File;J)V

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/net/j;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 260
    return-void
.end method
