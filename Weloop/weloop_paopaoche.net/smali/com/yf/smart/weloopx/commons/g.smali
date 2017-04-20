.class Lcom/yf/smart/weloopx/commons/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/commons/f;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/commons/f;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/g;->a:Lcom/yf/smart/weloopx/commons/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/g;->a:Lcom/yf/smart/weloopx/commons/f;

    iget-object v0, v0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    new-instance v1, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;

    iget-object v2, p0, Lcom/yf/smart/weloopx/commons/g;->a:Lcom/yf/smart/weloopx/commons/f;

    iget-object v2, v2, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;-><init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;Lcom/yf/smart/weloopx/commons/c;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->a(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;)Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/g;->a:Lcom/yf/smart/weloopx/commons/f;

    iget-object v0, v0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->e(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/g;->a:Lcom/yf/smart/weloopx/commons/f;

    iget-object v1, v1, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->d(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/g;->a:Lcom/yf/smart/weloopx/commons/f;

    iget-object v0, v0, Lcom/yf/smart/weloopx/commons/f;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->f(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    return-void
.end method
