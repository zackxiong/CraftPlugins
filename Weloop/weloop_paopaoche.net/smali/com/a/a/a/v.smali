.class Lcom/a/a/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/a/ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/v$1;,
        Lcom/a/a/a/v$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Boolean;

.field private static final b:Ljava/lang/Boolean;


# instance fields
.field private final c:Lcom/a/a/a/j;

.field private d:Ljava/util/Vector;

.field private e:Ljava/util/Enumeration;

.field private f:Ljava/lang/Object;

.field private final g:Lcom/a/a/a/v$a;

.field private h:Lcom/a/a/a/i;

.field private i:Z

.field private j:Lcom/a/a/a/a/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/a/a/a/a/ac;Lcom/a/a/a/i;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/a/j;

    invoke-direct {v0}, Lcom/a/a/a/j;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    iput-object v4, p0, Lcom/a/a/a/v;->e:Ljava/util/Enumeration;

    iput-object v4, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    new-instance v0, Lcom/a/a/a/v$a;

    invoke-direct {v0, v4}, Lcom/a/a/a/v$a;-><init>(Lcom/a/a/a/v$1;)V

    iput-object v0, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    iput-object p1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    iput-object p2, p0, Lcom/a/a/a/v;->h:Lcom/a/a/a/i;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    iget-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/a/a/a/v;->h:Lcom/a/a/a/i;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/a/a/a/a/ac;->c()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/t;

    invoke-virtual {v0}, Lcom/a/a/a/a/t;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/a/a/a/v;->i:Z

    iput-object v4, p0, Lcom/a/a/a/v;->e:Ljava/util/Enumeration;

    invoke-virtual {v0}, Lcom/a/a/a/a/t;->c()Lcom/a/a/a/a/o;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/a/a/a/a/o;->a(Lcom/a/a/a/a/ab;)V

    iget-object v2, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v2}, Lcom/a/a/a/j;->a()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/a/v;->e:Ljava/util/Enumeration;

    iget-object v2, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    invoke-virtual {v0}, Lcom/a/a/a/a/t;->d()Lcom/a/a/a/a/k;

    move-result-object v0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/a/a/a/v;->e:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/a/a/a/v;->e:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/a/a/a/a/k;->a(Lcom/a/a/a/a/l;)V

    iget-object v2, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    invoke-virtual {v2}, Lcom/a/a/a/v$a;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    iget-object v3, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/a/a/a/d;Lcom/a/a/a/a/ac;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/a/a/a/v;-><init>(Lcom/a/a/a/a/ac;Lcom/a/a/a/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/f;Lcom/a/a/a/a/ac;)V
    .locals 2

    invoke-direct {p0, p2, p1}, Lcom/a/a/a/v;-><init>(Lcom/a/a/a/a/ac;Lcom/a/a/a/i;)V

    invoke-virtual {p2}, Lcom/a/a/a/a/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    const-string v1, "Cannot use element as context node for absolute xpath"

    invoke-direct {v0, p2, v1}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Lcom/a/a/a/d;)V
    .locals 3

    invoke-virtual {p1}, Lcom/a/a/a/d;->a()Lcom/a/a/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/j;->add(Lcom/a/a/a/i;I)V

    iget-boolean v1, p0, Lcom/a/a/a/v;->i:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/a/a/a/v;->a(Lcom/a/a/a/f;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/a/a/a/d;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/a/a/a/d;->a()Lcom/a/a/a/f;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p2, :cond_2

    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/j;->add(Lcom/a/a/a/i;I)V

    :cond_2
    iget-boolean v1, p0, Lcom/a/a/a/v;->i:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/a/a/a/v;->a(Lcom/a/a/a/f;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/a/a/a/f;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/f;->d()Lcom/a/a/a/i;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    instance-of v2, v1, Lcom/a/a/a/f;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v3, v1, v2}, Lcom/a/a/a/j;->add(Lcom/a/a/a/i;I)V

    iget-boolean v0, p0, Lcom/a/a/a/v;->i:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/a/a/a/f;

    invoke-direct {p0, v0}, Lcom/a/a/a/v;->a(Lcom/a/a/a/f;)V

    :cond_1
    move v0, v2

    :cond_2
    invoke-virtual {v1}, Lcom/a/a/a/i;->i()Lcom/a/a/a/i;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Lcom/a/a/a/f;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/f;->d()Lcom/a/a/a/i;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    instance-of v0, v1, Lcom/a/a/a/f;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p2, :cond_1

    iget-object v3, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v0, v2}, Lcom/a/a/a/j;->add(Lcom/a/a/a/i;I)V

    :cond_1
    iget-boolean v3, p0, Lcom/a/a/a/v;->i:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/a/a/a/v;->a(Lcom/a/a/a/f;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/a/a/a/i;->i()Lcom/a/a/a/i;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/a/a/a/f;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/f;

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/a/j;->b()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/a/a/a/f;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/a/a/a/f;

    invoke-direct {p0, v0}, Lcom/a/a/a/v;->a(Lcom/a/a/a/f;)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcom/a/a/a/d;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/a/a/a/d;

    invoke-direct {p0, v0}, Lcom/a/a/a/v;->a(Lcom/a/a/a/d;)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/a/aa;)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    sget-object v1, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Lcom/a/a/a/a/c;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test attribute of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    sget-object v0, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test attribute of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public a(Lcom/a/a/a/a/f;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test attribute of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/a/a/a/a/i;->a()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public a(Lcom/a/a/a/a/g;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test attribute of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p1}, Lcom/a/a/a/a/i;->a()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public a(Lcom/a/a/a/a/h;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test attribute of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public a(Lcom/a/a/a/a/j;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/a/j;->b()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/i;

    instance-of v2, v0, Lcom/a/a/a/f;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {p1}, Lcom/a/a/a/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v2, v0}, Lcom/a/a/a/j;->add(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/a/m;)V
    .locals 6

    invoke-virtual {p1}, Lcom/a/a/a/a/m;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    iget-object v0, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v0}, Lcom/a/a/a/j;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/a/a/a/f;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/a/a/a/f;

    invoke-direct {p0, v0, v2}, Lcom/a/a/a/v;->a(Lcom/a/a/a/f;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v5, v0, Lcom/a/a/a/d;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/a/a/a/d;

    invoke-direct {p0, v0, v2}, Lcom/a/a/a/v;->a(Lcom/a/a/a/d;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/a/a/a/a/q;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v0}, Lcom/a/a/a/j;->b()V

    iget-object v0, p0, Lcom/a/a/a/v;->h:Lcom/a/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/a/i;->g()Lcom/a/a/a/f;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Illegal attempt to apply \"..\" to node with no parent."

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/j;->add(Lcom/a/a/a/i;I)V

    return-void
.end method

.method public a(Lcom/a/a/a/a/r;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test position of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v1, v0}, Lcom/a/a/a/j;->a(Lcom/a/a/a/i;)I

    move-result v0

    invoke-virtual {p1}, Lcom/a/a/a/a/r;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public a(Lcom/a/a/a/a/v;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test attribute of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->d()Lcom/a/a/a/i;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    sget-object v1, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    :goto_1
    return-void

    :cond_1
    instance-of v0, v1, Lcom/a/a/a/u;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/a/a/a/u;

    invoke-virtual {v0}, Lcom/a/a/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/a/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    sget-object v1, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/a/a/a/i;->i()Lcom/a/a/a/i;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/a/w;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test attribute of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->d()Lcom/a/a/a/i;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    sget-object v1, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    :goto_1
    return-void

    :cond_1
    instance-of v1, v0, Lcom/a/a/a/u;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    sget-object v1, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/a/a/a/i;->i()Lcom/a/a/a/i;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/a/x;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/v;->j:Lcom/a/a/a/a/ac;

    const-string v2, "Cannot test attribute of document"

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/a/ad;-><init>(Lcom/a/a/a/a/ac;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->f:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->d()Lcom/a/a/a/i;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    sget-object v1, Lcom/a/a/a/v;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    :goto_1
    return-void

    :cond_1
    instance-of v0, v1, Lcom/a/a/a/u;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/a/a/a/u;

    invoke-virtual {v0}, Lcom/a/a/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/a/u;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/v;->g:Lcom/a/a/a/v$a;

    sget-object v1, Lcom/a/a/a/v;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/a/a/a/v$a;->a(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/a/a/a/i;->i()Lcom/a/a/a/i;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/a/y;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    iget-object v1, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v1}, Lcom/a/a/a/j;->b()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/a/a/a/f;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/a/a/a/f;

    invoke-virtual {v0}, Lcom/a/a/a/f;->d()Lcom/a/a/a/i;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/a/a/a/u;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    move-object v0, v1

    check-cast v0, Lcom/a/a/a/u;

    invoke-virtual {v0}, Lcom/a/a/a/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/a/j;->add(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/a/a/a/i;->i()Lcom/a/a/a/i;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Lcom/a/a/a/a/z;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    invoke-virtual {v0}, Lcom/a/a/a/j;->b()V

    iget-object v0, p0, Lcom/a/a/a/v;->c:Lcom/a/a/a/j;

    iget-object v1, p0, Lcom/a/a/a/v;->h:Lcom/a/a/a/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/j;->add(Lcom/a/a/a/i;I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/v;->d:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
