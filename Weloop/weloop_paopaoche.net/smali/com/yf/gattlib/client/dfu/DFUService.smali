.class public Lcom/yf/gattlib/client/dfu/DFUService;
.super Landroid/app/Service;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/dfu/DFUService$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Lcom/yf/gattlib/client/dfu/DFUService$a;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/dfu/DFUService$a;-><init>(Lcom/yf/gattlib/client/dfu/DFUService;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/dfu/DFUService;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/DFUService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 16
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/yf/gattlib/client/dfu/b;->a()Lcom/yf/gattlib/client/dfu/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/b;->f()V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
