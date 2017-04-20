.class Lcom/yf/gattlib/server/android/GattServerService$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/server/android/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/server/android/GattServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/android/GattServerService;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/server/android/GattServerService;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/yf/gattlib/server/android/GattServerService$b;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/server/android/GattServerService;Lcom/yf/gattlib/server/android/g;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/yf/gattlib/server/android/GattServerService$b;-><init>(Lcom/yf/gattlib/server/android/GattServerService;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const-string v0, "destroy"

    return-object v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/yf/gattlib/b/d;->a()Lcom/yf/gattlib/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/b/d;->c()V

    .line 370
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->f()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/yf/gattlib/server/android/GattServerService$b;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v1}, Lcom/yf/gattlib/server/android/GattServerService;->e()V

    .line 373
    invoke-static {v0}, Lcom/yf/gattlib/server/android/f;->a(Ljava/lang/String;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/server/android/GattServerService$b;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/android/GattServerService;->c()V

    .line 376
    const/4 v0, 0x1

    return v0
.end method
