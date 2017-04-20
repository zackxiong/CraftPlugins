.class public Lcom/b/a/d/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/d/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/d/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/apache/http/HttpEntity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/b/a/d/b/b/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/b/a/e/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/b/a/d/d;->a:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/e/b;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/b/a/d/d;->g:Lcom/b/a/e/b;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/b/a/d/d;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/d;->f:Ljava/util/HashMap;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/d;->f:Ljava/util/HashMap;

    new-instance v1, Lcom/b/a/d/b/b/a/d;

    invoke-direct {v1, p2}, Lcom/b/a/d/b/b/a/d;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/b/a/d/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/b/a/d/d;->d:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/b/a/d/d;->d:Lorg/apache/http/HttpEntity;

    .line 307
    :cond_0
    :goto_0
    return-object v0

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/b/a/d/d;->f:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/b/a/d/d;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 286
    new-instance v2, Lcom/b/a/d/b/b/g;

    sget-object v1, Lcom/b/a/d/b/b/c;->a:Lcom/b/a/d/b/b/c;

    iget-object v3, p0, Lcom/b/a/d/d;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/b/a/d/b/b/g;-><init>(Lcom/b/a/d/b/b/c;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 288
    iget-object v0, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 291
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/b/a/d/b/b/a/e;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/b/a/d/b/b/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/b/a/d/b/b/g;->a(Ljava/lang/String;Lcom/b/a/d/b/b/a/b;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/b/a/d/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/b/a/b;

    invoke-virtual {v2, v1, v0}, Lcom/b/a/d/b/b/g;->a(Ljava/lang/String;Lcom/b/a/d/b/b/a/b;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 303
    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    new-instance v0, Lcom/b/a/d/b/a/a;

    iget-object v1, p0, Lcom/b/a/d/d;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/b/a/d/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/b/a/a;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/b/a/d/d;->c:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/d/d$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/b/a/d/d;->b:Ljava/util/List;

    return-object v0
.end method
