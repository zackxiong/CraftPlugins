.class public Luk/co/chrisjenx/calligraphy/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/chrisjenx/calligraphy/a$a;
    }
.end annotation


# static fields
.field private static a:Luk/co/chrisjenx/calligraphy/a;


# instance fields
.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z

.field private final f:Z


# direct methods
.method protected constructor <init>(Luk/co/chrisjenx/calligraphy/a$a;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/a$a;->a(Luk/co/chrisjenx/calligraphy/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a;->b:Z

    .line 57
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/a$a;->b(Luk/co/chrisjenx/calligraphy/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/a;->c:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/a$a;->c(Luk/co/chrisjenx/calligraphy/a$a;)I

    move-result v0

    iput v0, p0, Luk/co/chrisjenx/calligraphy/a;->d:I

    .line 59
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/a$a;->d(Luk/co/chrisjenx/calligraphy/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a;->e:Z

    .line 60
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/a$a;->e(Luk/co/chrisjenx/calligraphy/a$a;)Z

    move-result v0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a;->f:Z

    .line 61
    return-void
.end method

.method public static a()Luk/co/chrisjenx/calligraphy/a;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Luk/co/chrisjenx/calligraphy/a;->a:Luk/co/chrisjenx/calligraphy/a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Luk/co/chrisjenx/calligraphy/a;

    new-instance v1, Luk/co/chrisjenx/calligraphy/a$a;

    invoke-direct {v1}, Luk/co/chrisjenx/calligraphy/a$a;-><init>()V

    invoke-direct {v0, v1}, Luk/co/chrisjenx/calligraphy/a;-><init>(Luk/co/chrisjenx/calligraphy/a$a;)V

    sput-object v0, Luk/co/chrisjenx/calligraphy/a;->a:Luk/co/chrisjenx/calligraphy/a;

    .line 31
    :cond_0
    sget-object v0, Luk/co/chrisjenx/calligraphy/a;->a:Luk/co/chrisjenx/calligraphy/a;

    return-object v0
.end method

.method public static a(Luk/co/chrisjenx/calligraphy/a;)V
    .locals 0

    .prologue
    .line 21
    sput-object p0, Luk/co/chrisjenx/calligraphy/a;->a:Luk/co/chrisjenx/calligraphy/a;

    .line 22
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a;->b:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a;->f:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Luk/co/chrisjenx/calligraphy/a;->d:I

    return v0
.end method
