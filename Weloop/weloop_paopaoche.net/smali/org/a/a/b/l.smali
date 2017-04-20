.class public abstract Lorg/a/a/b/l;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static e:[Ljava/lang/String;


# instance fields
.field public a:Lorg/a/a/b/l;

.field b:I

.field c:I

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "                "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "                                "

    aput-object v2, v0, v1

    sput-object v0, Lorg/a/a/b/l;->e:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/b/l;->b:I

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lorg/a/a/b/l;->c:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/b/l;->d:Z

    .line 42
    return-void
.end method

.method protected constructor <init>(Lorg/a/a/b/e;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/b/l;->b:I

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Lorg/a/a/b/l;->c:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/b/l;->d:Z

    .line 46
    iget v0, p1, Lorg/a/a/b/e;->a:I

    iput v0, p0, Lorg/a/a/b/l;->b:I

    .line 47
    iget v0, p1, Lorg/a/a/b/e;->b:I

    iput v0, p0, Lorg/a/a/b/l;->c:I

    .line 48
    iget-boolean v0, p1, Lorg/a/a/b/e;->c:Z

    iput-boolean v0, p0, Lorg/a/a/b/l;->d:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected abstract a(Lorg/a/a/d/j;)Ljava/lang/String;
.end method

.method public a(Ljava/lang/StringBuffer;I)V
    .locals 2

    .prologue
    .line 99
    :goto_0
    const/16 v0, 0x20

    if-lt p2, v0, :cond_0

    .line 100
    sget-object v0, Lorg/a/a/b/l;->e:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 p2, p2, -0x20

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x4

    :goto_1
    if-ltz v0, :cond_2

    .line 105
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lorg/a/a/b/l;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 109
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Lorg/a/a/d/j;)V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lorg/a/a/b/l;->a(Lorg/a/a/d/j;)Ljava/lang/String;

    move-result-object v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    iget v0, p0, Lorg/a/a/b/l;->b:I

    if-lez v0, :cond_0

    .line 68
    iget v0, p0, Lorg/a/a/b/l;->b:I

    invoke-virtual {p0, p1, v0}, Lorg/a/a/b/l;->a(Ljava/lang/StringBuffer;I)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 74
    iget v2, p0, Lorg/a/a/b/l;->c:I

    if-le v1, v2, :cond_2

    .line 75
    iget v2, p0, Lorg/a/a/b/l;->c:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 76
    :cond_2
    iget v2, p0, Lorg/a/a/b/l;->b:I

    if-ge v1, v2, :cond_4

    .line 77
    iget-boolean v2, p0, Lorg/a/a/b/l;->d:Z

    if-eqz v2, :cond_3

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget v0, p0, Lorg/a/a/b/l;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/a/a/b/l;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 82
    :cond_3
    iget v2, p0, Lorg/a/a/b/l;->b:I

    sub-int v1, v2, v1

    invoke-virtual {p0, p1, v1}, Lorg/a/a/b/l;->a(Ljava/lang/StringBuffer;I)V

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
