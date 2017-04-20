.class public Lcom/yf/smart/weloopx/view/o;
.super Landroid/widget/PopupWindow;
.source "ProGuard"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    const v1, 0x7f0300a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/o;->d:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->d:Landroid/view/View;

    const v1, 0x7f0d02ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/o;->a:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->d:Landroid/view/View;

    const v1, 0x7f0d02ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/o;->b:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->d:Landroid/view/View;

    const v1, 0x7f0d01a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/o;->c:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/view/p;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/view/p;-><init>(Lcom/yf/smart/weloopx/view/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->b:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/o;->setContentView(Landroid/view/View;)V

    .line 49
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/o;->setWidth(I)V

    .line 51
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/o;->setHeight(I)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/o;->setFocusable(Z)V

    .line 55
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/o;->setAnimationStyle(I)V

    .line 57
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->d:Landroid/view/View;

    new-instance v1, Lcom/yf/smart/weloopx/view/q;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/view/q;-><init>(Lcom/yf/smart/weloopx/view/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/view/o;)Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/o;->d:Landroid/view/View;

    return-object v0
.end method
