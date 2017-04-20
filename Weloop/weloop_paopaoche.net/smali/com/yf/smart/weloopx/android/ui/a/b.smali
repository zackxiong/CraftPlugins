.class Lcom/yf/smart/weloopx/android/ui/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/a/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/a/a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/b;->a:Lcom/yf/smart/weloopx/android/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/b;->a:Lcom/yf/smart/weloopx/android/ui/a/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/a/a;->a(Lcom/yf/smart/weloopx/android/ui/a/a;)[Z

    move-result-object v4

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/b;->a:Lcom/yf/smart/weloopx/android/ui/a/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/a/a;->a(Lcom/yf/smart/weloopx/android/ui/a/a;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v4, v3

    .line 80
    check-cast p1, Lcom/yf/smart/weloopx/android/ui/widget/i;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/b;->a:Lcom/yf/smart/weloopx/android/ui/a/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/a/a;->a(Lcom/yf/smart/weloopx/android/ui/a/a;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/a/b;->a:Lcom/yf/smart/weloopx/android/ui/a/a;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/android/ui/a/a;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/i;->a(ZZ)V

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v1, v2

    .line 80
    goto :goto_1
.end method
