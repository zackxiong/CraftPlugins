.class Lcom/yf/smart/weloopx/activitys/r;
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
    .line 63
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/r;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/r;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    const-class v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/r;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
