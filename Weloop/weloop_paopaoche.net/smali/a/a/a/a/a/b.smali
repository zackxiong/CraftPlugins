.class public La/a/a/a/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lorg/a/a/i;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/a/a/i;->f:Lorg/a/a/i;

    iput-object v0, p0, La/a/a/a/a/b;->a:Lorg/a/a/i;

    .line 36
    const-string v0, "%d - [%p::%c::%C] - %m%n"

    iput-object v0, p0, La/a/a/a/a/b;->b:Ljava/lang/String;

    .line 37
    const-string v0, "%m%n"

    iput-object v0, p0, La/a/a/a/a/b;->c:Ljava/lang/String;

    .line 38
    const-string v0, "android-log4j.log"

    iput-object v0, p0, La/a/a/a/a/b;->d:Ljava/lang/String;

    .line 39
    const/4 v0, 0x5

    iput v0, p0, La/a/a/a/a/b;->e:I

    .line 40
    const-wide/32 v0, 0x80000

    iput-wide v0, p0, La/a/a/a/a/b;->f:J

    .line 41
    iput-boolean v2, p0, La/a/a/a/a/b;->g:Z

    .line 42
    iput-boolean v2, p0, La/a/a/a/a/b;->h:Z

    .line 43
    iput-boolean v2, p0, La/a/a/a/a/b;->i:Z

    .line 44
    iput-boolean v2, p0, La/a/a/a/a/b;->j:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/a/a/b;->k:Z

    .line 48
    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    .line 122
    invoke-static {}, Lorg/a/a/k;->h()Lorg/a/a/k;

    move-result-object v0

    .line 124
    new-instance v1, Lorg/a/a/n;

    invoke-virtual {p0}, La/a/a/a/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/a/a/n;-><init>(Ljava/lang/String;)V

    .line 127
    :try_start_0
    new-instance v2, Lorg/a/a/r;

    invoke-virtual {p0}, La/a/a/a/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/a/a/r;-><init>(Lorg/a/a/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    invoke-virtual {p0}, La/a/a/a/a/b;->f()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/a/a/r;->a(I)V

    .line 133
    invoke-virtual {p0}, La/a/a/a/a/b;->g()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/a/a/r;->a(J)V

    .line 134
    invoke-virtual {p0}, La/a/a/a/a/b;->h()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/a/a/r;->a(Z)V

    .line 136
    invoke-virtual {v0, v2}, Lorg/a/a/k;->a(Lorg/a/a/a;)V

    .line 137
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception configuring log system"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private n()V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lorg/a/a/k;->h()Lorg/a/a/k;

    move-result-object v0

    .line 141
    new-instance v1, Lorg/a/a/n;

    invoke-virtual {p0}, La/a/a/a/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/a/a/n;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v2, La/a/a/a/a/a;

    invoke-direct {v2, v1}, La/a/a/a/a/a;-><init>(Lorg/a/a/h;)V

    .line 144
    invoke-virtual {v0, v2}, Lorg/a/a/k;->a(Lorg/a/a/a;)V

    .line 145
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lorg/a/a/k;->h()Lorg/a/a/k;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, La/a/a/a/a/b;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Lorg/a/a/j;->a()Lorg/a/a/d/i;

    move-result-object v1

    invoke-interface {v1}, Lorg/a/a/d/i;->e()V

    .line 98
    :cond_0
    invoke-virtual {p0}, La/a/a/a/a/b;->l()Z

    move-result v1

    invoke-static {v1}, Lorg/a/a/b/h;->a(Z)V

    .line 100
    invoke-virtual {p0}, La/a/a/a/a/b;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-direct {p0}, La/a/a/a/a/b;->m()V

    .line 104
    :cond_1
    invoke-virtual {p0}, La/a/a/a/a/b;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0}, La/a/a/a/a/b;->n()V

    .line 108
    :cond_2
    invoke-virtual {p0}, La/a/a/a/a/b;->b()Lorg/a/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/a/a/k;->a(Lorg/a/a/i;)V

    .line 109
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 208
    iput p1, p0, La/a/a/a/a/b;->e:I

    .line 209
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 224
    iput-wide p1, p0, La/a/a/a/a/b;->f:J

    .line 225
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, La/a/a/a/a/b;->b:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public a(Lorg/a/a/i;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, La/a/a/a/a/b;->a:Lorg/a/a/i;

    .line 161
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, La/a/a/a/a/b;->h:Z

    .line 264
    return-void
.end method

.method public b()Lorg/a/a/i;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, La/a/a/a/a/b;->a:Lorg/a/a/i;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, La/a/a/a/a/b;->d:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, La/a/a/a/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, La/a/a/a/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, La/a/a/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, La/a/a/a/a/b;->e:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, La/a/a/a/a/b;->f:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, La/a/a/a/a/b;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, La/a/a/a/a/b;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, La/a/a/a/a/b;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, La/a/a/a/a/b;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, La/a/a/a/a/b;->k:Z

    return v0
.end method
