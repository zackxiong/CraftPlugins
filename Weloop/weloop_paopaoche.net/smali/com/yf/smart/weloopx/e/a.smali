.class public Lcom/yf/smart/weloopx/e/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/p/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/e/a$a;
    }
.end annotation


# static fields
.field private static final a:La/a/a/a/a/b;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, La/a/a/a/a/b;

    invoke-direct {v0}, La/a/a/a/a/b;-><init>()V

    sput-object v0, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yflog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/e/a;->b:Ljava/lang/String;

    .line 21
    const-string v0, "weloop.txt"

    sput-object v0, Lcom/yf/smart/weloopx/e/a;->c:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/yf/smart/weloopx/e/a;->e()V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic d()Lorg/a/a/k;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/yf/smart/weloopx/e/a;->f()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method private static e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 32
    const-string v0, "%d - [%c] - %p : %m%n"

    .line 34
    const-wide/32 v2, 0x300000

    .line 36
    sget-object v1, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/yf/smart/weloopx/e/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/yf/smart/weloopx/e/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, La/a/a/a/a/b;->b(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/b;->a(J)V

    .line 38
    sget-object v1, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    invoke-virtual {v1, v0}, La/a/a/a/a/b;->a(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    invoke-virtual {v0, v6}, La/a/a/a/a/b;->a(I)V

    .line 40
    sget-object v0, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    invoke-virtual {v0, v6}, La/a/a/a/a/b;->a(Z)V

    .line 41
    sget-object v0, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    sget-object v1, Lorg/a/a/i;->a:Lorg/a/a/i;

    invoke-virtual {v0, v1}, La/a/a/a/a/b;->a(Lorg/a/a/i;)V

    .line 42
    return-void
.end method

.method private static f()Lorg/a/a/k;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    sput-boolean v2, Lcom/yf/smart/weloopx/e/a;->d:Z

    .line 50
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/yf/smart/weloopx/e/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 57
    :try_start_0
    sget-object v1, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    invoke-virtual {v1}, La/a/a/a/a/b;->a()V

    .line 58
    const-string v1, "YF"

    invoke-static {v1}, Lorg/a/a/k;->b(Ljava/lang/String;)Lorg/a/a/k;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    sput-boolean v1, Lcom/yf/smart/weloopx/e/a;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    sput-boolean v2, Lcom/yf/smart/weloopx/e/a;->d:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/yf/smart/weloopx/e/a$a;->a()Lorg/a/a/k;

    move-result-object v0

    .line 74
    sget-boolean v1, Lcom/yf/smart/weloopx/e/a;->d:Z

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Lorg/a/a/k;->a(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/smart/weloopx/e/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a/a/a/a/b;->b(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/b;->b()Lorg/a/a/i;

    move-result-object v0

    sget-object v1, Lorg/a/a/i;->a:Lorg/a/a/i;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    invoke-virtual {v0}, La/a/a/a/a/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/yf/smart/weloopx/e/a;->a:La/a/a/a/a/b;

    sget-object v1, Lorg/a/a/i;->h:Lorg/a/a/i;

    invoke-virtual {v0, v1}, La/a/a/a/a/b;->a(Lorg/a/a/i;)V

    .line 98
    return-void
.end method
