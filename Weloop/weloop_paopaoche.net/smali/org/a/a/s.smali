.class public Lorg/a/a/s;
.super Lorg/a/a/b;
.source "ProGuard"


# instance fields
.field protected m:Z

.field protected n:Ljava/lang/String;

.field protected o:Lorg/a/a/b/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/a/a/b;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/s;->m:Z

    .line 74
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;
    .locals 3

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0}, Lorg/a/a/s;->k()Ljava/lang/String;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_1

    .line 235
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 244
    :cond_0
    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const-string v0, "Error initializing output writer."

    invoke-static {v0}, Lorg/a/a/b/h;->c(Ljava/lang/String;)V

    .line 238
    const-string v0, "Unsupported encoding?"

    invoke-static {v0}, Lorg/a/a/b/h;->c(Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/a/a/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/a/a/b;->g:Z

    .line 203
    invoke-virtual {p0}, Lorg/a/a/s;->l()V

    .line 204
    invoke-virtual {p0}, Lorg/a/a/s;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/a/a/d/j;)V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/a/a/s;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lorg/a/a/s;->c(Lorg/a/a/d/j;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lorg/a/a/s;->m:Z

    .line 114
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method protected c(Lorg/a/a/d/j;)V
    .locals 5

    .prologue
    .line 301
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    iget-object v1, p0, Lorg/a/a/b;->b:Lorg/a/a/h;

    invoke-virtual {v1, p1}, Lorg/a/a/h;->a(Lorg/a/a/d/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/a/a/b/n;->write(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lorg/a/a/b;->b:Lorg/a/a/h;

    invoke-virtual {v0}, Lorg/a/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p1}, Lorg/a/a/d/j;->i()[Ljava/lang/String;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_0

    .line 306
    array-length v2, v1

    .line 307
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 308
    iget-object v3, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lorg/a/a/b/n;->write(Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    sget-object v4, Lorg/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/a/a/b/n;->write(Ljava/lang/String;)V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    iget-boolean v0, p0, Lorg/a/a/s;->m:Z

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    invoke-virtual {v0}, Lorg/a/a/b/n;->flush()V

    .line 317
    :cond_1
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/a/a/s;->j()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    .line 340
    return-void
.end method

.method protected i()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-boolean v1, p0, Lorg/a/a/b;->g:Z

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "Not allowed to write to a closed appender."

    invoke-static {v1}, Lorg/a/a/b/h;->c(Ljava/lang/String;)V

    .line 185
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lorg/a/a/b;->e:Lorg/a/a/d/d;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No output stream or file set for the appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/a/a/d/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, p0, Lorg/a/a/b;->b:Lorg/a/a/h;

    if-nez v1, :cond_2

    .line 182
    iget-object v1, p0, Lorg/a/a/b;->e:Lorg/a/a/d/d;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No layout set for the appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/a/a/d/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected j()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    invoke-virtual {v0}, Ljava/io/FilterWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/a/a/s;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/a/a/b;->b:Lorg/a/a/h;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/a/a/b;->b:Lorg/a/a/h;

    invoke-virtual {v0}, Lorg/a/a/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    invoke-virtual {v1, v0}, Lorg/a/a/b/n;->write(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    invoke-virtual {v0}, Lorg/a/a/b/n;->flush()V

    .line 355
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/a/a/b;->b:Lorg/a/a/h;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/a/a/b;->b:Lorg/a/a/h;

    invoke-virtual {v0}, Lorg/a/a/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    invoke-virtual {v1, v0}, Lorg/a/a/b/n;->write(Ljava/lang/String;)V

    .line 367
    :cond_0
    return-void
.end method
