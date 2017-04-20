.class Lcom/yf/smart/weloopx/activitys/ac;
.super Lcom/yf/smart/weloopx/b/b/t;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/app/DialogFragment;

.field final synthetic b:Lcom/yf/smart/weloopx/data/models/UserData;

.field final synthetic c:Lcom/yf/smart/weloopx/activitys/TargetSetting;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/activitys/TargetSetting;Landroid/app/DialogFragment;Lcom/yf/smart/weloopx/data/models/UserData;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/ac;->c:Lcom/yf/smart/weloopx/activitys/TargetSetting;

    iput-object p2, p0, Lcom/yf/smart/weloopx/activitys/ac;->a:Landroid/app/DialogFragment;

    iput-object p3, p0, Lcom/yf/smart/weloopx/activitys/ac;->b:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ac;->a:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 220
    invoke-static {p1}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "TargetSetting \u8bbe\u7f6e\u5b8c\u6210\u7f51\u7edc\u7aef\u7684\u8fd0\u52a8\u76ee\u6807\u540e\uff0c\u4fdd\u5b58\u672c\u5730\u4fe1\u606f"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->e()Lcom/yf/gattlib/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yf.weloopx.newtarget"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    .line 224
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ac;->b:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;)V

    .line 226
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ac;->c:Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/a;->b(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/DailyGain;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ac;->c:Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-static {v1}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->a(Lcom/yf/smart/weloopx/activitys/TargetSetting;)I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/data/models/DailyGain;->setCalorieGoal(D)V

    .line 228
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/a;->a(Lcom/yf/smart/weloopx/data/models/DailyGain;)V

    .line 229
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ac;->c:Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/ac;->c:Lcom/yf/smart/weloopx/activitys/TargetSetting;

    const v2, 0x7f070255

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/da;->a(Landroid/app/FragmentManager;Ljava/lang/String;)Z

    move-result v0

    .line 232
    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ac;->c:Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->b(Lcom/yf/smart/weloopx/activitys/TargetSetting;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ac;->c:Lcom/yf/smart/weloopx/activitys/TargetSetting;

    invoke-static {v0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->b(Lcom/yf/smart/weloopx/activitys/TargetSetting;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/ac;->a:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 244
    invoke-static {p1}, Lcom/yf/smart/weloopx/f/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 247
    :cond_0
    return-void
.end method
