.class public Lcom/yf/gattlib/p/j;
.super Landroid/os/Handler;
.source "ProGuard"


# static fields
.field private static b:I


# instance fields
.field private a:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/yf/gattlib/p/j;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    iput-object p1, p0, Lcom/yf/gattlib/p/j;->a:Landroid/os/HandlerThread;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yf/gattlib/p/j;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 16
    new-instance v1, Lcom/yf/gattlib/p/j;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/p/j;-><init>(Landroid/os/HandlerThread;)V

    return-object v1
.end method
