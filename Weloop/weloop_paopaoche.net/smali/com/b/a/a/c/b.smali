.class public abstract Lcom/b/a/a/c/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/b/a/a$a;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/b/a/a$a",
            "<*>;)J"
        }
    .end annotation
.end method

.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/b/a/a/c/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/b/a/a/c/b;->c:I

    .line 61
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/b/a/a/c/b;->b:J

    .line 49
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/b/a/a/c/b;->a:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/b/a/a/c/b;->b:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/b/a/a/c/b;->d:I

    .line 69
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/b/a/a/c/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/b/a/a/c/b;->d:I

    return v0
.end method
