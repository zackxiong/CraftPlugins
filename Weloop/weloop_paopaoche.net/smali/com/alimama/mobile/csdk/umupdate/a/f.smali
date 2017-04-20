.class Lcom/alimama/mobile/csdk/umupdate/a/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/alimama/mobile/csdk/umupdate/a/b$c;


# direct methods
.method constructor <init>(Lcom/alimama/mobile/csdk/umupdate/a/b$c;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/a/f;->b:Lcom/alimama/mobile/csdk/umupdate/a/b$c;

    iput-object p2, p0, Lcom/alimama/mobile/csdk/umupdate/a/f;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/f;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/f;->b:Lcom/alimama/mobile/csdk/umupdate/a/b$c;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->a()V

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/f;->b:Lcom/alimama/mobile/csdk/umupdate/a/b$c;

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/a/b$c;->a()V

    throw v0
.end method
