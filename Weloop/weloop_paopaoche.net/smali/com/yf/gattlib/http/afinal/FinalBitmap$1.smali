.class Lcom/yf/gattlib/http/afinal/FinalBitmap$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/http/afinal/FinalBitmap;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalBitmap$1;->this$0:Lcom/yf/gattlib/http/afinal/FinalBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 279
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 280
    return-object v0
.end method
