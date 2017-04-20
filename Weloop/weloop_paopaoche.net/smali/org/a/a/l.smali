.class public Lorg/a/a/l;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final a:Lorg/a/a/l;


# instance fields
.field b:Z

.field c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/a/a/l;

    invoke-direct {v0}, Lorg/a/a/l;-><init>()V

    sput-object v0, Lorg/a/a/l;->a:Lorg/a/a/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lorg/a/a/b/g;->a()Z

    move-result v0

    iput-boolean v0, p0, Lorg/a/a/l;->b:Z

    .line 55
    iget-boolean v0, p0, Lorg/a/a/l;->b:Z

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/a/a/b/o;

    invoke-direct {v0}, Lorg/a/a/b/o;-><init>()V

    iput-object v0, p0, Lorg/a/a/l;->c:Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/a/a/l;->a:Lorg/a/a/l;

    invoke-direct {v0, p0}, Lorg/a/a/l;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-boolean v0, p0, Lorg/a/a/l;->b:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 130
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/a/a/l;->c:Ljava/lang/Object;

    check-cast v0, Lorg/a/a/b/o;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 127
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 130
    goto :goto_0
.end method
