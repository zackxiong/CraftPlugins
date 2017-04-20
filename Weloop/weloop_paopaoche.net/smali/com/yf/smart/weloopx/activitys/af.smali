.class Lcom/yf/smart/weloopx/activitys/af;
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
    .line 133
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/af;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/af;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/af;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    iget-object v0, v0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/af;->a:Lcom/yf/smart/weloopx/activitys/UserInfoSetting;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->c(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method
