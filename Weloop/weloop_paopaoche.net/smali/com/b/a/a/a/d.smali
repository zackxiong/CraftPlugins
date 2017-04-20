.class public Lcom/b/a/a/a/d;
.super Lcom/b/a/a/a/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/b/a/a/a/a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/b/a/a/a/a;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    const-class v0, Landroid/view/animation/Animation;

    const-string v1, "clone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/b/a/a/c;Lcom/b/a/a/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/b/a/a/c;",
            "Lcom/b/a/a/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1, p3}, Lcom/b/a/a/a/d;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual {p4}, Lcom/b/a/a/c;->b()Landroid/view/animation/Animation;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/b/a/a/a/d;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 35
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p3}, Lcom/b/a/a/a/d;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method
