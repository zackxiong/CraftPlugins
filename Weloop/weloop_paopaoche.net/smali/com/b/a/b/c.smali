.class public final Lcom/b/a/b/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/b/c$d;,
        Lcom/b/a/b/c$b;,
        Lcom/b/a/b/c$a;,
        Lcom/b/a/b/c$c;
    }
.end annotation


# static fields
.field private static final o:Ljava/io/OutputStream;


# instance fields
.field final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:Ljava/io/Writer;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/a/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:J

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/b/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 791
    new-instance v0, Lcom/b/a/b/e;

    invoke-direct {v0}, Lcom/b/a/b/e;-><init>()V

    sput-object v0, Lcom/b/a/b/c;->o:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide v4, p0, Lcom/b/a/b/c;->i:J

    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    .line 147
    iput-wide v4, p0, Lcom/b/a/b/c;->m:J

    .line 152
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/b/a/b/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 154
    new-instance v0, Lcom/b/a/b/d;

    invoke-direct {v0, p0}, Lcom/b/a/b/d;-><init>(Lcom/b/a/b/c;)V

    iput-object v0, p0, Lcom/b/a/b/c;->n:Ljava/util/concurrent/Callable;

    .line 1213
    new-instance v0, Lcom/b/a/b/h;

    invoke-direct {v0}, Lcom/b/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/c;->p:Lcom/b/a/b/a;

    .line 171
    iput-object p1, p0, Lcom/b/a/b/c;->b:Ljava/io/File;

    .line 172
    iput p2, p0, Lcom/b/a/b/c;->f:I

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/File;

    .line 174
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/b/c;->d:Ljava/io/File;

    .line 175
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/b/c;->e:Ljava/io/File;

    .line 176
    iput p3, p0, Lcom/b/a/b/c;->h:I

    .line 177
    iput-wide p4, p0, Lcom/b/a/b/c;->g:J

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/c;I)I
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/b/a/b/c;->l:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/b/a/b/c$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 518
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/a/b/c;->i()V

    .line 519
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c$b;

    .line 520
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/b/a/b/c$b;->f(Lcom/b/a/b/c$b;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 537
    :goto_0
    monitor-exit p0

    return-object v0

    .line 524
    :cond_1
    if-nez v0, :cond_2

    .line 525
    :try_start_1
    new-instance v0, Lcom/b/a/b/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/b/a/b/c$b;-><init>(Lcom/b/a/b/c;Ljava/lang/String;Lcom/b/a/b/d;)V

    .line 526
    iget-object v1, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 531
    :goto_1
    new-instance v0, Lcom/b/a/b/c$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/b/a/b/c$a;-><init>(Lcom/b/a/b/c;Lcom/b/a/b/c$b;Lcom/b/a/b/d;)V

    .line 532
    invoke-static {v1, v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;Lcom/b/a/b/c$a;)Lcom/b/a/b/c$a;

    .line 535
    iget-object v1, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "U "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 527
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 528
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/b/a/b/c;
    .locals 7

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    if-gtz p2, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 211
    :cond_2
    :goto_0
    new-instance v0, Lcom/b/a/b/c;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/a/b/c;-><init>(Ljava/io/File;IIJ)V

    .line 212
    iget-object v1, v0, Lcom/b/a/b/c;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    :try_start_0
    invoke-direct {v0}, Lcom/b/a/b/c;->e()V

    .line 215
    invoke-direct {v0}, Lcom/b/a/b/c;->f()V

    .line 216
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/b/a/b/c;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/b/a/b/c;->j:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_3
    :goto_1
    return-object v0

    .line 206
    :cond_4
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/b/a/b/c;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {v0}, Lcom/b/a/b/c;->c()V

    .line 230
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    :cond_6
    new-instance v0, Lcom/b/a/b/c;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/b/a/b/c;-><init>(Ljava/io/File;IIJ)V

    .line 232
    invoke-direct {v0}, Lcom/b/a/b/c;->g()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/b/a/b/c;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/b/a/b/c$a;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 574
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/b/a/b/c$a;->a(Lcom/b/a/b/c$a;)Lcom/b/a/b/c$b;

    move-result-object v2

    .line 575
    invoke-static {v2}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 580
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/b/a/b/c$b;->e(Lcom/b/a/b/c$b;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 581
    :goto_0
    iget v3, p0, Lcom/b/a/b/c;->h:I

    if-ge v1, v3, :cond_4

    .line 582
    invoke-static {p1}, Lcom/b/a/b/c$a;->b(Lcom/b/a/b/c$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 583
    invoke-virtual {p1}, Lcom/b/a/b/c$a;->b()V

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_1
    invoke-virtual {v2, v1}, Lcom/b/a/b/c$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 587
    invoke-virtual {p1}, Lcom/b/a/b/c$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 581
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/b/a/b/c;->h:I

    if-ge v0, v1, :cond_7

    .line 594
    invoke-virtual {v2, v0}, Lcom/b/a/b/c$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 595
    if-eqz p2, :cond_6

    .line 596
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 597
    invoke-virtual {v2, v0}, Lcom/b/a/b/c$b;->a(I)Ljava/io/File;

    move-result-object v3

    .line 598
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 599
    invoke-static {v2}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 600
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 601
    invoke-static {v2}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 602
    iget-wide v8, p0, Lcom/b/a/b/c;->i:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/b/a/b/c;->i:J

    .line 593
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 605
    :cond_6
    invoke-static {v1}, Lcom/b/a/b/c;->a(Ljava/io/File;)V

    goto :goto_3

    .line 609
    :cond_7
    iget v0, p0, Lcom/b/a/b/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/c;->l:I

    .line 610
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;Lcom/b/a/b/c$a;)Lcom/b/a/b/c$a;

    .line 611
    invoke-static {v2}, Lcom/b/a/b/c$b;->e(Lcom/b/a/b/c$b;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 612
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;Z)Z

    .line 613
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/b/a/b/c$b;->c(Lcom/b/a/b/c$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x74

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/b/a/b/c$b;->d(Lcom/b/a/b/c$b;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/b/a/b/c$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 614
    if-eqz p2, :cond_8

    .line 615
    iget-wide v0, p0, Lcom/b/a/b/c;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/b/a/b/c;->m:J

    invoke-static {v2, v0, v1}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;J)J

    .line 621
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 623
    iget-wide v0, p0, Lcom/b/a/b/c;->i:J

    iget-wide v2, p0, Lcom/b/a/b/c;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/b/a/b/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    :cond_9
    iget-object v0, p0, Lcom/b/a/b/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/b/a/b/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 618
    :cond_a
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/b/a/b/c$b;->c(Lcom/b/a/b/c$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/b/a/b/c$b;->c(Lcom/b/a/b/c$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method static synthetic a(Lcom/b/a/b/c;Lcom/b/a/b/c$a;Z)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/b/a/b/c;->a(Lcom/b/a/b/c$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 403
    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 406
    if-eqz p2, :cond_0

    .line 407
    invoke-static {p1}, Lcom/b/a/b/c;->a(Ljava/io/File;)V

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 412
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/c;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/b/a/b/c;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/b/a/b/c;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 1056
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1057
    if-nez v1, :cond_0

    .line 1058
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a readable directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 1061
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    invoke-static {v3}, Lcom/b/a/b/c;->b(Ljava/io/File;)V

    .line 1064
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1065
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/b/a/b/c;)Z
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/b/a/b/c;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/b/a/b/c;->o:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/b/c;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/b/a/b/c;->g()V

    return-void
.end method

.method static synthetic e(Lcom/b/a/b/c;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/b/a/b/c;->h:I

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    .line 238
    const/4 v2, 0x0

    .line 240
    :try_start_0
    new-instance v1, Lcom/b/a/b/c$d;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/b/a/b/c;->c:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v0}, Lcom/b/a/b/c$d;-><init>(Lcom/b/a/b/c;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    :try_start_1
    invoke-virtual {v1}, Lcom/b/a/b/c$d;->a()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v1}, Lcom/b/a/b/c$d;->a()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {v1}, Lcom/b/a/b/c$d;->a()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v1}, Lcom/b/a/b/c$d;->a()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v1}, Lcom/b/a/b/c$d;->a()Ljava/lang/String;

    move-result-object v5

    .line 246
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/b/a/b/c;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/b/a/b/c;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    throw v0

    .line 255
    :cond_1
    const/4 v0, 0x0

    .line 258
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/b/a/b/c$d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/b/a/b/c;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :catch_0
    move-exception v2

    .line 264
    :try_start_3
    iget-object v2, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/b/a/b/c;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    invoke-static {v1}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 268
    return-void

    .line 266
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v3, 0x20

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 273
    if-ne v0, v5, :cond_1

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 279
    add-int/lit8 v0, v0, 0x1

    .line 280
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 282
    const/4 v1, -0x1

    if-ne v3, v1, :cond_2

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    const/16 v1, 0x44

    if-ne v2, v1, :cond_5

    .line 285
    iget-object v1, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 276
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 292
    :goto_1
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c$b;

    .line 293
    if-nez v0, :cond_3

    .line 294
    new-instance v0, Lcom/b/a/b/c$b;

    invoke-direct {v0, p0, v1, v6}, Lcom/b/a/b/c$b;-><init>(Lcom/b/a/b/c;Ljava/lang/String;Lcom/b/a/b/d;)V

    .line 295
    iget-object v4, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 327
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :sswitch_1
    invoke-static {v0, v5}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;Z)Z

    .line 301
    invoke-static {v0, v6}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;Lcom/b/a/b/c$a;)Lcom/b/a/b/c$a;

    .line 302
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 303
    array-length v2, v1

    if-lez v2, :cond_0

    .line 305
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x74

    if-ne v2, v3, :cond_4

    .line 306
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;J)J

    .line 307
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    :try_start_1
    invoke-static {v0, v2, v3}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;J)J

    .line 310
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 319
    :sswitch_2
    new-instance v1, Lcom/b/a/b/c$a;

    invoke-direct {v1, p0, v0, v6}, Lcom/b/a/b/c$a;-><init>(Lcom/b/a/b/c;Lcom/b/a/b/c$b;Lcom/b/a/b/d;)V

    invoke-static {v0, v1}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;Lcom/b/a/b/c$a;)Lcom/b/a/b/c$a;

    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    goto/16 :goto_1

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
    .end sparse-switch
