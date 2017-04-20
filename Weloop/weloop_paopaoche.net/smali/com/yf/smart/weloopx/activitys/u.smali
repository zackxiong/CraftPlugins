.class Lcom/yf/smart/weloopx/activitys/u;
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
    .line 93
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/u;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/u;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->a(Lcom/yf/smart/weloopx/activitys/RegisterStart;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/u;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/u;->a:Lcom/yf/smart/weloopx/activitys/RegisterStart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/RegisterStart;->a(Lcom/yf/smart/weloopx/activitys/RegisterStart;Z)Z

    .line 100
    return-void
.end method
