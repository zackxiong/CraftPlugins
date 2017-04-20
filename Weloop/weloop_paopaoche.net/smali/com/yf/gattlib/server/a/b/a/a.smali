.class public Lcom/yf/gattlib/server/a/b/a/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/server/a/d;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/server/a/b/a/a$a;,
        Lcom/yf/gattlib/server/a/b/a/a$c;,
        Lcom/yf/gattlib/server/a/b/a/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/server/a/b/a/a$b;

.field private c:Lcom/yf/gattlib/server/a/b/a/d;

.field private d:Lcom/yf/gattlib/server/a/b/c;

.field private e:[B

.field private f:[B

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/HandlerThread;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private n:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/yf/gattlib/server/a/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/server/a/b/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yf/gattlib/server/a/b/c;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/yf/gattlib/server/a/b/a/d;

    invoke-direct {v0}, Lcom/yf/gattlib/server/a/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    .line 48
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->e:[B

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->f:[B

    .line 54
    iput-boolean v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->j:Z

    .line 142
    new-instance v0, Lcom/yf/gattlib/server/a/b/a/b;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/server/a/b/a/b;-><init>(Lcom/yf/gattlib/server/a/b/a/a;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->m:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->n:Ljava/lang/StringBuffer;

    .line 57
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->k:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->l:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->m:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/c/c;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    new-instance v0, Lcom/yf/gattlib/server/a/b/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/server/a/b/a/a$b;-><init>(Lcom/yf/gattlib/server/a/b/a/a;Lcom/yf/gattlib/server/a/b/a/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->b:Lcom/yf/gattlib/server/a/b/a/a$b;

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sending"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->i:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/yf/gattlib/server/a/b/a/a$c;

    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yf/gattlib/server/a/b/a/a$c;-><init>(Lcom/yf/gattlib/server/a/b/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->h:Landroid/os/Handler;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    const-string v1, "com.yf.gattlib.intent.action.NLSERVICE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "com.yf.gattlib.intent.action.MY_ACTION_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/server/a/b/a/a;->b:Lcom/yf/gattlib/server/a/b/a/a$b;

    invoke-virtual {v1, v2, v0}, Lcom/yf/gattlib/a/a;->a(Lcom/yf/gattlib/l/a;Landroid/content/IntentFilter;)V

    .line 72
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/a/a;->d:Lcom/yf/gattlib/server/a/b/c;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a/b/a/a;)Lcom/yf/gattlib/server/a/b/a/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a/b/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/a/a;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    sget-object v0, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 359
    array-length v1, v0

    if-le v1, p3, :cond_0

    .line 360
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 361
    const-string v0, ""

    .line 371
    :goto_1
    return-object v0

    .line 359
    :cond_0
    array-length p3, v0

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v1, p3, 0x2

    if-gt v0, v1, :cond_2

    .line 363
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 p3, v0, -0x2

    .line 365
    :cond_2
    sget-object v0, Lcom/yf/gattlib/n/a;->a:Ljava/nio/charset/Charset;

    invoke-static {p2, p3, v0}, Lcom/yf/gattlib/p/f;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 367
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 368
    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 369
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method private a(Lcom/yf/gattlib/notification/NotificationContent;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 188
    .line 189
    const-string v1, "posted"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    :cond_0
    :goto_0
    iget-byte v1, p1, Lcom/yf/gattlib/notification/NotificationContent;->b:B

    invoke-direct {p0, v1}, Lcom/yf/gattlib/server/a/b/a/a;->a(B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/server/a/b/a/d;->a(J)V

    .line 199
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/server/a/b/a/a;->a(Lcom/yf/gattlib/notification/NotificationContent;B)Lcom/yf/gattlib/server/a/b/a/c;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/c;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/server/a/b/a/d;->b(J)V

    .line 204
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/c;->d()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/server/a/b/a/d;->a(J)V

    .line 205
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b/a/a;->d()V

    .line 206
    return-void

    .line 191
    :cond_2
    const-string v1, "removed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/gattlib/server/a/b/a/a;Lcom/yf/gattlib/notification/NotificationContent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/server/a/b/a/a;->a(Lcom/yf/gattlib/notification/NotificationContent;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->n:Ljava/lang/StringBuffer;

    const-string v1, "error: empty log buffer!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {}, Lcom/yf/gattlib/p/g;->c()Lcom/yf/gattlib/p/g$d;

    move-result-object v1

    sget-object v2, Lcom/yf/gattlib/server/a/b/d$a;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notification"

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/yf/gattlib/p/g$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/yf/gattlib/p/g;->b()Lcom/yf/gattlib/p/g$d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yf/gattlib/p/g$d;->a(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->n:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 342
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/yf/gattlib/server/a/b/a/c;[B)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 280
    invoke-virtual {p2}, Lcom/yf/gattlib/server/a/b/a/c;->c()Lcom/yf/gattlib/notification/NotificationContent;

    move-result-object v2

    .line 281
    new-instance v0, Lcom/yf/gattlib/server/a/b/a/a$a;

    invoke-direct {v0, p0, p3}, Lcom/yf/gattlib/server/a/b/a/a$a;-><init>(Lcom/yf/gattlib/server/a/b/a/a;[B)V

    .line 282
    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/a$a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 283
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 284
    iget-object v1, v0, Lcom/yf/gattlib/server/a/b/a/a$a;->a:[B

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v7, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 285
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->n:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 286
    iget-object v0, v0, Lcom/yf/gattlib/server/a/b/a/a$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v1, v2, Lcom/yf/gattlib/notification/NotificationContent;->e:Ljava/lang/String;

    .line 302
    const-string v5, "com.tencent.mobileqq"

    const-string v6, "com.tencent.mqq"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 304
    const-string v5, "com.tencent.mm"

    const-string v6, "com.tencent.xin"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 306
    const-string v5, "com.immomo.momo"

    const-string v6, "com.wemomo.momoappdemo1"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 309
    const-string v5, "com.yf.smart.weloopx.alpha"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.yf.smart.weloopx.beta"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.yf.smart.weloopx.dist"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/yf/gattlib/server/a/b/a/a;->j:Z

    .line 315
    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lcom/yf/gattlib/server/a/b/a/a;->a(Ljava/util/Map$Entry;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v1, v2, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Lcom/yf/gattlib/server/a/b/a/a;->a(Ljava/util/Map$Entry;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v1, v2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    const-string v5, "\u63d0\u9192"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->j:Z

    if-eqz v1, :cond_1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/yf/gattlib/server/a/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " add 5 blank"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "     "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    .line 298
    :cond_1
    iget-object v1, v2, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Lcom/yf/gattlib/server/a/b/a/a;->a(Ljava/util/Map$Entry;Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_2
    iput-boolean v7, p0, Lcom/yf/gattlib/server/a/b/a/a;->j:Z

    goto :goto_1

    .line 321
    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    .line 322
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 323
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 325
    invoke-direct {p0, p1}, Lcom/yf/gattlib/server/a/b/a/a;->a(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->e:[B

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/yf/gattlib/server/a/b/a/a;->d:Lcom/yf/gattlib/server/a/b/c;

    sget-object v3, Lcom/yf/gattlib/server/a/b/d$a;->c:Ljava/util/UUID;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v0, v4}, Lcom/yf/gattlib/server/a/b/c;->a(Ljava/lang/String;Ljava/util/UUID;[BZ)V

    .line 329
    monitor-exit v1

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/util/Map$Entry;Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 348
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 350
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/yf/gattlib/server/a/b/a/a;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->n:Ljava/lang/StringBuffer;

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]}\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    return-void
.end method

.method private a(B)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/yf/gattlib/server/a/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/gattlib/server/a/b/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/a/a;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/gattlib/server/a/b/a/a;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b/a/a;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yf/gattlib/server/a/b/a/a;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b/a/a;->e()V

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    return-void
.end method

.method static synthetic d(Lcom/yf/gattlib/server/a/b/a/a;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b/a/a;->f()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 258
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->f:[B

    monitor-enter v1

    .line 259
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->f:[B

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :cond_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->g:Z

    .line 268
    monitor-exit v1

    .line 269
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/yf/gattlib/server/a/b/a/a;)[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->e:[B

    return-object v0
.end method

.method static synthetic f(Lcom/yf/gattlib/server/a/b/a/a;)Lcom/yf/gattlib/server/a/b/c;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->d:Lcom/yf/gattlib/server/a/b/c;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->f:[B

    monitor-enter v1

    .line 273
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->g:Z

    .line 274
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->f:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 275
    monitor-exit v1

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/yf/gattlib/server/a/b/a/c;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/server/a/b/a/d;->a(I)Lcom/yf/gattlib/server/a/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yf/gattlib/notification/NotificationContent;B)Lcom/yf/gattlib/server/a/b/a/c;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/yf/gattlib/server/a/b/a/c;

    invoke-direct {v0, p1, p2}, Lcom/yf/gattlib/server/a/b/a/c;-><init>(Lcom/yf/gattlib/notification/NotificationContent;B)V

    .line 78
    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/server/a/b/a/d;->a(Lcom/yf/gattlib/server/a/b/a/c;)V

    .line 79
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->m:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/c/c;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 378
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/a/d;->b()V

    .line 379
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 380
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/server/a/b/a/a;->b:Lcom/yf/gattlib/server/a/b/a/a$b;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;)V

    .line 381
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->d:Lcom/yf/gattlib/server/a/b/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/c;->a()Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 131
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-virtual {p3, p7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 95
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->d:Lcom/yf/gattlib/server/a/b/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/server/a/b/c;->a()Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 99
    if-eqz p7, :cond_0

    array-length v0, p7

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v3, 0x1

    .line 100
    :cond_0
    if-nez v3, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/server/a/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCharacteristicWriteRequest have problem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lcom/yf/gattlib/server/a/b/a/a$a;

    invoke-direct {v0, p0, p7}, Lcom/yf/gattlib/server/a/b/a/a$a;-><init>(Lcom/yf/gattlib/server/a/b/a/a;[B)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/server/a/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xxx, request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/yf/gattlib/server/a/b/a/a$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 108
    iget v1, v0, Lcom/yf/gattlib/server/a/b/a/a$a;->c:I

    invoke-virtual {p0, v1}, Lcom/yf/gattlib/server/a/b/a/a;->a(I)Lcom/yf/gattlib/server/a/b/a/c;

    move-result-object v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " xxx, no id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/yf/gattlib/server/a/b/a/a$a;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/yf/gattlib/server/a/b/a/a;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/server/a/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b/a/a;->f()V

    .line 116
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b/a/a;->d()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/a;->c:Lcom/yf/gattlib/server/a/b/a/d;

    invoke-virtual {v1}, Lcom/yf/gattlib/server/a/b/a/c;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/server/a/b/a/d;->b(I)V

    .line 121
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p7}, Lcom/yf/gattlib/server/a/b/a/a;->a(Ljava/lang/String;Lcom/yf/gattlib/server/a/b/a/c;[B)V

    .line 122
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b/a/a;->f()V

    .line 123
    invoke-direct {p0}, Lcom/yf/gattlib/server/a/b/a/a;->d()V

    goto :goto_0
.end method
