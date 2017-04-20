.class Lcom/yf/smart/weloopx/android/ui/c/dc$a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/c/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dc;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dc;Lcom/yf/smart/weloopx/android/ui/c/dd;)V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/dc$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->e(Lcom/yf/smart/weloopx/android/ui/c/dc;)Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 638
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 648
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 653
    if-nez p2, :cond_0

    .line 654
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 658
    :cond_0
    const v0, 0x7f0d02c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 660
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc$a;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v1, p1, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Lcom/yf/smart/weloopx/android/ui/c/dc;ILcom/yf/smart/weloopx/android/ui/widget/o;)V

    .line 662
    return-object p2
.end method
