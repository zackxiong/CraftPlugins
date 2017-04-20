.class Lcom/yf/smart/weloopx/view/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/o;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/o;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/q;->a:Lcom/yf/smart/weloopx/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/q;->a:Lcom/yf/smart/weloopx/view/o;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/o;->a(Lcom/yf/smart/weloopx/view/o;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 68
    if-ge v1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/q;->a:Lcom/yf/smart/weloopx/view/o;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/o;->dismiss()V

    .line 72
    :cond_0
    return v3
.end method
