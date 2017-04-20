.class public Luk/co/chrisjenx/calligraphy/b;
.super Landroid/content/ContextWrapper;
.source "ProGuard"


# instance fields
.field private a:Luk/co/chrisjenx/calligraphy/f;

.field private final b:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Luk/co/chrisjenx/calligraphy/a;->a()Luk/co/chrisjenx/calligraphy/a;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/a;->f()I

    move-result v0

    iput v0, p0, Luk/co/chrisjenx/calligraphy/b;->b:I

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Luk/co/chrisjenx/calligraphy/b;

    invoke-direct {v0, p0}, Luk/co/chrisjenx/calligraphy/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 109
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/b;->a:Luk/co/chrisjenx/calligraphy/f;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Luk/co/chrisjenx/calligraphy/f;

    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/b;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Luk/co/chrisjenx/calligraphy/b;->b:I

    invoke-direct {v0, v1, p0, v2}, Luk/co/chrisjenx/calligraphy/f;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;I)V

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/b;->a:Luk/co/chrisjenx/calligraphy/f;

    .line 113
    :cond_0
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/b;->a:Luk/co/chrisjenx/calligraphy/f;

    .line 115
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
