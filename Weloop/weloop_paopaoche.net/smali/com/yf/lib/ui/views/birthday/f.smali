.class Lcom/yf/lib/ui/views/birthday/f;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/lib/ui/views/birthday/WheelView;


# direct methods
.method constructor <init>(Lcom/yf/lib/ui/views/birthday/WheelView;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 952
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 953
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 954
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->i(Lcom/yf/lib/ui/views/birthday/WheelView;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 955
    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v2, v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;I)I

    .line 956
    if-eqz v1, :cond_0

    .line 957
    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v2, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Lcom/yf/lib/ui/views/birthday/WheelView;I)V

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 963
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 964
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->j(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 973
    :goto_0
    return-void

    .line 968
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    .line 969
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->k(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    goto :goto_0

    .line 971
    :cond_3
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/f;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->c()V

    goto :goto_0
.end method
