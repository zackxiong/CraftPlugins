.class Lcom/yf/smart/weloopx/android/ui/c/bx;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bt;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bt;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bx;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

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
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yf/smart/weloopx/data/models/RankingUser;

    .line 183
    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bx;->a:Lcom/yf/smart/weloopx/android/ui/c/bt;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/bt;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/RankingUser;->getUserId()I

    move-result v1

    const/16 v2, 0xfa7

    const-string v4, ""

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Landroid/app/FragmentManager;IIZLjava/lang/String;Z)V

    goto :goto_0
.end method
