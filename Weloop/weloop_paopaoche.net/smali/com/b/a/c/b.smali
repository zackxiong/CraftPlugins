.class public Lcom/b/a/c/b;
.super Lcom/b/a/c/a;
.source "ProGuard"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/b/a/c/a;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p2}, Lcom/b/a/c/a;-><init>(Ljava/lang/String;)V

    .line 51
    iput p1, p0, Lcom/b/a/c/b;->a:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/b/a/c/a;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/b/a/c/a;-><init>(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
