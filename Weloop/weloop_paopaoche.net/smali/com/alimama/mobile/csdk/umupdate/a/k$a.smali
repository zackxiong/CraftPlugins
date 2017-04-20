.class public Lcom/alimama/mobile/csdk/umupdate/a/k$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/umeng/update/net/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alimama/mobile/csdk/umupdate/a/k;

.field private b:Ljava/lang/String;

.field private c:Lcom/umeng/update/net/b;


# direct methods
.method public constructor <init>(Lcom/alimama/mobile/csdk/umupdate/a/k;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->a:Lcom/alimama/mobile/csdk/umupdate/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/alimama/mobile/csdk/umupdate/a/k;->a(Lcom/alimama/mobile/csdk/umupdate/a/k;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->b:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/alimama/mobile/csdk/umupdate/a/k;->b(Lcom/alimama/mobile/csdk/umupdate/a/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/update/net/b;->a(Landroid/content/Context;)Lcom/umeng/update/net/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->c:Lcom/umeng/update/net/b;

    .line 57
    return-void
.end method


# virtual methods
.method public onEnd(IILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 82
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/a/k;->b()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XpDownloadListener.onEndresult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    if-ne p1, v5, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->c:Lcom/umeng/update/net/b;

    const-string v1, "xp"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/update/net/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/a/k;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "XpDownloadListener.onProgressUpdate"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/a/k;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "XpDownloadListener.onStart"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    sget-boolean v0, Lcom/alimama/mobile/csdk/umupdate/a/i;->g:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->a:Lcom/alimama/mobile/csdk/umupdate/a/k;

    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/a/k;->b(Lcom/alimama/mobile/csdk/umupdate/a/k;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/mobile/b;->d()Lcom/alimama/mobile/csdk/umupdate/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/a/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->a:Lcom/alimama/mobile/csdk/umupdate/a/k;

    invoke-static {v2}, Lcom/alimama/mobile/csdk/umupdate/a/k;->a(Lcom/alimama/mobile/csdk/umupdate/a/k;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    move-result-object v2

    iget-object v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->a:Lcom/alimama/mobile/csdk/umupdate/a/k;

    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/a/k;->c(Lcom/alimama/mobile/csdk/umupdate/a/k;)Lcom/alimama/mobile/csdk/umupdate/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/b/c;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/b/c;-><init>()V

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->a:Lcom/alimama/mobile/csdk/umupdate/a/k;

    invoke-static {v1}, Lcom/alimama/mobile/csdk/umupdate/a/k;->c(Lcom/alimama/mobile/csdk/umupdate/a/k;)Lcom/alimama/mobile/csdk/umupdate/b/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/b/c;->a(Lc/a/e;Lc/a/d$a;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->c:Lcom/umeng/update/net/b;

    const-string v1, "xp"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/k$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/update/net/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    return-void
.end method

.method public onStatus(I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
