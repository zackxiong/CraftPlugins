.class public Lorg/a/a/b/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/a/a/d/d;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "log4j warning: "

    iput-object v0, p0, Lorg/a/a/b/j;->a:Ljava/lang/String;

    .line 41
    const-string v0, "log4j error: "

    iput-object v0, p0, Lorg/a/a/b/j;->b:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/b/j;->c:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/a/a/b/j;->c:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p1}, Lorg/a/a/b/h;->b(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/b/j;->c:Z

    .line 93
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/a/a/b/j;->a(Ljava/lang/String;Ljava/lang/Exception;ILorg/a/a/d/j;)V

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Exception;ILorg/a/a/d/j;)V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/a/a/b/j;->c:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1, p2}, Lorg/a/a/b/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/b/j;->c:Z

    .line 80
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
