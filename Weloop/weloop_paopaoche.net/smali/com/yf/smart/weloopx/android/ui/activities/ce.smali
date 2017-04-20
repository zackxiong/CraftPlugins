.class Lcom/yf/smart/weloopx/android/ui/activities/ce;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ce;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ce;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    check-cast p2, Lcom/yf/gattlib/client/dfu/DFUService$a;

    invoke-virtual {p2}, Lcom/yf/gattlib/client/dfu/DFUService$a;->a()Lcom/yf/gattlib/client/dfu/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/b;

    .line 103
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ce;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/client/dfu/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ce;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/dfu/b;->a(Lcom/yf/gattlib/client/dfu/f;)V

    .line 104
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ce;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/b;

    .line 109
    return-void
.end method
