.class public Lcom/yf/smart/weloopx/view/l;
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
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 30
    const v1, 0x7f0300a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/l;->d:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->d:Landroid/view/View;

    const v1, 0x7f0d02a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/l;->a:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->d:Landroid/view/View;

    const v1, 0x7f0d02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/l;->b:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->d:Landroid/view/View;

    const v1, 0x7f0d01a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/l;->c:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yf/smart/weloopx/view/m;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/view/m;-><init>(Lcom/yf/smart/weloopx/view/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->b:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/l;->setContentView(Landroid/view/View;)V

    .line 48
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/l;->setWidth(I)V

    .line 50
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/l;->setHeight(I)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/l;->setFocusable(Z)V

    .line 54
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/l;->setAnimationStyle(I)V

    .line 56
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/view/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->d:Landroid/view/View;

    new-instance v1, Lcom/yf/smart/weloopx/view/n;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/view/n;-><init>(Lcom/yf/smart/weloopx/view/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/view/l;)Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/l;->d:Landroid/view/View;

    return-object v0
.end method
