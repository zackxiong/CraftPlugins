.class public final Lcom/yf/gattlib/p/l;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/p/l$b;,
        Lcom/yf/gattlib/p/l$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "yf time out"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/gattlib/p/l;->a:Landroid/os/HandlerThread;

    .line 24
    iget-object v0, p0, Lcom/yf/gattlib/p/l;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 25
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/yf/gattlib/p/l;->c:I

    .line 26
    new-instance v0, Lcom/yf/gattlib/p/m;

    iget-object v1, p0, Lcom/yf/gattlib/p/l;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/p/m;-><init>(Lcom/yf/gattlib/p/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yf/gattlib/p/l;->b:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/p/m;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/yf/gattlib/p/l;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/gattlib/p/l;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/yf/gattlib/p/l$b;->a()Lcom/yf/gattlib/p/l;

    move-result-object v0

    return-object v0
.end method

.method private b(IJLcom/yf/gattlib/p/l$a;)I
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 44
    iput p1, v0, Landroid/os/Message;->what:I

    .line 45
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/yf/gattlib/p/l;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 47
    iget v0, v0, Landroid/os/Message;->what:I

    return v0
.end method


# virtual methods
.method public a(IJLcom/yf/gattlib/p/l$a;)I
    .locals 2

    .prologue
    .line 56
    if-lez p1, :cond_0

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/p/l;->b(IJLcom/yf/gattlib/p/l$a;)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/p/l;->a(ILcom/yf/gattlib/p/l$a;)V

    .line 64
    return-void
.end method

.method public a(ILcom/yf/gattlib/p/l$a;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/gattlib/p/l;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 68
    return-void
.end method
