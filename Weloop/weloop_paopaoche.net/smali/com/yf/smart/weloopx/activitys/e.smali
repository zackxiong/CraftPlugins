.class Lcom/yf/smart/weloopx/activitys/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/e;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/e;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    const-string v1, "title"

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/e;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    const v3, 0x7f0701cc

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "url"

    const-string v2, "http://www.weloop.cn/help/85.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/e;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method
