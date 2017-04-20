.class public Lorg/a/a/b/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/a/a/d/a;


# instance fields
.field protected a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/d/j;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 58
    .line 61
    iget-object v1, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v0

    .line 63
    :goto_0
    if-ge v2, v1, :cond_0

    .line 64
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a;

    .line 65
    invoke-interface {v0, p1}, Lorg/a/a/a;->b(Lorg/a/a/d/j;)V

    .line 63
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 68
    :cond_1
    return v0
.end method

.method public a()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/a/a/a;)V
    .locals 2

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    .line 50
    :cond_2
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 139
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a;

    .line 140
    invoke-interface {v0}, Lorg/a/a/a;->a()V

    .line 138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/b/b;->a:Ljava/util/Vector;

    .line 145
    :cond_1
    return-void
.end method
