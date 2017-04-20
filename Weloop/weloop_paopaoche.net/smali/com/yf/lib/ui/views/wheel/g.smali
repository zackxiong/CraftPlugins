.class Lcom/yf/lib/ui/views/wheel/g;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/lib/ui/views/wheel/f;


# direct methods
.method constructor <init>(Lcom/yf/lib/ui/views/wheel/f;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yf/lib/ui/views/wheel/g;->a:Lcom/yf/lib/ui/views/wheel/f;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/g;->a:Lcom/yf/lib/ui/views/wheel/f;

    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/wheel/f;->a(Lcom/yf/lib/ui/views/wheel/f;I)I

    .line 172
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/g;->a:Lcom/yf/lib/ui/views/wheel/f;

    invoke-static {v0}, Lcom/yf/lib/ui/views/wheel/f;->b(Lcom/yf/lib/ui/views/wheel/f;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/lib/ui/views/wheel/g;->a:Lcom/yf/lib/ui/views/wheel/f;

    invoke-static {v2}, Lcom/yf/lib/ui/views/wheel/f;->a(Lcom/yf/lib/ui/views/wheel/f;)I

    move-result v2

    neg-float v3, p4

    float-to-int v4, v3

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 173
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/g;->a:Lcom/yf/lib/ui/views/wheel/f;

    invoke-static {v0, v1}, Lcom/yf/lib/ui/views/wheel/f;->b(Lcom/yf/lib/ui/views/wheel/f;I)V

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method
