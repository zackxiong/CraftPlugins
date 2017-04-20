.class Lorg/a/a/b/m$c;
.super Lorg/a/a/b/m$h;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final g:Lorg/a/a/b/m;


# direct methods
.method constructor <init>(Lorg/a/a/b/m;Lorg/a/a/b/e;I)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0, p2, p3}, Lorg/a/a/b/m$h;-><init>(Lorg/a/a/b/e;I)V

    .line 533
    iput-object p1, p0, Lorg/a/a/b/m$c;->g:Lorg/a/a/b/m;

    .line 535
    return-void
.end method


# virtual methods
.method b(Lorg/a/a/d/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p1}, Lorg/a/a/d/j;->a()Lorg/a/a/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/d/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
