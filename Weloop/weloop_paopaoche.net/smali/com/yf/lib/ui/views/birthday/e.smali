.class Lcom/yf/lib/ui/views/birthday/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/lib/ui/views/birthday/WheelView;


# direct methods
.method constructor <init>(Lcom/yf/lib/ui/views/birthday/WheelView;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 896
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Lcom/yf/lib/ui/views/birthday/WheelView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 898
    iget-object v1, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->c(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    .line 901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 915
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v2}, Lcom/yf/lib/ui/views/birthday/WheelView;->e(Lcom/yf/lib/ui/views/birthday/WheelView;)I

    move-result v2

    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v3}, Lcom/yf/lib/ui/views/birthday/WheelView;->f(Lcom/yf/lib/ui/views/birthday/WheelView;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v3}, Lcom/yf/lib/ui/views/birthday/WheelView;->g(Lcom/yf/lib/ui/views/birthday/WheelView;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;I)I

    .line 916
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    iget-boolean v0, v0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    if-eqz v0, :cond_0

    const v8, 0x7fffffff

    .line 918
    :goto_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    iget-boolean v0, v0, Lcom/yf/lib/ui/views/birthday/WheelView;->b:Z

    if-eqz v0, :cond_1

    neg-int v7, v8

    .line 919
    :goto_1
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->b(Lcom/yf/lib/ui/views/birthday/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v2}, Lcom/yf/lib/ui/views/birthday/WheelView;->i(Lcom/yf/lib/ui/views/birthday/WheelView;)I

    move-result v2

    neg-float v3, p4

    float-to-int v3, v3

    div-int/lit8 v4, v3, 0x2

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 921
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->c(Lcom/yf/lib/ui/views/birthday/WheelView;I)V

    .line 922
    const/4 v0, 0x1

    return v0

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->h(Lcom/yf/lib/ui/views/birthday/WheelView;)Lcom/yf/lib/ui/views/birthday/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/lib/ui/views/birthday/d;->a()I

    move-result v0

    iget-object v2, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v2}, Lcom/yf/lib/ui/views/birthday/WheelView;->f(Lcom/yf/lib/ui/views/birthday/WheelView;)I

    move-result v2

    mul-int v8, v0, v2

    goto :goto_0

    :cond_1
    move v7, v1

    .line 918
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    invoke-static {v0}, Lcom/yf/lib/ui/views/birthday/WheelView;->d(Lcom/yf/lib/ui/views/birthday/WheelView;)V

    .line 908
    iget-object v0, p0, Lcom/yf/lib/ui/views/birthday/e;->a:Lcom/yf/lib/ui/views/birthday/WheelView;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/birthday/WheelView;->a(Lcom/yf/lib/ui/views/birthday/WheelView;I)V

    .line 909
    const/4 v0, 0x1

    return v0
.end method
