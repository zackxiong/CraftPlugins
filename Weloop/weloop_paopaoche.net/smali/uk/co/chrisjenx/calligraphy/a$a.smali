.class public Luk/co/chrisjenx/calligraphy/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/chrisjenx/calligraphy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->a:Z

    .line 104
    iput-boolean v1, p0, Luk/co/chrisjenx/calligraphy/a$a;->b:Z

    .line 108
    sget v0, Luk/co/chrisjenx/calligraphy/R$attr;->fontPath:I

    iput v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->c:I

    .line 112
    iput-boolean v2, p0, Luk/co/chrisjenx/calligraphy/a$a;->d:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->e:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0
.end method

.method static synthetic a(Luk/co/chrisjenx/calligraphy/a$a;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->d:Z

    return v0
.end method

.method static synthetic b(Luk/co/chrisjenx/calligraphy/a$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Luk/co/chrisjenx/calligraphy/a$a;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->c:I

    return v0
.end method

.method static synthetic d(Luk/co/chrisjenx/calligraphy/a$a;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->a:Z

    return v0
.end method

.method static synthetic e(Luk/co/chrisjenx/calligraphy/a$a;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->b:Z

    return v0
.end method


# virtual methods
.method public a(I)Luk/co/chrisjenx/calligraphy/a$a;
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 125
    if-eq p1, v0, :cond_0

    :goto_0
    iput p1, p0, Luk/co/chrisjenx/calligraphy/a$a;->c:I

    .line 126
    return-object p0

    :cond_0
    move p1, v0

    .line 125
    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/a$a;
    .locals 1

    .prologue
    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->d:Z

    .line 138
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/a$a;->e:Ljava/lang/String;

    .line 139
    return-object p0

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Luk/co/chrisjenx/calligraphy/a;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/a$a;->d:Z

    .line 192
    new-instance v0, Luk/co/chrisjenx/calligraphy/a;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/a;-><init>(Luk/co/chrisjenx/calligraphy/a$a;)V

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
