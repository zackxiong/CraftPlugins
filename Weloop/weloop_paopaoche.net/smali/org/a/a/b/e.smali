.class public Lorg/a/a/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/b/e;->a:I

    .line 31
    const v0, 0x7fffffff

    iput v0, p0, Lorg/a/a/b/e;->b:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/b/e;->c:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/b/e;->a:I

    .line 36
    const v0, 0x7fffffff

    iput v0, p0, Lorg/a/a/b/e;->b:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/b/e;->c:Z

    .line 38
    return-void
.end method
