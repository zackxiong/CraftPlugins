.class public Lcom/yf/gattlib/client/dfu/DFUService$a;
.super Landroid/os/Binder;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/dfu/DFUService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/gattlib/client/dfu/DFUService;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/client/dfu/DFUService;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yf/gattlib/client/dfu/DFUService$a;->a:Lcom/yf/gattlib/client/dfu/DFUService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yf/gattlib/client/dfu/b;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/yf/gattlib/client/dfu/b;->a()Lcom/yf/gattlib/client/dfu/b;

    move-result-object v0

    return-object v0
.end method