.end method

.method private declared-synchronized f(Ljava/lang/String;)Lcom/b/a/b/c$c;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 450
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/a/b/c;->i()V

    .line 451
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 456
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/b/a/b/c$b;->e(Lcom/b/a/b/c$b;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    invoke-static {v0}, Lcom/b/a/b/c$b;->d(Lcom/b/a/b/c$b;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    .line 462
    :goto_1
    iget v3, p0, Lcom/b/a/b/c;->h:I

    if-ge v2, v3, :cond_3

    .line 463
    invoke-virtual {v0, v2}, Lcom/b/a/b/c$b;->a(I)Ljava/io/File;

    move-result-object v3

    .line 464
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 465
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 467
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/b/a/b/c;->i:J

    invoke-static {v0}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/b/a/b/c;->i:J

    .line 468
    invoke-static {v0}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 470
    :cond_3
    iget v0, p0, Lcom/b/a/b/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/c;->l:I

    .line 471
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 472
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-direct {p0}, Lcom/b/a/b/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/b/a/b/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/b/a/b/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 482
    :cond_4
    iget v3, p0, Lcom/b/a/b/c;->h:I

    new-array v6, v3, [Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v2

    .line 484
    :goto_2
    :try_start_3
    iget v4, p0, Lcom/b/a/b/c;->h:I

    if-ge v3, v4, :cond_5

    .line 485
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/b/a/b/c$b;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 484
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 487
    :catch_0
    move-exception v0

    move v0, v2

    .line 489
    :goto_3
    :try_start_4
    iget v2, p0, Lcom/b/a/b/c;->h:I

    if-ge v0, v2, :cond_0

    .line 490
    aget-object v2, v6, v0

    if-eqz v2, :cond_0

    .line 491
    aget-object v2, v6, v0

    invoke-static {v2}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 499
    :cond_5
    iget v1, p0, Lcom/b/a/b/c;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/b/c;->l:I

    .line 500
    iget-object v1, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 501
    invoke-direct {p0}, Lcom/b/a/b/c;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 502
    iget-object v1, p0, Lcom/b/a/b/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/b/a/b/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 505
    :cond_6
    new-instance v1, Lcom/b/a/b/c$c;

    invoke-static {v0}, Lcom/b/a/b/c$b;->f(Lcom/b/a/b/c$b;)J

    move-result-wide v4

    invoke-static {v0}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/b/a/b/c$c;-><init>(Lcom/b/a/b/c;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/b/a/b/d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/b/a/b/c;)Ljava/io/File;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/b/a/b/c;->b:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/b/a/b/c;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/b/a/b/c;->a(Ljava/io/File;)V

    .line 338
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c$b;

    .line 340
    invoke-static {v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 341
    :goto_1
    iget v4, p0, Lcom/b/a/b/c;->h:I

    if-ge v1, v4, :cond_0

    .line 342
    iget-wide v4, p0, Lcom/b/a/b/c;->i:J

    invoke-static {v0}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/b/a/b/c;->i:J

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;Lcom/b/a/b/c$a;)Lcom/b/a/b/c$a;

    move v1, v2

    .line 346
    :goto_2
    iget v4, p0, Lcom/b/a/b/c;->h:I

    if-ge v1, v4, :cond_2

    .line 347
    invoke-virtual {v0, v1}, Lcom/b/a/b/c$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/b/a/b/c;->a(Ljava/io/File;)V

    .line 348
    invoke-virtual {v0, v1}, Lcom/b/a/b/c$b;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/b/a/b/c;->a(Ljava/io/File;)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 350
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 353
    :cond_3
    return-void
.end method

.method private declared-synchronized g()V
    .locals 6

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    invoke-static {v0}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 364
    :cond_0
    const/4 v2, 0x0

    .line 366
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/b/a/b/c;->d:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "US-ASCII"

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 368
    :try_start_2
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    iget v0, p0, Lcom/b/a/b/c;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    iget v0, p0, Lcom/b/a/b/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 376
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c$b;

    .line 379
    invoke-static {v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "U "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/b/a/b/c$b;->c(Lcom/b/a/b/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 382
    :cond_1
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/b/a/b/c$b;->c(Lcom/b/a/b/c$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x74

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/b/a/b/c$b;->d(Lcom/b/a/b/c$b;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/b/a/b/c$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 386
    :cond_2
    :try_start_5
    invoke-static {v1}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 389
    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/b/a/b/c;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/b/c;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/b/a/b/c;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/b/a/b/c;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/b/a/b/c;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/b/a/b/c;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 393
    iget-object v0, p0, Lcom/b/a/b/c;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 395
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/b/a/b/c;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 397
    monitor-exit p0

    return-void

    .line 386
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private declared-synchronized g(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 650
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/a/b/c;->i()V

    .line 651
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c$b;

    .line 652
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 673
    :goto_0
    monitor-exit p0

    return v0

    .line 661
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/b/a/b/c;->i:J

    invoke-static {v0}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/b/a/b/c;->i:J

    .line 662
    invoke-static {v0}, Lcom/b/a/b/c$b;->b(Lcom/b/a/b/c$b;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 656
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/b/a/b/c;->h:I

    if-ge v1, v2, :cond_3

    .line 657
    invoke-virtual {v0, v1}, Lcom/b/a/b/c$b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 658
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 659
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 665
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/b/a/b/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/c;->l:I

    .line 666
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "D "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 667
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-direct {p0}, Lcom/b/a/b/c;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/b/a/b/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/b/a/b/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 633
    .line 634
    iget v0, p0, Lcom/b/a/b/c;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/b/c;->l:I

    iget-object v1, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 717
    :goto_0
    iget-wide v0, p0, Lcom/b/a/b/c;->i:J

    iget-wide v2, p0, Lcom/b/a/b/c;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 719
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/b/a/b/c;->g(Ljava/lang/String;)Z

    goto :goto_0

    .line 721
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c;->p:Lcom/b/a/b/a;

    invoke-interface {v0, p1}, Lcom/b/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-direct {p0}, Lcom/b/a/b/c;->i()V

    .line 417
    iget-object v1, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    if-nez v0, :cond_0

    .line 419
    const-wide/16 v0, 0x0

    .line 421
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/b/a/b/c$b;->d(Lcom/b/a/b/c$b;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;I)Ljava/io/File;
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/b/a/b/c;->p:Lcom/b/a/b/a;

    invoke-interface {v0, p1}, Lcom/b/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/b/a/b/c;->b:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    :goto_0
    return-object v0

    .line 432
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/b/a/b/c;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/b/a/b/a;)V
    .locals 0

    .prologue
    .line 1220
    if-eqz p1, :cond_0

    .line 1221
    iput-object p1, p0, Lcom/b/a/b/c;->p:Lcom/b/a/b/a;

    .line 1223
    :cond_0
    return-void
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/b/a/b/c$c;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/b/a/b/c;->p:Lcom/b/a/b/a;

    invoke-interface {v0, p1}, Lcom/b/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-direct {p0, v0}, Lcom/b/a/b/c;->f(Ljava/lang/String;)Lcom/b/a/b/c$c;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/b/a/b/c;->i()V

    .line 694
    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    .line 695
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/b/a/b/c$a;
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/b/a/b/c;->p:Lcom/b/a/b/a;

    invoke-interface {v0, p1}, Lcom/b/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/b/a/b/c;->a(Ljava/lang/String;J)Lcom/b/a/b/c$a;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 729
    invoke-static {p0}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 730
    iget-object v0, p0, Lcom/b/a/b/c;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/b/a/b/c;->b(Ljava/io/File;)V

    .line 731
    return-void
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 714
    :goto_0
    monitor-exit p0

    return-void

    .line 706
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/b/a/b/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c$b;

    .line 707
    invoke-static {v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 708
    invoke-static {v0}, Lcom/b/a/b/c$b;->a(Lcom/b/a/b/c$b;)Lcom/b/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/c$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 711
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/b/a/b/c;->j()V

    .line 712
    iget-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/c;->j:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/b/a/b/c;->p:Lcom/b/a/b/a;

    invoke-interface {v0, p1}, Lcom/b/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-direct {p0, v0}, Lcom/b/a/b/c;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
