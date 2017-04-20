.class public Lorg/a/a/b/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final a:Lorg/a/a/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/a/a/b/i;

    invoke-direct {v0}, Lorg/a/a/b/i;-><init>()V

    sput-object v0, Lorg/a/a/b/i;->a:Lorg/a/a/b/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Lorg/a/a/b/i;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/a/a/b/i;->a:Lorg/a/a/b/i;

    return-object v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
