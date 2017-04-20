.class public Lcom/yf/smart/weloopx/a/b;
.super Lcom/yf/smart/weloopx/a/a;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/c/d;

.field private c:Lcom/yf/smart/weloopx/a/d;

.field private d:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yf/smart/weloopx/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/a/a;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/yf/smart/weloopx/a/d;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/a/b;->c:Lcom/yf/smart/weloopx/a/d;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/a/b;)Lcom/yf/smart/weloopx/a/d;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/b;->c:Lcom/yf/smart/weloopx/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/a/b;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yf/smart/weloopx/a/b;->d:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/a/b;)Lcom/yf/gattlib/c/d;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/b;->b:Lcom/yf/gattlib/c/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/b;->c:Lcom/yf/smart/weloopx/a/d;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/a/d;->d()Z

    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/b;->c:Lcom/yf/smart/weloopx/a/d;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/a/d;->d()Z

    move-result v0

    .line 45
    :cond_0
    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/yf/gattlib/e/d;

    const-string v1, "Can not download"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/b;->c:Lcom/yf/smart/weloopx/a/d;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/a/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/yf/smart/weloopx/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open firmware, filename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    new-instance v0, Lcom/yf/gattlib/e/d;

    const-string v1, "file name is null"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    new-instance v0, Lcom/yf/gattlib/e/d;

    const-string v1, "Firmware file is not exist"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Lcom/yf/gattlib/e/d;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/e/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/yf/gattlib/c/d;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yf/smart/weloopx/a/b;->b:Lcom/yf/gattlib/c/d;

    .line 70
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/b;->d:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/yf/smart/weloopx/a/c;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/a/c;-><init>(Lcom/yf/smart/weloopx/a/b;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/a/b;->d:Ljava/lang/Thread;

    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yf/smart/weloopx/a/b;->c:Lcom/yf/smart/weloopx/a/d;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/a/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
