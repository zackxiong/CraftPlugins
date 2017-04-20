.class Lcom/yf/lib/ui/views/wheel/f$a;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/ui/views/wheel/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yf/lib/ui/views/wheel/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yf/lib/ui/views/wheel/f;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/f$a;->a:Ljava/lang/ref/WeakReference;

    .line 208
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 212
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/wheel/f;

    .line 213
    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->b(Lcom/yf/lib/ui/views/wheel/f;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 217
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->b(Lcom/yf/lib/ui/views/wheel/f;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 218
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->a(Lcom/yf/lib/ui/views/wheel/f;)I

    move-result v2

    sub-int/2addr v2, v1

    .line 219
    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/wheel/f;->a(Lcom/yf/lib/ui/views/wheel/f;I)I

    .line 220
    if-eqz v2, :cond_1

    .line 221
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->c(Lcom/yf/lib/ui/views/wheel/f;)Lcom/yf/lib/ui/views/wheel/f$b;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/yf/lib/ui/views/wheel/f$b;->a(I)V

    .line 226
    :cond_1
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->b(Lcom/yf/lib/ui/views/wheel/f;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 227
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->b(Lcom/yf/lib/ui/views/wheel/f;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    .line 228
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->b(Lcom/yf/lib/ui/views/wheel/f;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 230
    :cond_2
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->b(Lcom/yf/lib/ui/views/wheel/f;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 231
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->d(Lcom/yf/lib/ui/views/wheel/f;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 232
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_4

    .line 233
    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->e(Lcom/yf/lib/ui/views/wheel/f;)V

    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {v0}, Lcom/yf/lib/ui/views/wheel/f;->b()V

    goto :goto_0
.end method
