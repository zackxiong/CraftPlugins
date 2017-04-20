.class Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$1;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;-><init>(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Lcom/yf/smart/weloopx/android/ui/widget/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->a(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Lcom/yf/smart/weloopx/android/ui/widget/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/v;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout$b;->a:Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;->c(Lcom/yf/smart/weloopx/android/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 207
    :cond_0
    return-void

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
