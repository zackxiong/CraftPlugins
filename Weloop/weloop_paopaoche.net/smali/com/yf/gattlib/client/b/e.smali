.class public abstract Lcom/yf/gattlib/client/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/gattlib/client/b/a/c;

.field private b:Lcom/yf/gattlib/client/b/be;

.field private c:Lcom/yf/gattlib/client/b/be$b;

.field private d:Lcom/yf/gattlib/client/b/be$b;

.field private e:Lcom/yf/gattlib/client/b/be$b;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/yf/gattlib/client/b/f;

    const-string v1, "long"

    const-wide/16 v2, 0x3e80

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yf/gattlib/client/b/f;-><init>(Lcom/yf/gattlib/client/b/e;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/e;->c:Lcom/yf/gattlib/client/b/be$b;

    .line 116
    new-instance v0, Lcom/yf/gattlib/client/b/g;

    const-string v1, "middle"

    const-wide/16 v2, 0x1f40

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yf/gattlib/client/b/g;-><init>(Lcom/yf/gattlib/client/b/e;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/e;->d:Lcom/yf/gattlib/client/b/be$b;

    .line 123
    new-instance v0, Lcom/yf/gattlib/client/b/h;

    const-string v1, "short"

    const-wide/16 v2, 0xfa0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/yf/gattlib/client/b/h;-><init>(Lcom/yf/gattlib/client/b/e;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/e;->e:Lcom/yf/gattlib/client/b/be$b;

    .line 57
    invoke-static {}, Lcom/yf/gattlib/client/b/be;->a()Lcom/yf/gattlib/client/b/be;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/e;->b:Lcom/yf/gattlib/client/b/be;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->b:Lcom/yf/gattlib/client/b/be;

    invoke-virtual {v0, p0, p1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;I)V

    .line 99
    return-void
.end method

.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->a:Lcom/yf/gattlib/client/b/a/c;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->a:Lcom/yf/gattlib/client/b/a/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/yf/gattlib/client/b/a/c;->a(III[Ljava/lang/Object;)V

    .line 33
    :cond_2
    return-void
.end method

.method public a(Lcom/yf/gattlib/client/b/a/c;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/gattlib/client/b/e;->a:Lcom/yf/gattlib/client/b/a/c;

    .line 62
    return-void
.end method

.method protected a(Lcom/yf/gattlib/client/b/be$b;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->b:Lcom/yf/gattlib/client/b/be;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/be$b;)V

    .line 103
    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public a([B)V
    .locals 1

    .prologue
    const/16 v0, 0x14

    .line 41
    invoke-virtual {p0, p1, v0, v0}, Lcom/yf/gattlib/client/b/e;->a([BII)V

    .line 42
    return-void
.end method

.method public a([BII)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->b:Lcom/yf/gattlib/client/b/be;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;[BII)V

    .line 38
    return-void
.end method

.method public varargs abstract a([B[Ljava/lang/Object;)V
.end method

.method public a()[I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/e;->a(Lcom/yf/gattlib/client/b/a/c;)V

    .line 79
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/e;->f()Lcom/yf/gattlib/client/b/e;

    .line 80
    return-object p0
.end method

.method public abstract b()V
.end method

.method protected b(Lcom/yf/gattlib/client/b/be$b;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->b:Lcom/yf/gattlib/client/b/be;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/client/b/be;->b(Lcom/yf/gattlib/client/b/be$b;)V

    .line 107
    return-void
.end method

.method protected b([B)[B
    .locals 2

    .prologue
    .line 45
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 46
    const-string v1, "D2HP"

    invoke-static {v0, v1}, Lcom/yf/gattlib/client/j;->a([BLjava/lang/String;)V

    .line 47
    invoke-static {v0}, Lcom/yf/gattlib/p/n;->a([B)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->a([B)V

    .line 49
    return-object v0
.end method

.method public final c(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/e;->a(Lcom/yf/gattlib/client/b/a/c;)V

    .line 85
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/e;->g()Lcom/yf/gattlib/client/b/e;

    .line 86
    return-object p0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x2710

    return-wide v0
.end method

.method public final f()Lcom/yf/gattlib/client/b/e;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->b:Lcom/yf/gattlib/client/b/be;

    invoke-virtual {v0, p0}, Lcom/yf/gattlib/client/b/be;->b(Lcom/yf/gattlib/client/b/e;)V

    .line 69
    return-object p0
.end method

.method public final g()Lcom/yf/gattlib/client/b/e;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->b:Lcom/yf/gattlib/client/b/be;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;Z)V

    .line 74
    return-object p0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->a(I)V

    .line 91
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->a(I)V

    .line 95
    return-void
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->c:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->a(Lcom/yf/gattlib/client/b/be$b;)V

    .line 136
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->d:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->a(Lcom/yf/gattlib/client/b/be$b;)V

    .line 140
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->e:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->a(Lcom/yf/gattlib/client/b/be$b;)V

    .line 144
    return-void
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->c:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->b(Lcom/yf/gattlib/client/b/be$b;)V

    .line 148
    return-void
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->d:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->b(Lcom/yf/gattlib/client/b/be$b;)V

    .line 152
    return-void
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yf/gattlib/client/b/e;->e:Lcom/yf/gattlib/client/b/be$b;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/e;->b(Lcom/yf/gattlib/client/b/be$b;)V

    .line 156
    return-void
.end method
