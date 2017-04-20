.class public Lcom/yf/smart/weloopx/android/ui/widget/d;
.super Lcom/yf/smart/weloopx/android/ui/widget/a;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private c:[I

.field private d:[I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/NinePatchDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/NinePatchDrawable;

.field private g:Landroid/graphics/drawable/NinePatchDrawable;

.field private h:Ljava/lang/Boolean;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[ILjava/lang/Boolean;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/widget/a;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->a:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->b:Ljava/util/List;

    .line 29
    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->c:[I

    .line 30
    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->d:[I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->e:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->i:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->c:[I

    .line 39
    iput-object p3, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->d:[I

    .line 40
    iput-object p4, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->h:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->f:Landroid/graphics/drawable/NinePatchDrawable;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->g:Landroid/graphics/drawable/NinePatchDrawable;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;)V
    .locals 22

    .prologue
    .line 67
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getYSize()F

    move-result v11

    .line 69
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->a:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/PointF;

    array-length v12, v4

    .line 70
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 71
    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    const-string v14, "hh:mm"

    .line 78
    const/4 v4, 0x0

    move v9, v4

    :goto_0
    if-ge v9, v12, :cond_a

    .line 80
    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 82
    const/4 v4, 0x0

    .line 85
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/PointF;

    .line 86
    aget-object v4, v4, v9

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v6

    move v6, v4

    .line 87
    goto :goto_1

    .line 89
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->a:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/PointF;

    aget-object v4, v4, v9

    iget v15, v4, Landroid/graphics/PointF;->y:F

    .line 91
    const/4 v4, 0x0

    .line 93
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v7, v4

    move v8, v6

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/PointF;

    .line 94
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->e:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 95
    aget-object v17, v4, v9

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 96
    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a()F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 97
    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    sub-float v17, v17, v8

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 98
    aget-object v17, v4, v9

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    sub-float v8, v8, v17

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->c:[I

    move-object/from16 v17, v0

    aget v17, v17, v9

    if-nez v17, :cond_2

    .line 101
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v10, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x40000000    # 2.0f

    add-float/2addr v8, v15

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->f:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->f:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    :cond_1
    :goto_3
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto/16 :goto_0

    .line 107
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->c:[I

    move-object/from16 v17, v0

    aget v17, v17, v9

    move/from16 v0, v17

    invoke-static {v0, v14}, Lcom/yf/smart/weloopx/g/m;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->c:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    const/16 v19, 0x2b2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 109
    aget-object v4, v4, v9

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v15

    if-nez v4, :cond_4

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->d:[I

    aget v4, v4, v9

    const/16 v6, 0x258

    if-le v4, v6, :cond_3

    .line 111
    new-instance v4, Landroid/graphics/Rect;

    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    add-int/lit16 v7, v7, -0x190

    iget v8, v10, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v15, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    invoke-direct {v4, v6, v7, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 116
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, v10, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, v10, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v15, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    invoke-direct {v4, v6, v7, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 121
    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x28

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 122
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 123
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->h:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    iget v4, v10, Landroid/graphics/RectF;->left:F

    iget v5, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 126
    const/high16 v5, 0x420c0000    # 35.0f

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    :cond_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    .line 129
    goto/16 :goto_2

    .line 131
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a()F

    move-result v4

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_7

    .line 132
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v10, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v8, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->g:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->h:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    iget v4, v10, Landroid/graphics/RectF;->left:F

    iget v5, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 138
    iget v5, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    sub-float/2addr v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 142
    :cond_7
    const/4 v4, 0x2

    if-ne v7, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a()F

    move-result v4

    cmpg-float v4, v15, v4

    if-gez v4, :cond_8

    .line 143
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    iget v7, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v10, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v4, v5, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->g:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->h:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    cmpl-float v4, v6, v15

    if-nez v4, :cond_1

    .line 148
    iget v4, v10, Landroid/graphics/RectF;->left:F

    iget v5, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 149
    iget v5, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p0 .. p0}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    sub-float/2addr v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 153
    :cond_8
    new-instance v4, Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/d;->h:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 157
    iget v4, v10, Landroid/graphics/RectF;->left:F

    iget v5, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 158
    iget v5, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    const/high16 v18, 0x40a00000    # 5.0f

    sub-float v5, v5, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    :cond_9
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    .line 162
    goto/16 :goto_2

    .line 164
    :cond_a
    return-void
.end method

.method public final a([Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public a([Landroid/graphics/PointF;Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/widget/d;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public final b()[Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/widget/a;->b()[Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
