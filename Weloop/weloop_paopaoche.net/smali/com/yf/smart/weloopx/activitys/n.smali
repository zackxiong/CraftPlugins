.class Lcom/yf/smart/weloopx/activitys/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/n;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/n;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V

    goto :goto_0

    .line 329
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/n;->a:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;)V

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x7f0d02a9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
