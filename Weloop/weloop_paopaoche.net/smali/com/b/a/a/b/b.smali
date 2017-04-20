.class public Lcom/b/a/a/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/b/b$b;,
        Lcom/b/a/a/b/b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/b/a/b/c;

.field private c:Lcom/b/a/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/b/g",
            "<",
            "Lcom/b/a/a/b/b$b;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private e:Lcom/b/a/a/d;


# direct methods
.method public constructor <init>(Lcom/b/a/a/d;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/b/b;->a:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/b;->d:Ljava/lang/Object;

    .line 52
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "globalConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    .line 54
    return-void
.end method

.method private a(Lcom/b/a/a/b/b$a;Lcom/b/a/a/c;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 394
    if-nez p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-object v0

    .line 396
    :cond_1
    iget-object v1, p1, Lcom/b/a/a/b/b$a;->a:Ljava/io/FileInputStream;

    if-eqz v1, :cond_4

    .line 397
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/b/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    :cond_2
    iget-object v0, p1, Lcom/b/a/a/b/b$a;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/b/d;->a(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_3
    iget-object v0, p1, Lcom/b/a/a/b/b$a;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/b/a/a/c;->a()Lcom/b/a/a/b/e;

    move-result-object v1

    invoke-virtual {p2}, Lcom/b/a/a/c;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/a/b/d;->a(Ljava/io/FileDescriptor;Lcom/b/a/a/b/e;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_4
    iget-object v1, p1, Lcom/b/a/a/b/b$a;->b:[B

    if-eqz v1, :cond_0

    .line 406
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/b/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 407
    :cond_5
    iget-object v0, p1, Lcom/b/a/a/b/b$a;->b:[B

    invoke-static {v0}, Lcom/b/a/a/b/d;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_6
    iget-object v0, p1, Lcom/b/a/a/b/b$a;->b:[B

    invoke-virtual {p2}, Lcom/b/a/a/c;->a()Lcom/b/a/a/b/e;

    move-result-object v1

    invoke-virtual {p2}, Lcom/b/a/a/c;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/a/b/d;->a([BLcom/b/a/a/b/e;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/b/a/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 419
    monitor-enter p0

    .line 420
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/b/a/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 422
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :try_start_2
    const-string v1, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 431
    packed-switch v1, :pswitch_data_0

    .line 445
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 446
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 447
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 448
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p3, v0

    .line 454
    :cond_0
    :goto_1
    monitor-exit p0

    return-object p3

    .line 433
    :pswitch_1
    const/16 v0, 0x5a

    .line 434
    goto :goto_0

    .line 436
    :pswitch_2
    const/16 v0, 0xb4

    .line 437
    goto :goto_0

    .line 439
    :pswitch_3
    const/16 v0, 0x10e

    .line 440
    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 426
    :catch_0
    move-exception v0

    goto :goto_1

    .line 431
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/b/a/a/c;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 210
    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p2}, Lcom/b/a/a/c;->h()Lcom/b/a/a/d/a;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Lcom/b/a/a/d/a;->a()Lcom/b/a/a/d/a;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/b/a/a/d/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 216
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Lcom/b/a/a/b/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/b/a/a/b/b$b;-><init>(Lcom/b/a/a/b/b;Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a/b/c;)V

    .line 218
    iget-object v1, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    invoke-virtual {v1, v0, p3, p4, p5}, Lcom/b/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 220
    :cond_1
    return-object p3
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/b/a/a/c;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v1}, Lcom/b/a/a/d;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    new-instance v1, Lcom/b/a/a/b/b$b;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/b/a/a/b/b$b;-><init>(Lcom/b/a/a/b/b;Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a/b/c;)V

    .line 233
    iget-object v0, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    invoke-virtual {v0, v1}, Lcom/b/a/b/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 235
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a$a;)Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/b/a/a/c;",
            "Lcom/b/a/a$a",
            "<*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v6, Lcom/b/a/a/b/b$a;

    const/4 v2, 0x0

    invoke-direct {v6, p0, v2}, Lcom/b/a/a/b/b$a;-><init>(Lcom/b/a/a/b/b;Lcom/b/a/a/b/c;)V

    .line 137
    const/4 v5, 0x0

    .line 138
    const/4 v4, 0x0

    .line 141
    const/4 v2, 0x0

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v3}, Lcom/b/a/a/d;->l()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 145
    iget-object v3, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    if-nez v3, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/b/a/a/b/b;->b()V

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_7

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v3, p1}, Lcom/b/a/b/c;->b(Ljava/lang/String;)Lcom/b/a/b/c$c;

    move-result-object v4

    .line 152
    if-nez v4, :cond_2

    .line 153
    iget-object v3, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v3, p1}, Lcom/b/a/b/c;->c(Ljava/lang/String;)Lcom/b/a/b/c$a;

    move-result-object v3

    .line 154
    if-eqz v3, :cond_2

    .line 155
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/b/a/b/c$a;->a(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 156
    iget-object v7, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v7}, Lcom/b/a/a/d;->b()Lcom/b/a/a/c/b;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, p1, v5, v0}, Lcom/b/a/a/c/b;->a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/b/a/a$a;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/b/a/a/b/b$a;->c:J

    .line 157
    invoke-static {v5}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 158
    iget-wide v8, v6, Lcom/b/a/a/b/b$a;->c:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 159
    invoke-virtual {v3}, Lcom/b/a/b/c$a;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    const/4 v2, 0x0

    .line 202
    invoke-static {v5}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v4}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 206
    :goto_0
    return-object v2

    .line 162
    :cond_1
    :try_start_2
    iget-wide v8, v6, Lcom/b/a/a/b/b$a;->c:J

    invoke-virtual {v3, v8, v9}, Lcom/b/a/b/c$a;->a(J)V

    .line 163
    invoke-virtual {v3}, Lcom/b/a/b/c$a;->a()V

    .line 165
    iget-object v3, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v3, p1}, Lcom/b/a/b/c;->b(Ljava/lang/String;)Lcom/b/a/b/c$c;

    move-result-object v4

    .line 168
    :cond_2
    if-eqz v4, :cond_3

    .line 169
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/b/a/b/c$c;->a(I)Ljava/io/FileInputStream;

    move-result-object v3

    iput-object v3, v6, Lcom/b/a/a/b/b$a;->a:Ljava/io/FileInputStream;

    .line 170
    invoke-direct {p0, v6, p2}, Lcom/b/a/a/b/b;->a(Lcom/b/a/a/b/b$a;Lcom/b/a/a/c;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 171
    if-nez v2, :cond_3

    .line 172
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, v6, Lcom/b/a/a/b/b$a;->a:Ljava/io/FileInputStream;

    .line 173
    iget-object v3, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v3, p1}, Lcom/b/a/b/c;->d(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    move-object v8, v4

    .line 183
    :goto_1
    if-nez v2, :cond_6

    .line 184
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    :try_start_5
    iget-object v2, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v2}, Lcom/b/a/a/d;->b()Lcom/b/a/a/c/b;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, p1, v3, v0}, Lcom/b/a/a/c/b;->a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/b/a/a$a;)J

    move-result-wide v4

    iput-wide v4, v6, Lcom/b/a/a/b/b$a;->c:J

    .line 186
    iget-wide v4, v6, Lcom/b/a/a/b/b$a;->c:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-gez v2, :cond_4

    .line 187
    const/4 v2, 0x0

    .line 202
    invoke-static {v3}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v8}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    .line 177
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v2, v3

    move-object v8, v4

    goto :goto_1

    .line 189
    :cond_4
    :try_start_7
    move-object v0, v3

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v6, Lcom/b/a/a/b/b$a;->b:[B

    .line 190
    invoke-direct {p0, v6, p2}, Lcom/b/a/a/b/b;->a(Lcom/b/a/a/b/b$a;Lcom/b/a/a/c;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v2

    move-object v9, v3

    .line 194
    :goto_3
    if-eqz v2, :cond_5

    .line 195
    :try_start_8
    invoke-direct {p0, p1, p2, v2}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;Lcom/b/a/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 196
    iget-wide v6, v6, Lcom/b/a/a/b/b$a;->c:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;Lcom/b/a/a/c;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v2

    .line 202
    :cond_5
    invoke-static {v9}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v8}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 199
    :catch_1
    move-exception v2

    move-object v3, v5

    .line 200
    :goto_4
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 202
    invoke-static {v3}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v4}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 206
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 202
    :catchall_0
    move-exception v2

    :goto_5
    invoke-static {v5}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v4}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    throw v2

    .line 202
    :catchall_1
    move-exception v2

    move-object v4, v8

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v4, v8

    move-object v5, v3

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v4, v8

    move-object v5, v9

    goto :goto_5

    :catchall_4
    move-exception v2

    move-object v5, v3

    goto :goto_5

    .line 199
    :catch_2
    move-exception v2

    move-object v3, v5

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v4, v8

    move-object v3, v5

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v4, v8

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v4, v8

    move-object v3, v9

    goto :goto_4

    .line 176
    :catch_6
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_2

    :cond_6
    move-object v9, v5

    goto :goto_3

    :cond_7
    move-object v8, v4

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/b/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/b/a/b/c;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    .line 249
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    if-eqz v0, :cond_1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/a/b/b;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    :goto_1
    new-instance v0, Lcom/b/a/a/b/c;

    iget-object v1, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v1}, Lcom/b/a/a/d;->g()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/a/b/c;-><init>(Lcom/b/a/a/b/b;I)V

    iput-object v0, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Lcom/b/a/a/c;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 262
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/d;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    .line 292
    :goto_0
    return-object v0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    if-nez v0, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/b/a/a/b/b;->b()V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    if-eqz v0, :cond_6

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0, p1}, Lcom/b/a/b/c;->b(Ljava/lang/String;)Lcom/b/a/b/c$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 270
    if-eqz v7, :cond_5

    .line 272
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {p2}, Lcom/b/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/b/a/b/c$c;->a(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/b/d;->a(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;Lcom/b/a/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 283
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0, p1}, Lcom/b/a/b/c;->a(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;Lcom/b/a/a/c;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 289
    invoke-static {v7}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 276
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v7, v0}, Lcom/b/a/b/c$c;->a(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/b/a/a/c;->a()Lcom/b/a/a/b/e;

    move-result-object v1

    invoke-virtual {p2}, Lcom/b/a/a/c;->g()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/b/a/a/b/d;->a(Ljava/io/FileDescriptor;Lcom/b/a/a/b/e;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 289
    :cond_5
    invoke-static {v7}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    :cond_6
    :goto_2
    move-object v0, v6

    .line 292
    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 287
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 289
    invoke-static {v1}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v6

    :goto_4
    invoke-static {v7}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 286
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method public b()V
    .locals 7

    .prologue
    .line 91
    iget-object v4, p0, Lcom/b/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/d;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0}, Lcom/b/a/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    :cond_1
    invoke-static {v5}, Lcom/b/a/f/e;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 96
    iget-object v0, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/d;->h()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 97
    cmp-long v6, v2, v0

    if-lez v6, :cond_3

    .line 99
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v5, v2, v3, v0, v1}, Lcom/b/a/b/c;->a(Ljava/io/File;IIJ)Lcom/b/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    .line 100
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    iget-object v1, p0, Lcom/b/a/a/b/b;->e:Lcom/b/a/a/d;

    invoke-virtual {v1}, Lcom/b/a/a/d;->m()Lcom/b/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)V

    .line 101
    const-string v0, "create disk cache success"

    invoke-static {v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v4

    .line 109
    return-void

    :cond_3
    move-wide v0, v2

    .line 97
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    .line 104
    const-string v1, "create disk cache error"

    invoke-static {v1, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/b/a/a/b/b;->c(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p1}, Lcom/b/a/a/b/b;->d(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/b/a/a/b/b;->d()V

    .line 301
    invoke-virtual {p0}, Lcom/b/a/a/b/b;->e()V

    .line 302
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    new-instance v0, Lcom/b/a/a/b/b$b;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/b/a/a/b/b$b;-><init>(Lcom/b/a/a/b/b;Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a/b/c;)V

    .line 333
    iget-object v1, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    if-eqz v1, :cond_0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    invoke-virtual {v1, v0}, Lcom/b/a/b/g;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    invoke-virtual {v1, v0}, Lcom/b/a/b/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/b/a/a/b/b;->c:Lcom/b/a/b/g;

    invoke-virtual {v0}, Lcom/b/a/b/g;->a()V

    .line 308
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/b/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0}, Lcom/b/a/b/c;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 344
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0, p1}, Lcom/b/a/b/c;->d(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 350
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lcom/b/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0}, Lcom/b/a/b/c;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0}, Lcom/b/a/b/c;->c()V

    .line 315
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0}, Lcom/b/a/b/c;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    .line 321
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    invoke-virtual {p0}, Lcom/b/a/a/b/b;->b()V

    .line 323
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/b/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0}, Lcom/b/a/b/c;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 366
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Lcom/b/a/a/b/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0}, Lcom/b/a/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    invoke-virtual {v0}, Lcom/b/a/b/c;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/b/a/a/b/b;->b:Lcom/b/a/b/c;

    .line 384
    :cond_1
    monitor-exit v1

    .line 385
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
