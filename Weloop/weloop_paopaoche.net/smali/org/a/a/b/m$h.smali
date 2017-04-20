.class abstract Lorg/a/a/b/m$h;
.super Lorg/a/a/b/l;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "h"
.end annotation


# instance fields
.field f:I


# direct methods
.method constructor <init>(Lorg/a/a/b/e;I)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lorg/a/a/b/l;-><init>(Lorg/a/a/b/e;)V

    .line 503
    iput p2, p0, Lorg/a/a/b/m$h;->f:I

    .line 504
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/d/j;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lorg/a/a/b/m$h;->b(Lorg/a/a/d/j;)Ljava/lang/String;

    move-result-object v0

    .line 512
    iget v1, p0, Lorg/a/a/b/m$h;->f:I

    if-gtz v1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-object v0

    .line 515
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 520
    add-int/lit8 v2, v3, -0x1

    .line 521
    iget v1, p0, Lorg/a/a/b/m$h;->f:I

    :goto_1
    if-lez v1, :cond_2

    .line 522
    const/16 v4, 0x2e

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 523
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 521
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 526
    :cond_2
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method abstract b(Lorg/a/a/d/j;)Ljava/lang/String;
.end method
