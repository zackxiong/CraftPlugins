.class Lcom/yf/smart/weloopx/activitys/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;I)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/m;->b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iput p2, p0, Lcom/yf/smart/weloopx/activitys/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/m;->b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/m;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/m;->b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a:Landroid/widget/Button;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 227
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/m;->b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b:Landroid/widget/Button;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/m;->b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->b:Landroid/widget/Button;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 231
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/m;->b:Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;->a:Landroid/widget/Button;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
