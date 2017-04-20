.class public Lorg/a/a/f;
.super Lorg/a/a/s;
.source "ProGuard"


# instance fields
.field protected a:Z

.field protected h:Ljava/lang/String;

.field protected i:Z

.field protected j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/a/a/s;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/f;->a:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/f;->i:Z

    .line 65
    const/16 v0, 0x2000

    iput v0, p0, Lorg/a/a/f;->j:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/a/a/h;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/a/a/f;-><init>(Lorg/a/a/h;Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/a/a/h;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lorg/a/a/s;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/f;->a:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lorg/a/a/f;->i:Z

    .line 65
    const/16 v0, 0x2000

    iput v0, p0, Lorg/a/a/f;->j:I

    .line 107
    iput-object p1, p0, Lorg/a/a/b;->b:Lorg/a/a/h;

    .line 108
    iget v0, p0, Lorg/a/a/f;->j:I

    invoke-virtual {p0, p2, p3, v1, v0}, Lorg/a/a/f;->a(Ljava/lang/String;ZZI)V

    .line 109
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lorg/a/a/b/n;

    iget-object v1, p0, Lorg/a/a/b;->e:Lorg/a/a/d/d;

    invoke-direct {v0, p1, v1}, Lorg/a/a/b/n;-><init>(Ljava/io/Writer;Lorg/a/a/d/d;)V

    iput-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    .line 330
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;ZZI)V
    .locals 3

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "setFile called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 279
    if-eqz p3, :cond_0

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/a/a/s;->a(Z)V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lorg/a/a/f;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/a/a/s;->a(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    .line 309
    if-eqz p3, :cond_3

    .line 310
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v1, p4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 312
    :goto_1
    invoke-virtual {p0, v0}, Lorg/a/a/f;->a(Ljava/io/Writer;)V

    .line 313
    iput-object p1, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    .line 314
    iput-boolean p2, p0, Lorg/a/a/f;->a:Z

    .line 315
    iput-boolean p3, p0, Lorg/a/a/f;->i:Z

    .line 316
    iput p4, p0, Lorg/a/a/f;->j:I

    .line 317
    invoke-virtual {p0}, Lorg/a/a/s;->m()V

    .line 318
    const-string v0, "setFile ended"

    invoke-static {v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 296
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_2

    .line 298
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 302
    :cond_1
    :try_start_4
    throw v0

    .line 305
    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    if-eqz v0, :cond_0

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/a/a/s;->o:Lorg/a/a/b/n;

    invoke-virtual {v0}, Ljava/io/FilterWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 188
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

.method public e()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/a/a/f;->a:Z

    iget-boolean v2, p0, Lorg/a/a/f;->i:Z

    iget v3, p0, Lorg/a/a/f;->j:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/a/a/f;->a(Ljava/lang/String;ZZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    iget-object v1, p0, Lorg/a/a/b;->e:Lorg/a/a/d/d;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lorg/a/a/f;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") call failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v1, v2, v0, v3}, Lorg/a/a/d/d;->a(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "File option not set for appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->c(Ljava/lang/String;)V

    .line 172
    const-string v0, "Are you using FileAppender instead of ConsoleAppender?"

    invoke-static {v0}, Lorg/a/a/b/h;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/a/a/f;->c()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/f;->h:Ljava/lang/String;

    .line 340
    invoke-super {p0}, Lorg/a/a/s;->g()V

    .line 341
    return-void
.end method
