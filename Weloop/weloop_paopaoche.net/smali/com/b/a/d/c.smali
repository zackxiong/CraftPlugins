.class public Lcom/b/a/d/c;
.super Lcom/b/a/e/c;
.source "ProGuard"

# interfaces
.implements Lcom/b/a/d/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/d/c$1;,
        Lcom/b/a/d/c$a;,
        Lcom/b/a/d/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/b/a/e/c",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/b/a/d/a/e;"
    }
.end annotation


# static fields
.field private static final s:Lcom/b/a/d/c$a;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final c:Lorg/apache/http/protocol/HttpContext;

.field private d:Lcom/b/a/d/a/c;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lorg/apache/http/client/methods/HttpRequestBase;

.field private h:Z

.field private i:Lcom/b/a/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/b/a/d/c$b;

.field private q:J

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Lcom/b/a/d/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/d/c$a;-><init>(Lcom/b/a/d/c$1;)V

    sput-object v0, Lcom/b/a/d/c;->s:Lcom/b/a/d/c$a;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/b/a/d/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            "Lcom/b/a/d/a/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/b/a/e/c;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/d/c;->h:Z

    .line 59
    iput v1, p0, Lcom/b/a/d/c;->j:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/d/c;->k:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/b/a/d/c;->l:Z

    .line 62
    iput-boolean v1, p0, Lcom/b/a/d/c;->m:Z

    .line 63
    iput-boolean v1, p0, Lcom/b/a/d/c;->n:Z

    .line 74
    sget-object v0, Lcom/b/a/d/c$b;->a:Lcom/b/a/d/c$b;

    iput-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    .line 80
    invoke-static {}, Lcom/b/a/d/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/d/c;->q:J

    .line 67
    iput-object p1, p0, Lcom/b/a/d/c;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 68
    iput-object p2, p0, Lcom/b/a/d/c;->c:Lorg/apache/http/protocol/HttpContext;

    .line 69
    iput-object p4, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    .line 70
    iput-object p3, p0, Lcom/b/a/d/c;->o:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/b/a/d/c;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    sget-object v1, Lcom/b/a/d/c;->s:Lcom/b/a/d/c$a;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 72
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)Lcom/b/a/d/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/b/a/d/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Lcom/b/a/c/b;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Lcom/b/a/c/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/d/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    :cond_1
    :goto_0
    return-object v5

    .line 232
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 234
    const/16 v2, 0x12c

    if-ge v1, v2, :cond_7

    .line 236
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_c

    .line 238
    iput-boolean v6, p0, Lcom/b/a/d/c;->h:Z

    .line 239
    iget-boolean v0, p0, Lcom/b/a/d/c;->l:Z

    if-eqz v0, :cond_6

    .line 240
    iget-boolean v0, p0, Lcom/b/a/d/c;->m:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/b/a/f/e;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/b/a/d/c;->m:Z

    .line 241
    iget-boolean v0, p0, Lcom/b/a/d/c;->n:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/b/a/f/e;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    .line 242
    :cond_3
    new-instance v0, Lcom/b/a/d/a/b;

    invoke-direct {v0}, Lcom/b/a/d/a/b;-><init>()V

    .line 243
    iget-object v3, p0, Lcom/b/a/d/c;->k:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/b/a/d/c;->m:Z

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/d/a/b;->a(Lorg/apache/http/HttpEntity;Lcom/b/a/d/a/e;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 252
    :cond_4
    :goto_2
    new-instance v5, Lcom/b/a/d/e;

    invoke-direct {v5, p1, v1, v6}, Lcom/b/a/d/e;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_5
    move v0, v6

    .line 240
    goto :goto_1

    .line 245
    :cond_6
    new-instance v0, Lcom/b/a/d/a/f;

    invoke-direct {v0}, Lcom/b/a/d/a/f;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/b/a/d/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lcom/b/a/d/a/f;->a(Lorg/apache/http/HttpEntity;Lcom/b/a/d/a/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    sget-object v0, Lcom/b/a/b;->a:Lcom/b/a/d/a;

    iget-object v2, p0, Lcom/b/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/b/a/d/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    sget-object v2, Lcom/b/a/b;->a:Lcom/b/a/d/a;

    iget-object v3, p0, Lcom/b/a/d/c;->e:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iget-wide v4, p0, Lcom/b/a/d/c;->q:J

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/b/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    .line 253
    :cond_7
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_8

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_a

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/b/a/d/c;->d:Lcom/b/a/d/a/c;

    if-nez v0, :cond_9

    .line 255
    new-instance v0, Lcom/b/a/d/a/a;

    invoke-direct {v0}, Lcom/b/a/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/c;->d:Lcom/b/a/d/a/c;

    .line 257
    :cond_9
    iget-object v0, p0, Lcom/b/a/d/c;->d:Lcom/b/a/d/a/c;

    invoke-interface {v0, p1}, Lcom/b/a/d/a/c;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1

    .line 259
    invoke-direct {p0, v0}, Lcom/b/a/d/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/b/a/d/e;

    move-result-object v5

    goto/16 :goto_0

    .line 261
    :cond_a
    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_b

    .line 262
    new-instance v0, Lcom/b/a/c/b;

    const-string v2, "maybe the file has downloaded completely"

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/b;-><init>(ILjava/lang/String;)V

    throw v0

    .line 264
    :cond_b
    new-instance v2, Lcom/b/a/c/b;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/b/a/c/b;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_c
    move-object v1, v5

    goto :goto_2
.end method

.method private a(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/b/a/d/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lcom/b/a/d/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/b/a/d/c;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v6

    .line 101
    :cond_0
    iget-boolean v1, p0, Lcom/b/a/d/c;->m:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/b/a/d/c;->l:Z

    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/b/a/d/c;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 107
    :goto_0
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 108
    const-string v1, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/d/c;->f:Ljava/lang/String;

    .line 116
    sget-object v1, Lcom/b/a/b;->a:Lcom/b/a/d/a;

    iget-object v2, p0, Lcom/b/a/d/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/b/a/d/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    sget-object v1, Lcom/b/a/b;->a:Lcom/b/a/d/a;

    iget-object v2, p0, Lcom/b/a/d/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/b/a/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    new-instance v1, Lcom/b/a/d/e;

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v3, v2, v7}, Lcom/b/a/d/e;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    move-object v0, v1

    .line 128
    :cond_2
    :goto_1
    return-object v0

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/d/c;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/b/a/d/c;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/b/a/d/c;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 126
    invoke-direct {p0, v1}, Lcom/b/a/d/c;->a(Lorg/apache/http/HttpResponse;)Lcom/b/a/d/e;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/b/a/c/b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 131
    iget v2, p0, Lcom/b/a/d/c;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/b/a/d/c;->j:I

    iget-object v3, p0, Lcom/b/a/d/c;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v1, v2, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    .line 146
    :goto_2
    if-nez v2, :cond_0

    .line 147
    new-instance v0, Lcom/b/a/c/b;

    invoke-direct {v0, v1}, Lcom/b/a/c/b;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 132
    :catch_1
    move-exception v1

    .line 134
    iget v2, p0, Lcom/b/a/d/c;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/b/a/d/c;->j:I

    iget-object v3, p0, Lcom/b/a/d/c;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v1, v2, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_2

    .line 135
    :catch_2
    move-exception v1

    .line 136
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    iget v1, p0, Lcom/b/a/d/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/d/c;->j:I

    iget-object v3, p0, Lcom/b/a/d/c;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    move-object v9, v2

    move v2, v1

    move-object v1, v9

    .line 145
    goto :goto_2

    .line 139
    :catch_3
    move-exception v0

    .line 140
    throw v0

    .line 141
    :catch_4
    move-exception v1

    .line 142
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    iget v1, p0, Lcom/b/a/d/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/d/c;->j:I

    iget-object v3, p0, Lcom/b/a/d/c;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v6, v2, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    move-object v9, v2

    move v2, v1

    move-object v1, v9

    goto :goto_2

    :cond_4
    move-wide v2, v4

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    sget-object v3, Lcom/b/a/d/c$b;->e:Lcom/b/a/d/c$b;

    if-eq v0, v3, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v7

    .line 156
    :cond_1
    array-length v0, p1

    if-le v0, v6, :cond_2

    .line 157
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/c;->k:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/b/a/d/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/b/a/d/c;->l:Z

    .line 159
    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/d/c;->m:Z

    .line 160
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/a/d/c;->n:Z

    .line 164
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    sget-object v3, Lcom/b/a/d/c$b;->e:Lcom/b/a/d/c$b;

    if-eq v0, v3, :cond_0

    .line 166
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object v0, p0, Lcom/b/a/d/c;->g:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 167
    iget-object v0, p0, Lcom/b/a/d/c;->g:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/c;->e:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    iget-object v3, p0, Lcom/b/a/d/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/b/a/d/a/d;->a(Ljava/lang/String;)V

    .line 172
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/b/a/d/c;->f([Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/b/a/d/c;->r:J

    .line 176
    iget-object v0, p0, Lcom/b/a/d/c;->g:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v0}, Lcom/b/a/d/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/b/a/d/e;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/b/a/d/c;->f([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/b/a/c/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    invoke-virtual {v0}, Lcom/b/a/c/b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v3}, Lcom/b/a/d/c;->f([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 158
    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/b/a/d/c$b;->e:Lcom/b/a/d/c$b;

    iput-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    .line 276
    iget-object v0, p0, Lcom/b/a/d/c;->g:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d/c;->g:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/b/a/d/c;->g:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/b/a/d/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/b/a/d/c;->a(Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    invoke-virtual {v0}, Lcom/b/a/d/a/d;->c()V

    .line 292
    :cond_2
    return-void

    .line 285
    :catch_0
    move-exception v0

    goto :goto_1

    .line 279
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/b/a/d/c;->q:J

    .line 84
    return-void
.end method

.method public a(Lcom/b/a/d/a/c;)V
    .locals 0

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iput-object p1, p0, Lcom/b/a/d/c;->d:Lcom/b/a/d/a/c;

    .line 51
    :cond_0
    return-void
.end method

.method public a(JJZ)Z
    .locals 11

    .prologue
    const/4 v9, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    .line 298
    iget-object v2, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    sget-object v3, Lcom/b/a/d/c$b;->e:Lcom/b/a/d/c$b;

    if-eq v2, v3, :cond_0

    .line 299
    if-eqz p5, :cond_1

    .line 300
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v2}, Lcom/b/a/d/c;->f([Ljava/lang/Object;)V

    .line 309
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    sget-object v3, Lcom/b/a/d/c$b;->e:Lcom/b/a/d/c$b;

    if-eq v2, v3, :cond_2

    :goto_1
    return v0

    .line 302
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 303
    iget-wide v4, p0, Lcom/b/a/d/c;->r:J

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    invoke-virtual {v6}, Lcom/b/a/d/a/d;->a()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 304
    iput-wide v2, p0, Lcom/b/a/d/c;->r:J

    .line 305
    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v2}, Lcom/b/a/d/c;->f([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 309
    goto :goto_1
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 196
    iget-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    sget-object v1, Lcom/b/a/d/c$b;->e:Lcom/b/a/d/c$b;

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    sget-object v0, Lcom/b/a/d/c$b;->b:Lcom/b/a/d/c$b;

    iput-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    .line 200
    iget-object v0, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    invoke-virtual {v0}, Lcom/b/a/d/a/d;->b()V

    goto :goto_0

    .line 203
    :pswitch_1
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 204
    sget-object v0, Lcom/b/a/d/c$b;->c:Lcom/b/a/d/c$b;

    iput-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    .line 205
    iget-object v1, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/b/a/d/c;->h:Z

    invoke-virtual/range {v1 .. v6}, Lcom/b/a/d/a/d;->a(JJZ)V

    goto :goto_0

    .line 211
    :pswitch_2
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 212
    sget-object v0, Lcom/b/a/d/c$b;->d:Lcom/b/a/d/c$b;

    iput-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    .line 213
    iget-object v2, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    aget-object v0, p1, v3

    check-cast v0, Lcom/b/a/c/b;

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/d/a/d;->a(Lcom/b/a/c/b;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :pswitch_3
    array-length v0, p1

    if-ne v0, v4, :cond_0

    .line 217
    sget-object v0, Lcom/b/a/d/c$b;->f:Lcom/b/a/d/c$b;

    iput-object v0, p0, Lcom/b/a/d/c;->p:Lcom/b/a/d/c$b;

    .line 218
    iget-object v1, p0, Lcom/b/a/d/c;->i:Lcom/b/a/d/a/d;

    aget-object v0, p1, v3

    check-cast v0, Lcom/b/a/d/e;

    invoke-virtual {v1, v0}, Lcom/b/a/d/a/d;->a(Lcom/b/a/d/e;)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected synthetic c([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/b/a/d/c;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
