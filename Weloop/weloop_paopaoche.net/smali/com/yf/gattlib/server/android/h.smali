.class Lcom/yf/gattlib/server/android/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/android/g;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/server/android/g;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/yf/gattlib/server/android/h;->a:Lcom/yf/gattlib/server/android/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yf/gattlib/server/android/h;->a:Lcom/yf/gattlib/server/android/g;

    iget-object v0, v0, Lcom/yf/gattlib/server/android/g;->a:Lcom/yf/gattlib/server/android/GattServerService;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/android/GattServerService;->a()V

    .line 281
    return-void
.end method
