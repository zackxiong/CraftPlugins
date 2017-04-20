.class public final Lcom/b/a/b/c$c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/b/c;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/FileInputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/b/a/b/c;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V
    .locals 1

    .prologue
    .line 746
    iput-object p1, p0, Lcom/b/a/b/c$c;->a:Lcom/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p2, p0, Lcom/b/a/b/c$c;->b:Ljava/lang/String;

    .line 748
    iput-wide p3, p0, Lcom/b/a/b/c$c;->c:J

    .line 749
    iput-object p5, p0, Lcom/b/a/b/c$c;->d:[Ljava/io/FileInputStream;

    .line 750
    iput-object p6, p0, Lcom/b/a/b/c$c;->e:[J

    .line 751
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/b/c;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/b/a/b/d;)V
    .locals 1

    .prologue
    .line 740
    invoke-direct/range {p0 .. p6}, Lcom/b/a/b/c$c;-><init>(Lcom/b/a/b/c;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/FileInputStream;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/b/a/b/c$c;->d:[Ljava/io/FileInputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 785
    iget-object v1, p0, Lcom/b/a/b/c$c;->d:[Ljava/io/FileInputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 786
    invoke-static {v3}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_0
    return-void
.end method
