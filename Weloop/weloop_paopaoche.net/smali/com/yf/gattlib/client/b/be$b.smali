.class public abstract Lcom/yf/gattlib/client/b/be$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/b/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yf/gattlib/client/b/be$b;->a:Ljava/lang/String;

    .line 29
    iput-wide p2, p0, Lcom/yf/gattlib/client/b/be$b;->b:J

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/client/b/be$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/gattlib/client/b/be$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/gattlib/client/b/be$b;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/yf/gattlib/client/b/be$b;->b:J

    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/yf/gattlib/client/b/be$b;->b:J

    return-wide v0
.end method

.method protected abstract a(Ljava/lang/String;J)V
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yf/gattlib/client/b/be$b;->a:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/yf/gattlib/client/b/be$b;->b:J

    .line 35
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/yf/gattlib/client/b/be;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/yf/gattlib/client/b/bj;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/client/b/bj;-><init>(Lcom/yf/gattlib/client/b/be$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
