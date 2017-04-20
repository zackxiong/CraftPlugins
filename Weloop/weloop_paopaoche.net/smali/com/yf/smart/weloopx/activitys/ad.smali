.class Lcom/yf/smart/weloopx/activitys/ad;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/ad;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ad;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;I)I

    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ad;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ad;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method
