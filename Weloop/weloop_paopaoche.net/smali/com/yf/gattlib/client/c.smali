.class public Lcom/yf/gattlib/client/c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/c$1;,
        Lcom/yf/gattlib/client/c$c;,
        Lcom/yf/gattlib/client/c$d;,
        Lcom/yf/gattlib/client/c$e;,
        Lcom/yf/gattlib/client/c$b;,
        Lcom/yf/gattlib/client/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/client/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yf/gattlib/client/c$a;

.field private c:I

.field private d:J

.field private e:Lcom/yf/gattlib/client/c$d;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/yf/gattlib/client/c$e;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/client/c$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yf/gattlib/client/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/gattlib/client/c;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/yf/gattlib/client/c$c;->a:Lcom/yf/gattlib/client/c;

    return-object v0
.end method

.method private a(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    sget-object v1, Lcom/yf/gattlib/client/i;->c:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const/4 v0, 0x1

    move v1, v0

    .line 165
    :goto_0
    iget-object v3, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    monitor-enter v3

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_8

    .line 167
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/c$b;

    invoke-interface {v0, p0, v1}, Lcom/yf/gattlib/client/c$b;->a(Lcom/yf/gattlib/client/c;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 147
    :cond_0
    sget-object v1, Lcom/yf/gattlib/client/i;->m:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    .line 149
    :cond_1
    sget-object v1, Lcom/yf/gattlib/client/i;->f:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const/4 v0, 0x3

    move v1, v0

    goto :goto_0

    .line 151
    :cond_2
    sget-object v1, Lcom/yf/gattlib/client/i;->g:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    const/16 v0, 0x9

    move v1, v0

    goto :goto_0

    .line 153
    :cond_3
    sget-object v1, Lcom/yf/gattlib/client/i;->h:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    const/4 v0, 0x4

    move v1, v0

    goto :goto_0

    .line 155
    :cond_4
    sget-object v1, Lcom/yf/gattlib/client/i;->i:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    const/4 v0, 0x5

    move v1, v0

    goto :goto_0

    .line 157
    :cond_5
    sget-object v1, Lcom/yf/gattlib/client/i;->k:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 158
    const/4 v0, 0x6

    move v1, v0

    goto :goto_0

    .line 159
    :cond_6
    sget-object v1, Lcom/yf/gattlib/client/i;->x:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 160
    const/4 v0, 0x7

    move v1, v0

    goto :goto_0

    .line 161
    :cond_7
    sget-object v1, Lcom/yf/gattlib/client/i;->j:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 162
    const/16 v0, 0x8

    move v1, v0

    goto :goto_0

    .line 169
    :cond_8
    :try_start_1
    monitor-exit v3

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    move v1, v0

    goto :goto_0
.end method

.method private a([B)V
    .locals 7

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v6, Lcom/yf/gattlib/client/c$d;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/yf/gattlib/client/c$d;-><init>(Lcom/yf/gattlib/client/c;Lcom/yf/gattlib/client/c$1;)V

    .line 333
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->a:I

    .line 334
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->b:I

    .line 335
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->c:I

    .line 336
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->d:I

    .line 337
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->e:I

    .line 338
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->f:I

    .line 339
    const/4 v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->g:I

    .line 340
    const/16 v0, 0x8

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->h:I

    .line 341
    const/16 v0, 0x9

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v6, Lcom/yf/gattlib/client/c$d;->i:I

    .line 342
    iput-object v6, p0, Lcom/yf/gattlib/client/c;->e:Lcom/yf/gattlib/client/c$d;

    .line 343
    new-instance v0, Ljava/util/GregorianCalendar;

    iget v1, v6, Lcom/yf/gattlib/client/c$d;->a:I

    iget v2, v6, Lcom/yf/gattlib/client/c$d;->b:I

    iget v3, v6, Lcom/yf/gattlib/client/c$d;->c:I

    iget v4, v6, Lcom/yf/gattlib/client/c$d;->d:I

    iget v5, v6, Lcom/yf/gattlib/client/c$d;->e:I

    iget v6, v6, Lcom/yf/gattlib/client/c$d;->f:I

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 346
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yf/gattlib/client/c;->d:J

    goto :goto_0
.end method

.method private b([B)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 350
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 359
    :goto_0
    return-object v0

    .line 354
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 359
    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 1

    .prologue
    .line 53
    if-nez p4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sget-object v0, Lcom/yf/gattlib/client/i;->c:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    const/4 v0, 0x0

    aget-byte v0, p4, v0

    iput v0, p0, Lcom/yf/gattlib/client/c;->c:I

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lcom/yf/gattlib/client/i;->m:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-direct {p0, p4}, Lcom/yf/gattlib/client/c;->a([B)V

    goto :goto_0

    .line 60
    :cond_3
    sget-object v0, Lcom/yf/gattlib/client/i;->f:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    invoke-direct {p0, p4}, Lcom/yf/gattlib/client/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->f:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_4
    sget-object v0, Lcom/yf/gattlib/client/i;->g:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    invoke-direct {p0, p4}, Lcom/yf/gattlib/client/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->g:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_5
    sget-object v0, Lcom/yf/gattlib/client/i;->h:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-direct {p0, p4}, Lcom/yf/gattlib/client/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->h:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_6
    sget-object v0, Lcom/yf/gattlib/client/i;->i:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    invoke-direct {p0, p4}, Lcom/yf/gattlib/client/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->i:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_7
    sget-object v0, Lcom/yf/gattlib/client/i;->k:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 69
    invoke-direct {p0, p4}, Lcom/yf/gattlib/client/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->j:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_8
    sget-object v0, Lcom/yf/gattlib/client/i;->x:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 71
    invoke-direct {p0, p4}, Lcom/yf/gattlib/client/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->l:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_9
    sget-object v0, Lcom/yf/gattlib/client/i;->j:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p4}, Lcom/yf/gattlib/client/c;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/c;->k:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private b(Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/client/c;->n:Z

    .line 293
    iget-object v1, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    .line 295
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 296
    new-instance v2, Lcom/yf/gattlib/client/c$e;

    invoke-direct {v2, p0, p1, p2}, Lcom/yf/gattlib/client/c$e;-><init>(Lcom/yf/gattlib/client/c;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-direct {p0}, Lcom/yf/gattlib/client/c;->l()V

    .line 299
    return-void

    .line 297
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 5

    .prologue
    .line 308
    iget-object v2, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfoGetter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yf/gattlib/client/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/yf/gattlib/client/c;->n:Z

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/client/c;->n:Z

    .line 313
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->b:Lcom/yf/gattlib/client/c$a;

    invoke-interface {v0, p0}, Lcom/yf/gattlib/client/c$a;->a(Lcom/yf/gattlib/client/c;)V

    .line 325
    :cond_0
    :goto_0
    monitor-exit v2

    .line 326
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/c$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    invoke-static {}, Lcom/yf/gattlib/client/b;->a()Lcom/yf/gattlib/client/b;

    move-result-object v1

    iget-object v3, v0, Lcom/yf/gattlib/client/c$e;->a:Ljava/util/UUID;

    iget-object v4, v0, Lcom/yf/gattlib/client/c$e;->b:Ljava/util/UUID;

    invoke-virtual {v1, v3, v4}, Lcom/yf/gattlib/client/b;->a(Ljava/util/UUID;Ljava/util/UUID;)V
    :try_end_1
    .catch Lcom/yf/gattlib/e/e; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    :try_start_2
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    .line 321
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/f/b;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/yf/gattlib/client/c$e;->a:Ljava/util/UUID;

    iget-object v0, v0, Lcom/yf/gattlib/client/c$e;->b:Ljava/util/UUID;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v0, v4}, Lcom/yf/gattlib/client/c;->a(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/client/c$a;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yf/gattlib/client/c;->b:Lcom/yf/gattlib/client/c$a;

    .line 127
    return-void
.end method

.method public a(Lcom/yf/gattlib/client/c$b;)V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    const-string v0, "DeviceInfoGetter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runGettingInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/c;->b(Ljava/lang/String;Ljava/util/UUID;Ljava/util/UUID;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/yf/gattlib/client/c;->a(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 49
    invoke-direct {p0}, Lcom/yf/gattlib/client/c;->l()V

    .line 50
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "DeviceInfoGetter"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/yf/gattlib/client/c;->c:I

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yf/gattlib/client/c;->d:J

    .line 175
    iput-object v2, p0, Lcom/yf/gattlib/client/c;->e:Lcom/yf/gattlib/client/c$d;

    .line 176
    iput-object v2, p0, Lcom/yf/gattlib/client/c;->f:Ljava/lang/String;

    .line 177
    iput-object v2, p0, Lcom/yf/gattlib/client/c;->g:Ljava/lang/String;

    .line 178
    iput-object v2, p0, Lcom/yf/gattlib/client/c;->h:Ljava/lang/String;

    .line 179
    iput-object v2, p0, Lcom/yf/gattlib/client/c;->i:Ljava/lang/String;

    .line 180
    iput-object v2, p0, Lcom/yf/gattlib/client/c;->j:Ljava/lang/String;

    .line 181
    iput-object v2, p0, Lcom/yf/gattlib/client/c;->l:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/yf/gattlib/client/c$b;)V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/yf/gattlib/client/c;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 5

    .prologue
    .line 249
    const-string v0, "DeviceInfoGetter"

    const-string v1, "runGettingInfo"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/client/c;->n:Z

    .line 251
    iget-object v1, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/c;->m:Ljava/util/Stack;

    .line 253
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 254
    new-instance v2, Lcom/yf/gattlib/client/c$e;

    sget-object v3, Lcom/yf/gattlib/client/i;->b:Ljava/util/UUID;

    sget-object v4, Lcom/yf/gattlib/client/i;->c:Ljava/util/UUID;

    invoke-direct {v2, p0, v3, v4}, Lcom/yf/gattlib/client/c$e;-><init>(Lcom/yf/gattlib/client/c;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v2, Lcom/yf/gattlib/client/c$e;

    sget-object v3, Lcom/yf/gattlib/client/i;->l:Ljava/util/UUID;

    sget-object v4, Lcom/yf/gattlib/client/i;->m:Ljava/util/UUID;

    invoke-direct {v2, p0, v3, v4}, Lcom/yf/gattlib/client/c$e;-><init>(Lcom/yf/gattlib/client/c;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v2, Lcom/yf/gattlib/client/c$e;

    sget-object v3, Lcom/yf/gattlib/client/i;->e:Ljava/util/UUID;

    sget-object v4, Lcom/yf/gattlib/client/i;->j:Ljava/util/UUID;

    invoke-direct {v2, p0, v3, v4}, Lcom/yf/gattlib/client/c$e;-><init>(Lcom/yf/gattlib/client/c;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v2, Lcom/yf/gattlib/client/c$e;

    sget-object v3, Lcom/yf/gattlib/client/i;->e:Ljava/util/UUID;

    sget-object v4, Lcom/yf/gattlib/client/i;->k:Ljava/util/UUID;

    invoke-direct {v2, p0, v3, v4}, Lcom/yf/gattlib/client/c$e;-><init>(Lcom/yf/gattlib/client/c;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v2, Lcom/yf/gattlib/client/c$e;

    sget-object v3, Lcom/yf/gattlib/client/i;->e:Ljava/util/UUID;

    sget-object v4, Lcom/yf/gattlib/client/i;->i:Ljava/util/UUID;

    invoke-direct {v2, p0, v3, v4}, Lcom/yf/gattlib/client/c$e;-><init>(Lcom/yf/gattlib/client/c;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v2, Lcom/yf/gattlib/client/c$e;

    sget-object v3, Lcom/yf/gattlib/client/i;->w:Ljava/util/UUID;

    sget-object v4, Lcom/yf/gattlib/client/i;->x:Ljava/util/UUID;

    invoke-direct {v2, p0, v3, v4}, Lcom/yf/gattlib/client/c$e;-><init>(Lcom/yf/gattlib/client/c;Ljava/util/UUID;Ljava/util/UUID;)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-direct {p0}, Lcom/yf/gattlib/client/c;->l()V

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/yf/gattlib/client/i;->e:Ljava/util/UUID;

    sget-object v1, Lcom/yf/gattlib/client/i;->i:Ljava/util/UUID;

    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/client/c;->b(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 268
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 276
    sget-object v0, Lcom/yf/gattlib/client/i;->l:Ljava/util/UUID;

    sget-object v1, Lcom/yf/gattlib/client/i;->m:Ljava/util/UUID;

    invoke-direct {p0, v0, v1}, Lcom/yf/gattlib/client/c;->b(Ljava/util/UUID;Ljava/util/UUID;)V

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    const-string v1, "DeviceInof[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "battery level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/yf/gattlib/client/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    iget-wide v2, p0, Lcom/yf/gattlib/client/c;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 369
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 370
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/yf/gattlib/client/c;->d:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    :goto_0
    const-string v1, "model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "MNS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "HRS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "FRS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "serial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "SRS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 372
    :cond_0
    iget-wide v2, p0, Lcom/yf/gattlib/client/c;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
