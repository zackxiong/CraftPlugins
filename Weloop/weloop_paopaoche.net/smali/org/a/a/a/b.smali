.class public Lorg/a/a/a/b;
.super Ljava/lang/Exception;
.source "ProGuard"


# instance fields
.field protected a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/a/a/a/b;->a:Ljava/lang/Throwable;

    .line 39
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/a/a/a/b;->a:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lorg/a/a/a/b;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method
