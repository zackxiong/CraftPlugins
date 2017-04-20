.class Lcom/yf/smart/weloopx/commons/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/e;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;

    .line 103
    iget-object v1, v0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->h:Lcom/yf/smart/weloopx/commons/b;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/commons/b;->c()Z

    move-result v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    iget-object v1, v0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->h:Lcom/yf/smart/weloopx/commons/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/commons/b;->a(Z)V

    .line 107
    iget-object v0, v0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->e:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, v0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->h:Lcom/yf/smart/weloopx/commons/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/commons/b;->a(Z)V

    .line 110
    iget-object v0, v0, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$b;->e:Landroid/widget/ImageView;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
