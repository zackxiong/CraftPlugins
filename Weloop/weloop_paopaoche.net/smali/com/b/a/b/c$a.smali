.class public final Lcom/b/a/b/c$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/b/c$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/b/c;

.field private final b:Lcom/b/a/b/c$b;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/b/a/b/c;Lcom/b/a/b/c$b;)V
    .locals 1

    .prologue
    .line 807
    iput-object p1, p0, Lcom/b/a/b/c$a;->a:Lcom/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p2, p0, Lcom/b/a/b/c$a;->b:Lcom/b/a/b/c$b;

    .line 809
    invoke-static {p2}, Lcom/b/a/b/c$b;->e(Lcom/b/a/b/c$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/b/a/b/c$a;->c:[Z

    .line 810
    return-void

    .line 809
    :cond_0
    invoke-static {p1}, Lcom/b/a/b/c;->e(Lcom/b/a/b/c;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/b/a/b/c;Lcom/b/a/b/c$b;Lcom/b/a/b/d;)V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0, p1, p2}, Lcom/b/a/b/c$a;-><init>(Lcom/b/a/b/c;Lcom/b/a/b/c$b;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/b/c$a;)Lcom/b/a/b/c$b;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/b/a/b/c$a;->b:Lcom/b/a/b/c$b;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/b/c$a;Z)Z
    .locals 0

    .prologue
    .line 801
    iput-boolean p1, p0, Lcom/b/a/b/c$a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/b/a/b/c$a;)[Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/b/a/b/c$a;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 853
    iget-object v2, p0, Lcom/b/a/b/c$a;->a:Lcom/b/a/b/c;

    monitor-enter v2

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c$a;->b:Lcom/b/a/b/c$b;

    invoke-static {v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 855
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 857
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/b/c$a;->b:Lcom/b/a/b/c$b;

    invoke-static {v0}, Lcom/b/a/b/c$b;->e(Lcom/b/a/b/c$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/b/a/b/c$a;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/b/a/b/c$a;->b:Lcom/b/a/b/c$b;

    invoke-virtual {v0, p1}, Lcom/b/a/b/c$b;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 863
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 874
    :goto_0
    :try_start_3
    new-instance v0, Lcom/b/a/b/c$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/b/a/b/c$a$a;-><init>(Lcom/b/a/b/c$a;Ljava/io/OutputStream;Lcom/b/a/b/d;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 864
    :catch_0
    move-exception v0

    .line 866
    iget-object v0, p0, Lcom/b/a/b/c$a;->a:Lcom/b/a/b/c;

    invoke-static {v0}, Lcom/b/a/b/c;->f(Lcom/b/a/b/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 868
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v0

    .line 872
    goto :goto_0

    .line 869
    :catch_1
    move-exception v0

    .line 871
    :try_start_5
    invoke-static {}, Lcom/b/a/b/c;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 896
    iget-boolean v0, p0, Lcom/b/a/b/c$a;->d:Z

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/b/a/b/c$a;->a:Lcom/b/a/b/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/c;Lcom/b/a/b/c$a;Z)V

    .line 898
    iget-object v0, p0, Lcom/b/a/b/c$a;->a:Lcom/b/a/b/c;

    iget-object v1, p0, Lcom/b/a/b/c$a;->b:Lcom/b/a/b/c$b;

    invoke-static {v1}, Lcom/b/a/b/c$b;->c(Lcom/b/a/b/c$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/c;Ljava/lang/String;)Z

    .line 902
    :goto_0
    iput-boolean v2, p0, Lcom/b/a/b/c$a;->e:Z

    .line 903
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/b/a/b/c$a;->a:Lcom/b/a/b/c;

    invoke-static {v0, p0, v2}, Lcom/b/a/b/c;->a(Lcom/b/a/b/c;Lcom/b/a/b/c$a;Z)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/b/a/b/c$a;->b:Lcom/b/a/b/c$b;

    invoke-static {v0, p1, p2}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;J)J

    .line 814
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/b/a/b/c$a;->a:Lcom/b/a/b/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/c;Lcom/b/a/b/c$a;Z)V

    .line 911
    return-void
.end method
