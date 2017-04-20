.class public Lcom/yf/gattlib/http/afinal/bitmap/display/SimpleDisplayer;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/http/afinal/bitmap/display/Displayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private animationDisplay(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 73
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 74
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    return-void

    .line 76
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private fadeInDisplay(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 57
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 62
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 63
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :goto_0
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public loadCompletedisplay(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;)V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getAnimationType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/display/SimpleDisplayer;->fadeInDisplay(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 38
    :pswitch_1
    invoke-virtual {p3}, Lcom/yf/gattlib/http/afinal/bitmap/core/BitmapDisplayConfig;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yf/gattlib/http/afinal/bitmap/display/SimpleDisplayer;->animationDisplay(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadFailDisplay(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 47
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
