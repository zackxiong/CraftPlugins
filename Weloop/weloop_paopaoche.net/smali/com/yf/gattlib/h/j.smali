.class Lcom/yf/gattlib/h/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/yf/gattlib/h/i;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/h/i;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yf/gattlib/h/j;->b:Lcom/yf/gattlib/h/i;

    iput-object p2, p0, Lcom/yf/gattlib/h/j;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/h/j;->b:Lcom/yf/gattlib/h/i;

    iget-object v0, v0, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    invoke-static {v0}, Lcom/yf/gattlib/h/h;->b(Lcom/yf/gattlib/h/h;)Lcom/yf/gattlib/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/h/j;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/h/f;->b(Landroid/content/Intent;)Lcom/yf/gattlib/h/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. MusicMonitor content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/gattlib/h/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/yf/gattlib/h/j;->b:Lcom/yf/gattlib/h/i;

    iget-object v1, v1, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    invoke-static {v1, v0}, Lcom/yf/gattlib/h/h;->a(Lcom/yf/gattlib/h/h;Lcom/yf/gattlib/h/g;)V

    .line 189
    iget-object v0, p0, Lcom/yf/gattlib/h/j;->b:Lcom/yf/gattlib/h/i;

    iget-object v0, v0, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    invoke-static {v0, v4}, Lcom/yf/gattlib/h/h;->a(Lcom/yf/gattlib/h/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 190
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    invoke-static {}, Lcom/yf/gattlib/h/h;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extract error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/yf/gattlib/h/j;->b:Lcom/yf/gattlib/h/i;

    iget-object v0, v0, Lcom/yf/gattlib/h/i;->a:Lcom/yf/gattlib/h/h;

    invoke-static {v0, v4}, Lcom/yf/gattlib/h/h;->a(Lcom/yf/gattlib/h/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
