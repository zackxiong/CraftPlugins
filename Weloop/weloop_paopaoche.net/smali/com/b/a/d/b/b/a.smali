.class public Lcom/b/a/d/b/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/b/a/d/b/b/f;

.field private final c:Lcom/b/a/d/b/b/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/b/a/d/b/b/a/b;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    if-nez p2, :cond_1

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/b/a/d/b/b/a;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/b/a/d/b/b/a;->c:Lcom/b/a/d/b/b/a/b;

    .line 44
    new-instance v0, Lcom/b/a/d/b/b/f;

    invoke-direct {v0}, Lcom/b/a/d/b/b/f;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/b/b/a;->b:Lcom/b/a/d/b/b/f;

    .line 46
    invoke-virtual {p0, p2}, Lcom/b/a/d/b/b/a;->a(Lcom/b/a/d/b/b/a/b;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/b/a/d/b/b/a;->b(Lcom/b/a/d/b/b/a/b;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/b/a/d/b/b/a;->c(Lcom/b/a/d/b/b/a/b;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/b/a/d/b/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/b/a/d/b/b/a/b;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/b/a/d/b/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {p1}, Lcom/b/a/d/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p1}, Lcom/b/a/d/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/b/a/d/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/b/b/a;->b:Lcom/b/a/d/b/b/f;

    new-instance v1, Lcom/b/a/d/b/b/e;

    invoke-direct {v1, p1, p2}, Lcom/b/a/d/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/b/a/d/b/b/f;->a(Lcom/b/a/d/b/b/e;)V

    .line 89
    return-void
.end method

.method public b()Lcom/b/a/d/b/b/a/b;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/b/a/d/b/b/a;->c:Lcom/b/a/d/b/b/a/b;

    return-object v0
.end method

.method protected b(Lcom/b/a/d/b/b/a/b;)V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-interface {p1}, Lcom/b/a/d/b/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {p1}, Lcom/b/a/d/b/b/a/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {p1}, Lcom/b/a/d/b/b/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/b/a/d/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public c()Lcom/b/a/d/b/b/f;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/b/a/d/b/b/a;->b:Lcom/b/a/d/b/b/f;

    return-object v0
.end method

.method protected c(Lcom/b/a/d/b/b/a/b;)V
    .locals 2

    .prologue
    .line 115
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lcom/b/a/d/b/b/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/b/a/d/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
