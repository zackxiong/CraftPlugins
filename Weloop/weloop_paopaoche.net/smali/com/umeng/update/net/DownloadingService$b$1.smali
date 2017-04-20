.class Lcom/umeng/update/net/DownloadingService$b$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/update/net/DownloadingService$b;


# direct methods
.method constructor <init>(Lcom/umeng/update/net/DownloadingService$b;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/umeng/update/net/DownloadingService$b$1;->a:Lcom/umeng/update/net/DownloadingService$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Lcom/umeng/update/net/DownloadingService$b$1;->a:Lcom/umeng/update/net/DownloadingService$b;

    iget-object v0, v0, Lcom/umeng/update/net/DownloadingService$b;->a:Lcom/umeng/update/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/update/net/DownloadingService$b$1;->a:Lcom/umeng/update/net/DownloadingService$b;

    .line 851
    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService$b;->a(Lcom/umeng/update/net/DownloadingService$b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc/a/l;->i(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    .line 848
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 853
    return-void
.end method
