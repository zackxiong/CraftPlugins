.class Lcom/yf/smart/weloopx/activitys/s;
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
    .line 73
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/s;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/s;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    const-class v2, Lcom/yf/smart/weloopx/activitys/Login;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/s;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method
