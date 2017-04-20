.class public Lorg/a/a/d/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final e:[Ljava/lang/Integer;

.field static final f:[Ljava/lang/Class;

.field static final g:Ljava/util/Hashtable;

.field private static h:J


# instance fields
.field public final transient a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public transient c:Lorg/a/a/o;

.field public final d:J

.field private transient i:Lorg/a/a/c;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Hashtable;

.field private l:Z

.field private m:Z

.field private transient n:Ljava/lang/Object;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lorg/a/a/d/p;

.field private r:Lorg/a/a/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/a/a/d/j;->h:J

    .line 131
    new-array v0, v2, [Ljava/lang/Integer;

    sput-object v0, Lorg/a/a/d/j;->e:[Ljava/lang/Integer;

    .line 133
    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/a/a/d/j;->f:[Ljava/lang/Class;

    .line 134
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/a/a/d/j;->g:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/a/a/c;Lorg/a/a/o;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v0, p0, Lorg/a/a/d/j;->l:Z

    .line 104
    iput-boolean v0, p0, Lorg/a/a/d/j;->m:Z

    .line 148
    iput-object p1, p0, Lorg/a/a/d/j;->a:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lorg/a/a/d/j;->i:Lorg/a/a/c;

    .line 150
    invoke-virtual {p2}, Lorg/a/a/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/j;->b:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lorg/a/a/d/j;->c:Lorg/a/a/o;

    .line 152
    iput-object p4, p0, Lorg/a/a/d/j;->n:Ljava/lang/Object;

    .line 153
    if-eqz p5, :cond_0

    .line 154
    new-instance v0, Lorg/a/a/d/p;

    invoke-direct {v0, p5}, Lorg/a/a/d/p;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/a/a/d/j;->q:Lorg/a/a/d/p;

    .line 156
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/a/a/d/j;->d:J

    .line 157
    return-void
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 310
    sget-wide v0, Lorg/a/a/d/j;->h:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/a/a/d/j;->k:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/a/a/d/j;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/a/a/l;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lorg/a/a/d/g;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lorg/a/a/d/j;->r:Lorg/a/a/d/g;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lorg/a/a/d/g;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iget-object v2, p0, Lorg/a/a/d/j;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/a/a/d/g;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/a/a/d/j;->r:Lorg/a/a/d/g;

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/a/a/d/j;->r:Lorg/a/a/d/g;

    return-object v0
.end method

.method public b()Lorg/a/a/i;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/a/a/d/j;->c:Lorg/a/a/o;

    check-cast v0, Lorg/a/a/i;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/a/a/d/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/a/a/d/j;->l:Z

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/d/j;->l:Z

    .line 238
    invoke-static {}, Lorg/a/a/m;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/j;->j:Ljava/lang/String;

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/a/a/d/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/a/a/d/j;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/a/a/d/j;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/a/a/d/j;->n:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/a/a/d/j;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/a/a/d/j;->o:Ljava/lang/String;

    .line 303
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/a/a/d/j;->o:Ljava/lang/String;

    return-object v0

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/a/a/d/j;->i:Lorg/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/c;->d()Lorg/a/a/d/i;

    move-result-object v0

    .line 295
    instance-of v1, v0, Lorg/a/a/d/m;

    if-eqz v1, :cond_2

    .line 296
    check-cast v0, Lorg/a/a/d/m;

    .line 297
    invoke-interface {v0}, Lorg/a/a/d/m;->c()Lorg/a/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/d/j;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/a/a/c/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/j;->o:Ljava/lang/String;

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lorg/a/a/d/j;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/j;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/a/a/d/j;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/j;->p:Ljava/lang/String;

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/a/a/d/j;->p:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lorg/a/a/d/p;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/a/a/d/j;->q:Lorg/a/a/d/p;

    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/a/a/d/j;->q:Lorg/a/a/d/p;

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/d/j;->q:Lorg/a/a/d/p;

    invoke-virtual {v0}, Lorg/a/a/d/p;->b()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
