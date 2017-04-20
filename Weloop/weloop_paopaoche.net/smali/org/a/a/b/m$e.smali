.class Lorg/a/a/b/m$e;
.super Lorg/a/a/b/l;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lorg/a/a/b/l;-><init>()V

    .line 414
    iput-object p1, p0, Lorg/a/a/b/m$e;->f:Ljava/lang/String;

    .line 415
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/d/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/a/a/b/m$e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuffer;Lorg/a/a/d/j;)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lorg/a/a/b/m$e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    return-void
.end method
