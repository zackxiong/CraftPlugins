.class Lcom/yf/smart/weloopx/activitys/ag;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/ag;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ag;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->d(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)V

    .line 191
    return-void
.end method
