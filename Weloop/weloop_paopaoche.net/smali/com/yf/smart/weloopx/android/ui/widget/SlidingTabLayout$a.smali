.class Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$1;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->b:I

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Lcom/yf/smart/weloopx/android/ui/widget/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/v;->a(IF)V

    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;II)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$f;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->a(I)V

    .line 194
    :cond_1
    return-void
.end method

.method public a(IFI)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Lcom/yf/smart/weloopx/android/ui/widget/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildCount()I

    move-result v0

    .line 157
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Lcom/yf/smart/weloopx/android/ui/widget/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/widget/v;->a(IF)V

    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Lcom/yf/smart/weloopx/android/ui/widget/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;II)V

    .line 169
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$f;->a(IFI)V

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 177
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->b:I

    .line 179
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$a;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->b(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$f;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$f;->b(I)V

    .line 182
    :cond_0
    return-void
.end method
