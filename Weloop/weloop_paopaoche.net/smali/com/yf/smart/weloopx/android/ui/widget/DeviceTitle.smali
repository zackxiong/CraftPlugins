.class public Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;
.super Landroid/widget/RelativeLayout;
.source "ProGuard"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030066

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    const v0, 0x7f0d016e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    const v0, 0x7f0d0210

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public setLeftOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
