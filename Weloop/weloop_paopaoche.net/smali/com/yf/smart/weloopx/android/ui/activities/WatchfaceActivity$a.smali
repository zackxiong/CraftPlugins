.class Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;
.super Lcom/yf/smart/weloopx/android/ui/widget/u;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;)V
    .locals 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/u;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->b:I

    .line 84
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->c:I

    .line 86
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->d:I

    .line 88
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->e:I

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;Lcom/yf/smart/weloopx/android/ui/activities/hh;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->b:I

    return v0
.end method

.method public a(ILandroid/view/View;Z)V
    .locals 2

    .prologue
    .line 104
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->b:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->d:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    return-void

    .line 104
    :cond_0
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->c:I

    goto :goto_0

    .line 106
    :cond_1
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->e:I

    goto :goto_1
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030094

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 114
    :cond_0
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$a;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 118
    return-object p2
.end method
