.class public abstract Lcom/b/a/d/a/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/b/a/d/a/d;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    const/16 v0, 0xc8

    .line 53
    iget v1, p0, Lcom/b/a/d/a/d;->b:I

    if-ge v1, v0, :cond_0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/b/a/d/a/d;->b:I

    goto :goto_0
.end method

.method public a(JJZ)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public abstract a(Lcom/b/a/c/b;Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/b/a/d/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/b/a/d/a/d;->a:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
