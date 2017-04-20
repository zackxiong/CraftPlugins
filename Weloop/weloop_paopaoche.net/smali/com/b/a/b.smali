.class public Lcom/b/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/b/a/d/a;

.field private static final g:Lcom/b/a/e/f;


# instance fields
.field private final b:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final c:Lorg/apache/http/protocol/HttpContext;

.field private d:Lcom/b/a/d/a/c;

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/b/a/d/a;

    invoke-direct {v0}, Lcom/b/a/d/a;-><init>()V

    sput-object v0, Lcom/b/a/b;->a:Lcom/b/a/d/a;

    .line 145
    new-instance v0, Lcom/b/a/e/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/b/a/e/f;-><init>(I)V

    sput-object v0, Lcom/b/a/b;->g:Lcom/b/a/e/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    const/16 v0, 0x7530

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/b/a/b;-><init>(ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/16 v4, 0xa

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/b/a/b;->c:Lorg/apache/http/protocol/HttpContext;

    .line 132
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/b/a/b;->e:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/b/a/d/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/b;->f:J

    .line 74
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 76
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 77
    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/b/a/f/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 83
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 85
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v1, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 86
    invoke-static {v0, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 89
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 92
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 93
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 94
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lcom/b/a/d/b/a;->a()Lcom/b/a/d/b/a;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 96
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/b/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 98
    iget-object v0, p0, Lcom/b/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/b/a/d/b/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/b/a/d/b/d;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 100
    iget-object v0, p0, Lcom/b/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/b/a/c;

    invoke-direct {v1, p0}, Lcom/b/a/c;-><init>(Lcom/b/a/b;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 110
    iget-object v0, p0, Lcom/b/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/b/a/d;

    invoke-direct {v1, p0}, Lcom/b/a/d;-><init>(Lcom/b/a/b;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 128
    return-void
.end method

.method private a(Lcom/b/a/d/b/c;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/d/b/c;",
            "Lcom/b/a/d/d;",
            "Lcom/b/a/d/a/d",
            "<TT;>;)",
            "Lcom/b/a/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lcom/b/a/d/c;

    iget-object v1, p0, Lcom/b/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/b/a/b;->c:Lorg/apache/http/protocol/HttpContext;

    iget-object v3, p0, Lcom/b/a/b;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/b/a/d/c;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/b/a/d/a/d;)V

    .line 319
    iget-wide v2, p0, Lcom/b/a/b;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/b/a/d/c;->a(J)V

    .line 320
    iget-object v1, p0, Lcom/b/a/b;->d:Lcom/b/a/d/a/c;

    invoke-virtual {v0, v1}, Lcom/b/a/d/c;->a(Lcom/b/a/d/a/c;)V

    .line 321
    invoke-virtual {p1, p2, v0}, Lcom/b/a/d/b/c;->a(Lcom/b/a/d/d;Lcom/b/a/d/a/e;)V

    .line 323
    if-eqz p2, :cond_0

    .line 324
    invoke-virtual {p2}, Lcom/b/a/d/d;->a()Lcom/b/a/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/d/c;->a(Lcom/b/a/e/b;)V

    .line 326
    :cond_0
    sget-object v1, Lcom/b/a/b;->g:Lcom/b/a/e/f;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/b/a/e/c;

    .line 327
    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/b/a/d/b/c$a;",
            "Ljava/lang/String;",
            "Lcom/b/a/d/d;",
            "Lcom/b/a/d/a/d",
            "<TT;>;)",
            "Lcom/b/a/d/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 234
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Lcom/b/a/d/b/c;

    invoke-direct {v0, p1, p2}, Lcom/b/a/d/b/c;-><init>(Lcom/b/a/d/b/c$a;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, v0, p3, p4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/d/d;ZZLcom/b/a/d/a/d;)Lcom/b/a/d/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/c$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/b/a/d/d;",
            "ZZ",
            "Lcom/b/a/d/a/d",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/b/a/d/c",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    new-instance v0, Lcom/b/a/d/b/c;

    invoke-direct {v0, p1, p2}, Lcom/b/a/d/b/c;-><init>(Lcom/b/a/d/b/c$a;Ljava/lang/String;)V

    .line 301
    new-instance v1, Lcom/b/a/d/c;

    iget-object v2, p0, Lcom/b/a/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/b/a/b;->c:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/b/a/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p7}, Lcom/b/a/d/c;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/b/a/d/a/d;)V

    .line 303
    iget-wide v2, p0, Lcom/b/a/b;->f:J

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/c;->a(J)V

    .line 304
    iget-object v2, p0, Lcom/b/a/b;->d:Lcom/b/a/d/a/c;

    invoke-virtual {v1, v2}, Lcom/b/a/d/c;->a(Lcom/b/a/d/a/c;)V

    .line 306
    if-eqz p4, :cond_2

    .line 307
    invoke-virtual {v0, p4, v1}, Lcom/b/a/d/b/c;->a(Lcom/b/a/d/d;Lcom/b/a/d/a/e;)V

    .line 308
    invoke-virtual {p4}, Lcom/b/a/d/d;->a()Lcom/b/a/e/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/d/c;->a(Lcom/b/a/e/b;)V

    .line 310
    :cond_2
    sget-object v2, Lcom/b/a/b;->g:Lcom/b/a/e/f;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p3, v3, v0

    const/4 v0, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/b/a/e/c;

    .line 311
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/b/a/d/a/d",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/b/a/d/c",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 255
    sget-object v1, Lcom/b/a/d/b/c$a;->a:Lcom/b/a/d/b/c$a;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, v5

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/d/d;ZZLcom/b/a/d/a/d;)Lcom/b/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZZLcom/b/a/d/a/d;)Lcom/b/a/d/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/b/a/d/a/d",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/b/a/d/c",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    sget-object v1, Lcom/b/a/d/b/c$a;->a:Lcom/b/a/d/b/c$a;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Ljava/lang/String;Lcom/b/a/d/d;ZZLcom/b/a/d/a/d;)Lcom/b/a/d/c;

    move-result-object v0

    return-object v0
.end method
