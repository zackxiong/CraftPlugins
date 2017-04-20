.class public Lcom/b/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/lang/Object;

.field private d:Landroid/content/Context;

.field private e:Lcom/b/a/a/d;

.field private f:Lcom/b/a/a/c;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/b/a/a;->a:Z

    .line 46
    iput-boolean v0, p0, Lcom/b/a/a;->b:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/b/a/a;->c:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a;->g:Z

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a;->d:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/b/a/a;->d:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/b/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/b/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a;->e:Lcom/b/a/a/d;

    .line 66
    new-instance v0, Lcom/b/a/a/c;

    invoke-direct {v0}, Lcom/b/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/a;->f:Lcom/b/a/a/c;

    .line 67
    return-void
.end method

.method static synthetic a(Landroid/view/View;Lcom/b/a/a/a/a;)Lcom/b/a/a$a;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/b/a/a;->b(Landroid/view/View;Lcom/b/a/a/a/a;)Lcom/b/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/a/a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/b/a/a/a/a",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 390
    invoke-static {p0, p2}, Lcom/b/a/a;->b(Landroid/view/View;Lcom/b/a/a/a/a;)Lcom/b/a/a$a;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_1

    .line 393
    invoke-static {v1}, Lcom/b/a/a$a;->a(Lcom/b/a/a$a;)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 395
    :cond_0
    invoke-virtual {v1, v0}, Lcom/b/a/a$a;->a(Z)Z

    .line 400
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method private static b(Landroid/view/View;Lcom/b/a/a/a/a;)Lcom/b/a/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/b/a/a/a/a",
            "<TT;>;)",
            "Lcom/b/a/a$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 379
    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p1, p0}, Lcom/b/a/a/a/a;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 381
    instance-of v1, v0, Lcom/b/a/a/b/a;

    if-eqz v1, :cond_0

    .line 382
    check-cast v0, Lcom/b/a/a/b/a;

    .line 383
    invoke-virtual {v0}, Lcom/b/a/a/b/a;->a()Lcom/b/a/a$a;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/a;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/b/a/a;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/b/a/a;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/b/a/a;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/b/a/a;)Lcom/b/a/a/d;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/a;->e:Lcom/b/a/a/d;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/b/a/a;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/b/a/a;->f:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/b/a/a;->f:Lcom/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/b/a/a/c;->a(Landroid/graphics/Bitmap$Config;)V

    .line 150
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/b/a/a;->e:Lcom/b/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/d;->f()Lcom/b/a/a/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a/a/a;)V

    .line 212
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a/a/a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/b/a/a/c;",
            "Lcom/b/a/a/a/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 223
    if-nez p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    if-nez p4, :cond_8

    .line 228
    new-instance v0, Lcom/b/a/a/a/d;

    invoke-direct {v0}, Lcom/b/a/a/a/d;-><init>()V

    .line 231
    :goto_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/b/a/a;->f:Lcom/b/a/a/c;

    if-ne p3, v1, :cond_7

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/b/a/a;->f:Lcom/b/a/a/c;

    invoke-virtual {v1}, Lcom/b/a/a/c;->j()Lcom/b/a/a/c;

    move-result-object v4

    .line 236
    :goto_2
    invoke-virtual {v4}, Lcom/b/a/a/c;->a()Lcom/b/a/a/b/e;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/b/a/a/b/e;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/b/a/a/b/e;->b()I

    move-result v1

    invoke-static {p1, v3, v1}, Lcom/b/a/a/b;->a(Landroid/view/View;II)Lcom/b/a/a/b/e;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/b/a/a/c;->a(Lcom/b/a/a/b/e;)V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 241
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    invoke-virtual {v4}, Lcom/b/a/a/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/b/a/a/a/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {v0, p1, p2, v4}, Lcom/b/a/a/a/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;)V

    .line 250
    iget-object v1, p0, Lcom/b/a/a;->e:Lcom/b/a/a/d;

    invoke-virtual {v1}, Lcom/b/a/a/d;->f()Lcom/b/a/a/b/b;

    move-result-object v1

    invoke-virtual {v1, p2, v4}, Lcom/b/a/a/b/b;->a(Ljava/lang/String;Lcom/b/a/a/c;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 252
    if-eqz v3, :cond_4

    .line 253
    invoke-virtual {v0, p1, p2, v4}, Lcom/b/a/a/a/a;->b(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;)V

    .line 254
    sget-object v5, Lcom/b/a/a/a/b;->a:Lcom/b/a/a/a/b;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/a/a/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/b/a/a/c;Lcom/b/a/a/a/b;)V

    goto :goto_0

    .line 260
    :cond_4
    invoke-static {p1, p2, v0}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/a/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    new-instance v5, Lcom/b/a/a$a;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, v4

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/b/a/a$a;-><init>(Lcom/b/a/a;Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;Lcom/b/a/a/a/a;)V

    .line 265
    iget-object v1, p0, Lcom/b/a/a;->e:Lcom/b/a/a/d;

    invoke-virtual {v1}, Lcom/b/a/a/d;->i()Lcom/b/a/e/f;

    move-result-object v3

    .line 266
    invoke-virtual {p0, p2}, Lcom/b/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 268
    :goto_3
    iget-boolean v6, p0, Lcom/b/a/a;->g:Z

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Lcom/b/a/e/f;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 269
    iget-object v1, p0, Lcom/b/a/a;->e:Lcom/b/a/a/d;

    invoke-virtual {v1}, Lcom/b/a/a/d;->j()Lcom/b/a/e/f;

    move-result-object v1

    .line 272
    :goto_4
    invoke-virtual {v4}, Lcom/b/a/a/c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 273
    new-instance v6, Lcom/b/a/a/b/a;

    invoke-direct {v6, v3, v5}, Lcom/b/a/a/b/a;-><init>(Landroid/graphics/drawable/Drawable;Lcom/b/a/a$a;)V

    invoke-virtual {v0, p1, v6}, Lcom/b/a/a/a/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-virtual {v4}, Lcom/b/a/a/c;->i()Lcom/b/a/e/b;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/b/a/a$a;->a(Lcom/b/a/e/b;)V

    .line 276
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v0}, Lcom/b/a/a$a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/b/a/e/c;

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 267
    goto :goto_3

    :cond_6
    move-object v1, v3

    goto :goto_4

    :cond_7
    move-object v4, p3

    goto/16 :goto_2

    :cond_8
    move-object v0, p4

    goto/16 :goto_1
.end method

.method public b(I)Lcom/b/a/a;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/b/a/a;->f:Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->b(Landroid/graphics/drawable/Drawable;)V

    .line 115
    return-object p0
.end method
