.class Lcom/yf/gattlib/notification/NLService$a;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/notification/NLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/gattlib/notification/NLService;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/notification/NLService;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yf/gattlib/notification/NLService$a;->a:Lcom/yf/gattlib/notification/NLService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/notification/NLService;Lcom/yf/gattlib/notification/NLService$1;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/yf/gattlib/notification/NLService$a;-><init>(Lcom/yf/gattlib/notification/NLService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "com.yf.gattlib.intent.action.NLSERVICE_COMMAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLService$a;->a:Lcom/yf/gattlib/notification/NLService;

    invoke-static {v0, p1, p2}, Lcom/yf/gattlib/notification/NLService;->a(Lcom/yf/gattlib/notification/NLService;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {}, Lcom/yf/gattlib/notification/NLService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error in nlservice 1"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
