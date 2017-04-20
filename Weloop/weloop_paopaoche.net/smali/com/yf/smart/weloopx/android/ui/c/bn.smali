.class Lcom/yf/smart/weloopx/android/ui/c/bn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bl;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bl;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bn;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bn;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->c(Lcom/yf/smart/weloopx/android/ui/c/bl;)Lcom/yf/smart/weloopx/android/ui/a/h;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Friendmodel;

    .line 180
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bn;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/bl;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xfa7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/bn;->a:Lcom/yf/smart/weloopx/android/ui/c/bl;

    invoke-static {v4}, Lcom/yf/smart/weloopx/android/ui/c/bl;->d(Lcom/yf/smart/weloopx/android/ui/c/bl;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Landroid/app/FragmentManager;IIZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method
