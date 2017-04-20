.class final Lcom/b/a/b/c$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/b/c;

.field private final b:Ljava/lang/String;

.field private c:J

.field private final d:[J

.field private e:Z

.field private f:Lcom/b/a/b/c$a;

.field private g:J


# direct methods
.method private constructor <init>(Lcom/b/a/b/c;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 991
    iput-object p1, p0, Lcom/b/a/b/c$b;->a:Lcom/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/b/a/b/c$b;->c:J

    .line 992
    iput-object p2, p0, Lcom/b/a/b/c$b;->b:Ljava/lang/String;

    .line 993
    invoke-static {p1}, Lcom/b/a/b/c;->e(Lcom/b/a/b/c;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/b/a/b/c$b;->d:[J

    .line 994
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/b/c;Ljava/lang/String;Lcom/b/a/b/d;)V
    .locals 0

    .prologue
    .line 966
    invoke-direct {p0, p1, p2}, Lcom/b/a/b/c$b;-><init>(Lcom/b/a/b/c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/b/c$b;J)J
    .locals 1

    .prologue
    .line 966
    iput-wide p1, p0, Lcom/b/a/b/c$b;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/b/a/b/c$b;->f:Lcom/b/a/b/c$a;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/b/c$b;Lcom/b/a/b/c$a;)Lcom/b/a/b/c$a;
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/b/a/b/c$b;->f:Lcom/b/a/b/c$a;

    return-object p1
.end method

.method private a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 1022
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/b/a/b/c$b;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 966
    invoke-direct {p0, p1, p2}, Lcom/b/a/b/c$b;->a([Ljava/lang/String;I)V

    return-void
.end method

.method private a([Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1008
    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/b/a/b/c$b;->a:Lcom/b/a/b/c;

    invoke-static {v1}, Lcom/b/a/b/c;->e(Lcom/b/a/b/c;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1009
    invoke-direct {p0, p1}, Lcom/b/a/b/c$b;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1013
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/b/a/b/c$b;->a:Lcom/b/a/b/c;

    invoke-static {v1}, Lcom/b/a/b/c;->e(Lcom/b/a/b/c;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/b/a/b/c$b;->d:[J

    add-int v2, v0, p2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    invoke-direct {p0, p1}, Lcom/b/a/b/c$b;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1019
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/c$b;Z)Z
    .locals 0

    .prologue
    .line 966
    iput-boolean p1, p0, Lcom/b/a/b/c$b;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/b/a/b/c$b;J)J
    .locals 1

    .prologue
    .line 966
    iput-wide p1, p0, Lcom/b/a/b/c$b;->g:J

    return-wide p1
.end method

.method static synthetic b(Lcom/b/a/b/c$b;)[J
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/b/a/b/c$b;->d:[J

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/b/c$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/b/a/b/c$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/b/c$b;)J
    .locals 2

    .prologue
    .line 966
    iget-wide v0, p0, Lcom/b/a/b/c$b;->c:J

    return-wide v0
.end method

.method static synthetic e(Lcom/b/a/b/c$b;)Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/b/a/b/c$b;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/b/a/b/c$b;)J
    .locals 2

    .prologue
    .line 966
    iget-wide v0, p0, Lcom/b/a/b/c$b;->g:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 1026
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/b/c$b;->a:Lcom/b/a/b/c;

    invoke-static {v1}, Lcom/b/a/b/c;->f(Lcom/b/a/b/c;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/b/a/b/c$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    iget-object v2, p0, Lcom/b/a/b/c$b;->d:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 999
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 998
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .locals 4

    .prologue
    .line 1030
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/b/c$b;->a:Lcom/b/a/b/c;

    invoke-static {v1}, Lcom/b/a/b/c;->f(Lcom/b/a/b/c;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/b/a/b/c$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
