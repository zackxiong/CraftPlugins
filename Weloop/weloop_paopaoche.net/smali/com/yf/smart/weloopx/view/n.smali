.class Lcom/yf/smart/weloopx/view/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/l;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/n;->a:Lcom/yf/smart/weloopx/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/n;->a:Lcom/yf/smart/weloopx/view/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/l;->a(Lcom/yf/smart/weloopx/view/l;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 67
    if-ge v1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/n;->a:Lcom/yf/smart/weloopx/view/l;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/l;->dismiss()V

    .line 71
    :cond_0
    return v3
.end method
