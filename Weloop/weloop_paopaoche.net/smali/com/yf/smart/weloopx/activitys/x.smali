.class Lcom/yf/smart/weloopx/activitys/x;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/w;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/w;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/x;->a:Lcom/yf/smart/weloopx/activitys/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/x;->a:Lcom/yf/smart/weloopx/activitys/w;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/x;->a:Lcom/yf/smart/weloopx/activitys/w;

    iget-object v1, v1, Lcom/yf/smart/weloopx/activitys/w;->a:Lcom/yf/smart/weloopx/activitys/ResetPassword;

    const v2, 0x7f070082

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/ResetPassword;->b(Lcom/yf/smart/weloopx/activitys/ResetPassword;Ljava/lang/String;)V

    .line 188
    return-void
.end method
