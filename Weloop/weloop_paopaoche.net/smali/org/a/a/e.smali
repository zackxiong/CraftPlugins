.class Lorg/a/a/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/a/a/d/h;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/a/a/k;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/a/a/k;

    invoke-direct {v0, p1}, Lorg/a/a/k;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
