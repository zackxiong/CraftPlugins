.class public Lorg/a/a/r;
.super Lorg/a/a/f;
.source "ProGuard"


# instance fields
.field protected k:J

.field protected l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/a/a/f;-><init>()V

    .line 42
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/a/a/r;->k:J

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/r;->l:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/a/a/h;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/a/a/f;-><init>(Lorg/a/a/h;Ljava/lang/String;)V

    .line 42
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lorg/a/a/r;->k:J

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/r;->l:I

    .line 81
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lorg/a/a/r;->l:I

    .line 187
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 203
    iput-wide p1, p0, Lorg/a/a/r;->k:J

    .line 204
    return-void
.end method

.method protected a(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lorg/a/a/b/c;

    iget-object v1, p0, Lorg/a/a/b;->e:Lorg/a/a/d/d;

    invoke-direct {v0, p1, v1}, Lorg/a/a/b/c;-><init>(Ljava/io/Writer;Lorg/a/a/d/d;)V

    iput-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    .line 226
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;ZZI)V
    .locals 4

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/a/a/f;->i:Z

    iget v1, p0, Lorg/a/a/f;->j:I

    invoke-super {p0, p1, p2, v0, v1}, Lorg/a/a/f;->a(Ljava/lang/String;ZZI)V

    .line 168
    if-eqz p2, :cond_0

    .line 169
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    check-cast v0, Lorg/a/a/b/c;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/a/a/b/c;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Lorg/a/a/d/j;)V
    .locals 4

    .prologue
    .line 236
    invoke-super {p0, p1}, Lorg/a/a/s;->c(Lorg/a/a/d/j;)V

    .line 237
    iget-object v0, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    check-cast v0, Lorg/a/a/b/c;

    invoke-virtual {v0}, Lorg/a/a/b/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/a/a/r;->k:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/a/a/r;->h()V

    .line 240
    :cond_0
    return-void
.end method

.method public h()V
    .locals 7

    .prologue
    const/16 v6, 0x2e

    const/4 v5, 0x1

    .line 121
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "rolling over count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    check-cast v0, Lorg/a/a/b/c;

    invoke-virtual {v0}, Lorg/a/a/b/c;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "maxBackupIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/a/a/r;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lorg/a/a/r;->l:I

    if-lez v0, :cond_4

    .line 129
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/a/a/r;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 134
    :cond_1
    iget v0, p0, Lorg/a/a/r;->l:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v5, :cond_3

    .line 135
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Renaming file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 134
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 144
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lorg/a/a/f;->c()V

    .line 148
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Renaming file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 156
    :cond_4
    :try_start_0
    iget-object v0, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/a/a/f;->i:Z

    iget v3, p0, Lorg/a/a/f;->j:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/a/a/r;->a(Ljava/lang/String;ZZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "setFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", false) call failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
