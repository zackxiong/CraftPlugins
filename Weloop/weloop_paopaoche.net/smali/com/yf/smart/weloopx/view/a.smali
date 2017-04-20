.class public Lcom/yf/smart/weloopx/view/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/view/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/yf/smart/weloopx/view/g;

.field d:Ljava/lang/Runnable;

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Handler;

.field private g:Lcom/yf/smart/weloopx/view/CropImageView;

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yf/smart/weloopx/view/CropImageView;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/a;->f:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/yf/smart/weloopx/view/d;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/view/d;-><init>(Lcom/yf/smart/weloopx/view/a;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/view/a;->d:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/a;->e:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/yf/smart/weloopx/view/a;->g:Lcom/yf/smart/weloopx/view/CropImageView;

    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->g:Lcom/yf/smart/weloopx/view/CropImageView;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/view/CropImageView;->setCropImage(Lcom/yf/smart/weloopx/view/a;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/view/a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/view/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/a;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yf/smart/weloopx/view/a$a;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/yf/smart/weloopx/view/a$a;-><init>(Lcom/yf/smart/weloopx/view/a;Landroid/app/ProgressDialog;Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->g:Lcom/yf/smart/weloopx/view/CropImageView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v0, ""

    new-instance v1, Lcom/yf/smart/weloopx/view/b;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/view/b;-><init>(Lcom/yf/smart/weloopx/view/a;)V

    iget-object v2, p0, Lcom/yf/smart/weloopx/view/a;->f:Landroid/os/Handler;

    invoke-direct {p0, v0, v1, v2}, Lcom/yf/smart/weloopx/view/a;->a(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/view/a;->b:Z

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object p1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->c:Lcom/yf/smart/weloopx/view/g;

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/view/a;->b:Z

    .line 113
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->c:Lcom/yf/smart/weloopx/view/g;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/g;->b()Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 116
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 120
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v4, p1, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p1, v0

    .line 126
    goto :goto_0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/view/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->g:Lcom/yf/smart/weloopx/view/CropImageView;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/a;->g:Lcom/yf/smart/weloopx/view/CropImageView;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/CropImageView;->invalidate()V

    .line 97
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/a;->h:Landroid/graphics/Bitmap;

    .line 45
    invoke-direct {p0}, Lcom/yf/smart/weloopx/view/a;->b()V

    .line 46
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/view/a;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/yf/smart/weloopx/view/a;->g:Lcom/yf/smart/weloopx/view/CropImageView;

    iget-object v1, v1, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 88
    return-object v0
.end method
