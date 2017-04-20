.class Lcom/yf/smart/weloopx/android/ui/c/ck$a;
.super Landroid/widget/BaseAdapter;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/c/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ck;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ck;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ck$a;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ck;Lcom/yf/smart/weloopx/android/ui/c/cl;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/ck$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/ck;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck$a;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->b(Lcom/yf/smart/weloopx/android/ui/c/ck;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck$a;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->b(Lcom/yf/smart/weloopx/android/ui/c/ck;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ck$a;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 160
    check-cast v0, Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ck$a;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/ck;->b(Lcom/yf/smart/weloopx/android/ui/c/ck;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
