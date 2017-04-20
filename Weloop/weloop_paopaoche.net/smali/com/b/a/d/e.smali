.class public final Lcom/b/a/d/e;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Ljava/util/Locale;

.field public final d:I

.field public final e:Lorg/apache/http/ProtocolVersion;

.field public final f:Ljava/lang/String;

.field public final g:J

.field public final h:Lorg/apache/http/Header;

.field public final i:Lorg/apache/http/Header;

.field private final j:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "TT;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/b/a/d/e;->j:Lorg/apache/http/HttpResponse;

    .line 52
    iput-object p2, p0, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    .line 53
    iput-boolean p3, p0, Lcom/b/a/d/e;->b:Z

    .line 55
    if-eqz p1, :cond_2

    .line 56
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/e;->c:Ljava/util/Locale;

    .line 59
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/b/a/d/e;->d:I

    .line 62
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/d/e;->e:Lorg/apache/http/ProtocolVersion;

    .line 63
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/e;->f:Ljava/lang/String;

    .line 71
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/a/d/e;->g:J

    .line 74
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/d/e;->h:Lorg/apache/http/Header;

    .line 75
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/e;->i:Lorg/apache/http/Header;

    .line 94
    :goto_1
    return-void

    .line 65
    :cond_0
    iput v1, p0, Lcom/b/a/d/e;->d:I

    .line 66
    iput-object v2, p0, Lcom/b/a/d/e;->e:Lorg/apache/http/ProtocolVersion;

    .line 67
    iput-object v2, p0, Lcom/b/a/d/e;->f:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_1
    iput-wide v4, p0, Lcom/b/a/d/e;->g:J

    .line 78
    iput-object v2, p0, Lcom/b/a/d/e;->h:Lorg/apache/http/Header;

    .line 79
    iput-object v2, p0, Lcom/b/a/d/e;->i:Lorg/apache/http/Header;

    goto :goto_1

    .line 82
    :cond_2
    iput-object v2, p0, Lcom/b/a/d/e;->c:Ljava/util/Locale;

    .line 85
    iput v1, p0, Lcom/b/a/d/e;->d:I

    .line 86
    iput-object v2, p0, Lcom/b/a/d/e;->e:Lorg/apache/http/ProtocolVersion;

    .line 87
    iput-object v2, p0, Lcom/b/a/d/e;->f:Ljava/lang/String;

    .line 90
    iput-wide v4, p0, Lcom/b/a/d/e;->g:J

    .line 91
    iput-object v2, p0, Lcom/b/a/d/e;->h:Lorg/apache/http/Header;

    .line 92
    iput-object v2, p0, Lcom/b/a/d/e;->i:Lorg/apache/http/Header;

    goto :goto_1
.end method
