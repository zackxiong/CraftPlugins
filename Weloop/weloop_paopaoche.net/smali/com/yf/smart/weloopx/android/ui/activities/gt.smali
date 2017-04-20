.class Lcom/yf/smart/weloopx/android/ui/activities/gt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/c$b;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gt;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/client/c;I)V
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gt;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gt;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c:Lcom/yf/gattlib/a/b;

    const v2, 0x7f0702a2

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/a;->a(Lcom/yf/gattlib/a/b;I)V

    .line 252
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gt;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 253
    new-instance v0, Lcom/yf/gattlib/j/b;

    invoke-direct {v0}, Lcom/yf/gattlib/j/b;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gt;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/gu;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/activities/gu;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/gt;)V

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/j/b;->a(Landroid/app/Activity;Lcom/yf/gattlib/j/a;)Z

    .line 260
    invoke-virtual {p1, p0}, Lcom/yf/gattlib/client/c;->b(Lcom/yf/gattlib/client/c$b;)V

    .line 262
    :cond_0
    return-void
.end method
