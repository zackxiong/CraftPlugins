.class Lcom/yf/smart/weloopx/activitys/t;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterStart;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterStart;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/t;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/t;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    const-class v2, Lcom/yf/smart/weloopx/activitys/ResetPassword;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "jumpType"

    const-string v2, "forgetPwd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/t;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
