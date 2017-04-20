.class Lcom/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/e;
.implements Lcom/a/a/a/n;


# instance fields
.field private final c:Lcom/a/a/a/o;

.field private d:Lcom/a/a/a/f;

.field private final e:Lcom/a/a/a/d;

.field private f:Lcom/a/a/a/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/a/a;-><init>(Lcom/a/a/a/o;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/o;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    new-instance v0, Lcom/a/a/a/d;

    invoke-direct {v0}, Lcom/a/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/d;

    iput-object v1, p0, Lcom/a/a/a/a;->f:Lcom/a/a/a/p;

    if-nez p1, :cond_0

    sget-object p1, Lcom/a/a/a/p;->a:Lcom/a/a/a/o;

    :cond_0
    iput-object p1, p0, Lcom/a/a/a/a;->c:Lcom/a/a/a/o;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/d;

    return-object v0
.end method

.method public a(Lcom/a/a/a/f;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/d;

    invoke-virtual {v0, p1}, Lcom/a/a/a/d;->a(Lcom/a/a/a/f;)V

    :goto_0
    iput-object p1, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    invoke-virtual {v0, p1}, Lcom/a/a/a/f;->b(Lcom/a/a/a/i;)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/p;)V
    .locals 2

    iput-object p1, p0, Lcom/a/a/a/a;->f:Lcom/a/a/a/p;

    iget-object v0, p0, Lcom/a/a/a/a;->e:Lcom/a/a/a/d;

    invoke-interface {p1}, Lcom/a/a/a/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a([CII)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->e()Lcom/a/a/a/i;

    move-result-object v1

    instance-of v1, v1, Lcom/a/a/a/u;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/a/a/a/f;->e()Lcom/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/a/u;->a([CII)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/a/a/a/u;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Lcom/a/a/a/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/a/a/a/f;->a(Lcom/a/a/a/i;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/a/a/a/f;)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/i;->g()Lcom/a/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/f;

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a;->f:Lcom/a/a/a/p;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BuildDoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a;->f:Lcom/a/a/a/p;

    invoke-interface {v1}, Lcom/a/a/a/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
