.class Lcom/yf/smart/weloopx/android/ui/activities/db;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/db;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 479
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/db;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "can_not_the_same_time"

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/db;->a:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    const v3, 0x7f0700d6

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03004d

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 483
    return-void
.end method
