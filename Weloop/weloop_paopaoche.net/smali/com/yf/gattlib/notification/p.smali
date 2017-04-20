.class Lcom/yf/gattlib/notification/p;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/gattlib/notification/o;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/notification/o;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yf/gattlib/notification/p;->a:Lcom/yf/gattlib/notification/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yf/gattlib/notification/p;->a:Lcom/yf/gattlib/notification/o;

    invoke-static {v0}, Lcom/yf/gattlib/notification/o;->a(Lcom/yf/gattlib/notification/o;)V

    .line 138
    return-void
.end method
