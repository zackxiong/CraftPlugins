.class Lcom/yf/smart/weloopx/commons/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/commons/b;

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;Lcom/yf/smart/weloopx/commons/b;I)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/a;->c:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    iput-object p2, p0, Lcom/yf/smart/weloopx/commons/a;->a:Lcom/yf/smart/weloopx/commons/b;

    iput p3, p0, Lcom/yf/smart/weloopx/commons/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/a;->a:Lcom/yf/smart/weloopx/commons/b;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/yf/smart/weloopx/commons/a;->c:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    iget-object v1, v1, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a(Lcom/yf/smart/weloopx/commons/WhiteListActivity;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/a;->c:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->a:Lcom/yf/smart/weloopx/commons/WhiteListActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity;->a(Lcom/yf/smart/weloopx/commons/WhiteListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/commons/a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/a;->c:Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/WhiteListActivity$a;->notifyDataSetChanged()V

    .line 139
    return-void
.end method
