.class Lorg/a/a/b/m$g;
.super Lorg/a/a/b/l;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/a/a/b/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lorg/a/a/b/l;-><init>(Lorg/a/a/b/e;)V

    .line 458
    iput-object p2, p0, Lorg/a/a/b/m$g;->f:Ljava/lang/String;

    .line 459
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/d/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/a/a/b/m$g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/a/a/d/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 464
    if-nez v0, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
