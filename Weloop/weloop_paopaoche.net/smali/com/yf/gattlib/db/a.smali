.class public Lcom/yf/gattlib/db/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static a()Lcom/yf/gattlib/db/a;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/yf/gattlib/db/a;

    invoke-direct {v0}, Lcom/yf/gattlib/db/a;-><init>()V

    .line 30
    const-string v1, "Unknown"

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->b:Ljava/lang/String;

    .line 31
    const-string v1, "Unknown"

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->a:Ljava/lang/String;

    .line 32
    const-string v1, "Unknown"

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->c:Ljava/lang/String;

    .line 33
    const-string v1, "Unknown"

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->d:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    const-string v2, "LastMusic2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const-string v2, "#&##&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 44
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/yf/gattlib/db/a;->b:Ljava/lang/String;

    .line 45
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/yf/gattlib/db/a;->a:Ljava/lang/String;

    .line 46
    const/4 v2, 0x2

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/yf/gattlib/db/a;->c:Ljava/lang/String;

    .line 47
    const/4 v2, 0x3

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/yf/gattlib/db/a;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/gattlib/db/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#&##&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/db/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#&##&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/db/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#&##&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/db/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "LastMusic2"

    invoke-virtual {v0, v2, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
