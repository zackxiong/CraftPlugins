.class public final Lorg/a/a/d/o;
.super Lorg/a/a/k;
.source "ProGuard"


# direct methods
.method public constructor <init>(Lorg/a/a/i;)V
    .locals 1

    .prologue
    .line 43
    const-string v0, "root"

    invoke-direct {p0, v0}, Lorg/a/a/k;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lorg/a/a/d/o;->a(Lorg/a/a/i;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lorg/a/a/i;)V
    .locals 2

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string v0, "You have tried to set a null level to root."

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lorg/a/a/b/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/a/a/c;->b:Lorg/a/a/i;

    goto :goto_0
.end method
