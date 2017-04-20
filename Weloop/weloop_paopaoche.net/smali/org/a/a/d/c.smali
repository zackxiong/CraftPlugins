.class public Lorg/a/a/d/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/a/a/d/n;


# instance fields
.field final a:Lorg/a/a/d/i;


# direct methods
.method public constructor <init>(Lorg/a/a/d/i;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/a/a/d/c;->a:Lorg/a/a/d/i;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lorg/a/a/d/i;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/a/a/d/c;->a:Lorg/a/a/d/i;

    return-object v0
.end method
