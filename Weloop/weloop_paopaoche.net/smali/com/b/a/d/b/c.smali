.class public Lcom/b/a/d/b/c;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "ProGuard"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/d/b/c$a;
    }
.end annotation


# instance fields
.field private a:Lorg/apache/http/HttpEntity;

.field private b:Lcom/b/a/d/b/c$a;

.field private c:Lcom/b/a/d/b/c/a;

.field private d:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lcom/b/a/d/b/c$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/b/a/d/b/c;->b:Lcom/b/a/d/b/c$a;

    .line 60
    invoke-virtual {p0, p2}, Lcom/b/a/d/b/c;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/b/a/d/b/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/b/a/d/b/c;"
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 82
    iget-object v2, p0, Lcom/b/a/d/b/c;->c:Lcom/b/a/d/b/c/a;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/b/a/d/b/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/d/b/c/a;

    goto :goto_0

    .line 85
    :cond_0
    return-object p0
.end method

.method public a(Lcom/b/a/d/d;Lcom/b/a/d/a/e;)V
    .locals 3

    .prologue
    .line 109
    if-eqz p1, :cond_4

    .line 110
    iget-object v0, p0, Lcom/b/a/d/b/c;->d:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/b/a/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/b/c;->d:Ljava/nio/charset/Charset;

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/d/d;->e()Ljava/util/List;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/d$a;

    .line 116
    iget-boolean v2, v0, Lcom/b/a/d/d$a;->a:Z

    if-eqz v2, :cond_1

    .line 117
    iget-object v0, v0, Lcom/b/a/d/d$a;->b:Lorg/apache/http/Header;

    invoke-virtual {p0, v0}, Lcom/b/a/d/b/c;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, v0, Lcom/b/a/d/d$a;->b:Lorg/apache/http/Header;

    invoke-virtual {p0, v0}, Lcom/b/a/d/b/c;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/d/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/d/b/c;->a(Ljava/util/List;)Lcom/b/a/d/b/c;

    .line 124
    invoke-virtual {p1}, Lcom/b/a/d/d;->c()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    instance-of v0, v1, Lcom/b/a/d/b/a/d;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 127
    check-cast v0, Lcom/b/a/d/b/a/d;

    invoke-interface {v0, p2}, Lcom/b/a/d/b/a/d;->a(Lcom/b/a/d/a/e;)V

    .line 129
    :cond_3
    invoke-virtual {p0, v1}, Lcom/b/a/d/b/c;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 132
    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/b/a/d/b/c/a;

    invoke-direct {v0, p1}, Lcom/b/a/d/b/c/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/d/b/c;->c:Lcom/b/a/d/b/c/a;

    .line 157
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/c;

    .line 183
    iget-object v1, p0, Lcom/b/a/d/b/c;->a:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/b/a/d/b/c;->a:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpEntity;

    iput-object v1, v0, Lcom/b/a/d/b/c;->a:Lorg/apache/http/HttpEntity;

    .line 186
    :cond_0
    return-object v0
.end method

.method public expectContinue()Z
    .locals 2

    .prologue
    .line 176
    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcom/b/a/d/b/c;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/b/a/d/b/c;->a:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/b/a/d/b/c;->b:Lcom/b/a/d/b/c$a;

    invoke-virtual {v0}, Lcom/b/a/d/b/c$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/b/a/d/b/c;->d:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 138
    invoke-static {p0}, Lcom/b/a/f/e;->a(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/b/c;->d:Ljava/nio/charset/Charset;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/b/c;->d:Ljava/nio/charset/Charset;

    if-nez v0, :cond_1

    .line 141
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/b/c;->d:Ljava/nio/charset/Charset;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/b/a/d/b/c;->c:Lcom/b/a/d/b/c/a;

    iget-object v1, p0, Lcom/b/a/d/b/c;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/b/a/d/b/c/a;->a(Ljava/nio/charset/Charset;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/b/a/d/b/c;->a:Lorg/apache/http/HttpEntity;

    .line 172
    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/b/a/d/b/c/a;

    invoke-direct {v0, p1}, Lcom/b/a/d/b/c/a;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/b/a/d/b/c;->c:Lcom/b/a/d/b/c/a;

    .line 153
    return-void
.end method
