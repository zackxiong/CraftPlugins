.class public Lcom/yf/smart/weloopx/android/ui/widget/b;
.super Lcom/yf/smart/weloopx/android/ui/widget/a;
.source "ProGuard"


# instance fields
.field private a:Landroid/graphics/drawable/NinePatchDrawable;

.field private b:Landroid/graphics/drawable/NinePatchDrawable;

.field private c:Landroid/graphics/drawable/NinePatchDrawable;

.field private d:Landroid/graphics/drawable/NinePatchDrawable;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/a;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->f:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->a:Landroid/graphics/drawable/NinePatchDrawable;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->b:Landroid/graphics/drawable/NinePatchDrawable;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->c:Landroid/graphics/drawable/NinePatchDrawable;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->d:Landroid/graphics/drawable/NinePatchDrawable;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
    .locals 14

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/b;->b()[Landroid/graphics/PointF;

    move-result-object v3

    .line 57
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/b;->c()Landroid/graphics/Paint;

    move-result-object v4

    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 62
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dincond_bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 63
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getBottomLabelHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 68
    const/4 v1, 0x0

    .line 69
    array-length v6, v3

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_6

    aget-object v7, v3, v1

    .line 70
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorie()D

    move-result-wide v8

    double-to-int v0, v8

    .line 71
    iget v8, v7, Landroid/graphics/PointF;->x:F

    iput v8, v5, Landroid/graphics/RectF;->left:F

    .line 72
    iget v8, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a()F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v5, Landroid/graphics/RectF;->right:F

    .line 73
    iget v8, v5, Landroid/graphics/RectF;->bottom:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v8, v7

    iput v7, v5, Landroid/graphics/RectF;->top:F

    .line 75
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 76
    iget v8, v5, Landroid/graphics/RectF;->left:F

    iget v9, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 79
    if-gtz v0, :cond_0

    .line 80
    new-instance v9, Landroid/graphics/Rect;

    iget v10, v5, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a()F

    move-result v12

    sub-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v5, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v13, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    iget-object v10, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->d:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v10, v9}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 82
    iget-object v9, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->d:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    :cond_0
    if-lez v0, :cond_1

    .line 86
    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a()F

    move-result v10

    sub-float/2addr v9, v10

    .line 87
    iget v10, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v9

    if-lez v10, :cond_2

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    iget v10, v5, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    float-to-int v11, v9

    iget v12, v5, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v13, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    iget-object v10, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->c:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->c:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/high16 v0, 0x40a00000    # 5.0f

    sub-float v0, v9, v0

    invoke-virtual {p1, v7, v8, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    .line 69
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 95
    :cond_2
    const/16 v9, 0x5dc

    if-le v0, v9, :cond_4

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    const/16 v10, 0x28

    iget v11, v5, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget v12, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    iget-object v9, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 98
    iget-object v9, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->a:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->a:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    const/high16 v0, 0x420c0000    # 35.0f

    invoke-virtual {p1, v7, v8, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    :goto_3
    add-int/lit8 v0, v2, 0x1

    .line 106
    goto :goto_2

    .line 102
    :cond_3
    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->b:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 103
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->b:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 108
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget v10, v5, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget v11, v5, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget v12, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    iget-object v9, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 110
    iget-object v9, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->a:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 111
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->a:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    iget v0, v5, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x40a00000    # 5.0f

    sub-float/2addr v0, v9

    invoke-virtual {p1, v7, v8, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 114
    :cond_5
    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->b:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 115
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->b:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 121
    :cond_6
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->e:Ljava/util/List;

    .line 51
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/widget/b;->g:Ljava/lang/Boolean;

    .line 52
    return-void
.end method
