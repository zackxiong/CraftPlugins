.class Lcom/yf/smart/weloopx/android/ui/widget/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/r;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/r;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->c(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
