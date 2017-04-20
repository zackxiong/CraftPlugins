.class public Lcom/yf/smart/weloopx/android/broadcasts/BootReceiver;
.super Lcom/yf/gattlib/d/a;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/gattlib/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/yf/smart/weloopx/android/a/a;->a()Lcom/yf/smart/weloopx/android/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/a/a;->a(I)V

    .line 16
    invoke-super {p0, p1, p2}, Lcom/yf/gattlib/d/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 17
    return-void
.end method
