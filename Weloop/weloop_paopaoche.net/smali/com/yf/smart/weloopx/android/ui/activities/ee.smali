.class Lcom/yf/smart/weloopx/android/ui/activities/ee;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ee;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ee;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->c(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Lcom/yf/smart/weloopx/android/ui/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ee;->a:Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;->b(Lcom/yf/smart/weloopx/android/ui/activities/MessageNotification;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/j;->a(Ljava/util/ArrayList;)V

    .line 216
    return-void
.end method
