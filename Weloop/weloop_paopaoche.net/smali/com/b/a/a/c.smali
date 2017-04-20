.class public Lcom/b/a/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/b/a/a/b/e;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Bitmap$Config;

.field private h:Lcom/b/a/a/d/a;

.field private i:Lcom/b/a/e/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/b/a/a/c;->e:Z

    .line 32
    iput-boolean v0, p0, Lcom/b/a/a/c;->f:Z

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/b/a/a/c;->g:Landroid/graphics/Bitmap$Config;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/a/b/e;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/b/a/a/c;->a:Lcom/b/a/a/b/e;

    if-nez v0, :cond_0

    sget-object v0, Lcom/b/a/a/b/e;->a:Lcom/b/a/a/b/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c;->a:Lcom/b/a/a/b/e;

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/b/a/a/c;->g:Landroid/graphics/Bitmap$Config;

    .line 95
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/b/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method

.method public a(Lcom/b/a/a/b/e;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/b/a/a/c;->a:Lcom/b/a/a/b/e;

    .line 47
    return-void
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/b/a/a/c;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/b/a/a/c;->d:Landroid/graphics/drawable/Drawable;

    .line 71
    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/b/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/b/a/a/c;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/b/a/a/c;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/b/a/a/c;->f:Z

    return v0
.end method

.method public g()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/b/a/a/c;->g:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public h()Lcom/b/a/a/d/a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/d/a;

    return-object v0
.end method

.method public i()Lcom/b/a/e/b;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/b/a/a/c;->i:Lcom/b/a/e/b;

    return-object v0
.end method

.method public j()Lcom/b/a/a/c;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/b/a/a/c;

    invoke-direct {v0}, Lcom/b/a/a/c;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/b/a/a/c;->a:Lcom/b/a/a/b/e;

    iput-object v1, v0, Lcom/b/a/a/c;->a:Lcom/b/a/a/b/e;

    .line 122
    iget-object v1, p0, Lcom/b/a/a/c;->b:Landroid/view/animation/Animation;

    iput-object v1, v0, Lcom/b/a/a/c;->b:Landroid/view/animation/Animation;

    .line 123
    iget-object v1, p0, Lcom/b/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/b/a/a/c;->c:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v1, p0, Lcom/b/a/a/c;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/b/a/a/c;->d:Landroid/graphics/drawable/Drawable;

    .line 125
    iget-boolean v1, p0, Lcom/b/a/a/c;->e:Z

    iput-boolean v1, v0, Lcom/b/a/a/c;->e:Z

    .line 126
    iget-boolean v1, p0, Lcom/b/a/a/c;->f:Z

    iput-boolean v1, v0, Lcom/b/a/a/c;->f:Z

    .line 127
    iget-object v1, p0, Lcom/b/a/a/c;->g:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/b/a/a/c;->g:Landroid/graphics/Bitmap$Config;

    .line 128
    iget-object v1, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/d/a;

    iput-object v1, v0, Lcom/b/a/a/c;->h:Lcom/b/a/a/d/a;

    .line 129
    iget-object v1, p0, Lcom/b/a/a/c;->i:Lcom/b/a/e/b;

    iput-object v1, v0, Lcom/b/a/a/c;->i:Lcom/b/a/e/b;

    .line 130
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/d/a;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/c;->a:Lcom/b/a/a/b/e;

    invoke-virtual {v0}, Lcom/b/a/a/b/e;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/c;->h:Lcom/b/a/a/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
