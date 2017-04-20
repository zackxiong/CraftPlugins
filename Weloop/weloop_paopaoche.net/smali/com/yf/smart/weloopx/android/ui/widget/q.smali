.class Lcom/yf/smart/weloopx/android/ui/widget/q;
.super Landroid/view/View;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/q;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/q;->a:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->b(Lcom/yf/smart/weloopx/android/ui/widget/RulerView;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/q;->resolveSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/yf/smart/weloopx/android/ui/widget/q;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/q;->setMeasuredDimension(II)V

    .line 179
    return-void
.end method
