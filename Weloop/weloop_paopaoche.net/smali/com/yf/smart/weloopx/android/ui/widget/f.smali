.class public final Lcom/yf/smart/weloopx/android/ui/widget/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;Ljava/util/List;FILjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yf/smart/weloopx/android/ui/widget/ChartView;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;FI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a()V

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 30
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    div-int/lit8 v5, v2, 0x22

    .line 32
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getYSize()F

    move-result v6

    .line 34
    const/4 v2, 0x5

    new-array v3, v2, [Landroid/graphics/PointF;

    .line 35
    const/4 v2, 0x5

    new-array v4, v2, [Landroid/graphics/PointF;

    .line 36
    const/4 v2, 0x5

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "1"

    aput-object v8, v7, v2

    const/4 v2, 0x1

    const-string v8, "7"

    aput-object v8, v7, v2

    const/4 v2, 0x2

    const-string v8, "14"

    aput-object v8, v7, v2

    const/4 v2, 0x3

    const-string v8, "21"

    aput-object v8, v7, v2

    const/4 v2, 0x4

    const-string v8, "28"

    aput-object v8, v7, v2

    .line 38
    const/4 v2, 0x0

    new-instance v8, Landroid/graphics/PointF;

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v5

    int-to-float v9, v9

    const/high16 v10, 0x41200000    # 10.0f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v8, v4, v2

    .line 39
    const/4 v2, 0x0

    new-instance v8, Landroid/graphics/PointF;

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-direct {v8, v9, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v8, v3, v2

    .line 41
    const/4 v2, 0x1

    :goto_0
    array-length v8, v4

    if-ge v2, v8, :cond_0

    .line 42
    mul-int/lit8 v8, v2, 0x7

    mul-int/2addr v8, v5

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 43
    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x41200000    # 10.0f

    invoke-direct {v9, v8, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, v4, v2

    .line 44
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, v3, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/e;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/android/ui/widget/e;-><init>()V

    .line 47
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06005b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 52
    invoke-virtual {v2, v4}, Lcom/yf/smart/weloopx/android/ui/widget/e;->a([Landroid/graphics/PointF;)V

    .line 53
    invoke-virtual {v2, v7}, Lcom/yf/smart/weloopx/android/ui/widget/e;->a([Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setBottomLabelSeries(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 56
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/c;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/android/ui/widget/c;-><init>()V

    .line 57
    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a([Landroid/graphics/PointF;)V

    .line 58
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a(F)V

    .line 59
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/c;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c0063

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {p1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 62
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/PointF;

    .line 63
    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/PointF;

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v2, v3

    .line 64
    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/PointF;

    add-int/lit8 v7, p4, 0x1

    mul-int/2addr v7, v5

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v2, v3

    .line 65
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/widget/m;

    invoke-direct {v3}, Lcom/yf/smart/weloopx/android/ui/widget/m;-><init>()V

    .line 66
    invoke-virtual {v3, v2}, Lcom/yf/smart/weloopx/android/ui/widget/m;->a([Landroid/graphics/PointF;)V

    .line 67
    invoke-virtual {v3}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    invoke-virtual {v3}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c011e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-virtual {p1, v3}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 73
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getHappenDate()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/yf/smart/weloopx/g/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x5a0

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 75
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/PointF;

    .line 76
    const/4 v4, 0x0

    new-instance v7, Landroid/graphics/PointF;

    mul-int v8, v3, v5

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v2, v4

    .line 77
    const/4 v4, 0x1

    new-instance v7, Landroid/graphics/PointF;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v3

    mul-int/2addr v8, v5

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v2, v4

    .line 86
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Landroid/graphics/PointF;

    .line 87
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Landroid/graphics/PointF;

    .line 89
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    array-length v2, v7

    if-ge v4, v2, :cond_1

    .line 90
    new-instance v9, Landroid/graphics/PointF;

    add-int v2, v4, v3

    mul-int/2addr v2, v5

    int-to-float v10, v2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorie()D

    move-result-wide v12

    double-to-float v2, v12

    mul-float/2addr v2, v6

    div-float v2, v2, p3

    invoke-direct {v9, v10, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, v7, v4

    .line 92
    new-instance v9, Landroid/graphics/PointF;

    add-int v2, v4, v3

    mul-int/2addr v2, v5

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v2, v10

    int-to-float v10, v2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorieGoal()D

    move-result-wide v12

    double-to-float v2, v12

    mul-float/2addr v2, v6

    div-float v2, v2, p3

    invoke-direct {v9, v10, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, v8, v4

    .line 89
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 95
    :cond_1
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/b;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/widget/b;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a(Ljava/util/List;Ljava/lang/Boolean;)V

    .line 97
    int-to-float v3, v5

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a(F)V

    .line 98
    invoke-virtual {v2, v7}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a([Landroid/graphics/PointF;)V

    .line 99
    invoke-virtual {p1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 101
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/m;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/android/ui/widget/m;-><init>()V

    .line 102
    invoke-virtual {v2, v8}, Lcom/yf/smart/weloopx/android/ui/widget/m;->a([Landroid/graphics/PointF;)V

    .line 103
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0061

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 107
    mul-int v2, p4, v5

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setXSize(F)V

    .line 108
    const/4 v2, 0x0

    invoke-virtual {p1, v5, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->scrollTo(II)V

    .line 109
    return-void

    :cond_2
    move v3, v2

    goto/16 :goto_1
.end method

.method public static b(Landroid/content/Context;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;Ljava/util/List;FILjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yf/smart/weloopx/android/ui/widget/ChartView;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/CalorieItem;",
            ">;FI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a()V

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 118
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 119
    div-int/lit8 v5, v2, 0x10

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getYSize()F

    move-result v6

    .line 122
    const/4 v2, 0x7

    new-array v4, v2, [Landroid/graphics/PointF;

    .line 123
    const/4 v2, 0x7

    new-array v7, v2, [Landroid/graphics/PointF;

    .line 124
    const/4 v2, 0x7

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f07016b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x1

    const v3, 0x7f07027d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x2

    const v3, 0x7f0702d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x3

    const v3, 0x7f07026d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x4

    const v3, 0x7f07010a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x5

    const v3, 0x7f0701f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x6

    const v3, 0x7f070235

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 133
    mul-int/lit8 v2, v5, 0x2

    int-to-float v9, v2

    .line 134
    div-int/lit8 v2, v5, 0x2

    int-to-float v2, v2

    add-float v3, v9, v2

    .line 135
    const/4 v2, 0x0

    :goto_0
    array-length v10, v7

    if-ge v2, v10, :cond_0

    .line 136
    new-instance v10, Landroid/graphics/PointF;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-direct {v10, v3, v11}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v10, v7, v2

    .line 137
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v10, v4, v2

    .line 138
    add-float/2addr v3, v9

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/e;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/android/ui/widget/e;-><init>()V

    .line 141
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v10, 0x1

    invoke-static {v10}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 145
    invoke-virtual {v2, v7}, Lcom/yf/smart/weloopx/android/ui/widget/e;->a([Landroid/graphics/PointF;)V

    .line 146
    invoke-virtual {v2, v8}, Lcom/yf/smart/weloopx/android/ui/widget/e;->a([Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setBottomLabelSeries(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 150
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/c;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/android/ui/widget/c;-><init>()V

    .line 151
    invoke-virtual {v2, v4}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a([Landroid/graphics/PointF;)V

    .line 152
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a(F)V

    .line 153
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/c;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c0063

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 156
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/PointF;

    .line 157
    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/PointF;

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v2, v3

    .line 158
    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/PointF;

    add-int/lit8 v7, p4, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v2, v3

    .line 159
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/widget/m;

    invoke-direct {v3}, Lcom/yf/smart/weloopx/android/ui/widget/m;-><init>()V

    .line 160
    invoke-virtual {v3, v2}, Lcom/yf/smart/weloopx/android/ui/widget/m;->a([Landroid/graphics/PointF;)V

    .line 161
    invoke-virtual {v3}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    invoke-virtual {v3}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c011e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 165
    const/4 v2, 0x0

    .line 166
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 167
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getHappenDate()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/yf/smart/weloopx/g/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x5a0

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 169
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/PointF;

    .line 170
    const/4 v4, 0x0

    new-instance v7, Landroid/graphics/PointF;

    int-to-float v8, v3

    mul-float/2addr v8, v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v7, v8, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v2, v4

    .line 171
    const/4 v4, 0x1

    new-instance v7, Landroid/graphics/PointF;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v3

    int-to-float v8, v8

    mul-float/2addr v8, v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v7, v8, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v2, v4

    .line 180
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [Landroid/graphics/PointF;

    .line 181
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v8, v2, [Landroid/graphics/PointF;

    .line 183
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    array-length v2, v7

    if-ge v4, v2, :cond_1

    .line 184
    new-instance v10, Landroid/graphics/PointF;

    add-int v2, v4, v3

    int-to-float v2, v2

    mul-float v11, v2, v9

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorie()D

    move-result-wide v12

    float-to-double v14, v6

    mul-double/2addr v12, v14

    move/from16 v0, p3

    float-to-double v14, v0

    div-double/2addr v12, v14

    double-to-float v2, v12

    invoke-direct {v10, v11, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v10, v7, v4

    .line 186
    new-instance v10, Landroid/graphics/PointF;

    add-int v2, v4, v3

    int-to-float v2, v2

    mul-float/2addr v2, v9

    div-int/lit8 v11, v5, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yf/smart/weloopx/data/models/CalorieItem;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/CalorieItem;->getCalorieGoal()D

    move-result-wide v12

    float-to-double v14, v6

    mul-double/2addr v12, v14

    move/from16 v0, p3

    float-to-double v14, v0

    div-double/2addr v12, v14

    double-to-float v2, v12

    invoke-direct {v10, v11, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v10, v8, v4

    .line 183
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 189
    :cond_1
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/b;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/b;-><init>(Landroid/content/Context;)V

    .line 191
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a(Ljava/util/List;Ljava/lang/Boolean;)V

    .line 192
    int-to-float v3, v5

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a(F)V

    .line 193
    invoke-virtual {v2, v7}, Lcom/yf/smart/weloopx/android/ui/widget/b;->a([Landroid/graphics/PointF;)V

    .line 194
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 197
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/m;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/android/ui/widget/m;-><init>()V

    .line 198
    invoke-virtual {v2, v8}, Lcom/yf/smart/weloopx/android/ui/widget/m;->a([Landroid/graphics/PointF;)V

    .line 199
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/m;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 203
    move/from16 v0, p4

    int-to-float v2, v0

    mul-float/2addr v2, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setXSize(F)V

    .line 204
    float-to-int v2, v9

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->scrollTo(II)V

    .line 205
    return-void

    :cond_2
    move v3, v2

    goto/16 :goto_1
.end method

.method public static c(Landroid/content/Context;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;Ljava/util/List;FILjava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yf/smart/weloopx/android/ui/widget/ChartView;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;FI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a()V

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 213
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 214
    div-int/lit8 v4, v1, 0x10

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getYSize()F

    move-result v5

    .line 217
    const/4 v1, 0x7

    new-array v3, v1, [Landroid/graphics/PointF;

    .line 218
    const/4 v1, 0x7

    new-array v6, v1, [Landroid/graphics/PointF;

    .line 219
    const/4 v1, 0x7

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f07016b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const v2, 0x7f07027d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const v2, 0x7f0702d4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const v2, 0x7f07026d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    const v2, 0x7f07010a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    const v2, 0x7f0701f0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    const v2, 0x7f070235

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 228
    mul-int/lit8 v1, v4, 0x2

    int-to-float v8, v1

    .line 229
    div-int/lit8 v1, v4, 0x2

    int-to-float v1, v1

    add-float v2, v8, v1

    .line 230
    const/4 v1, 0x0

    :goto_0
    array-length v9, v6

    if-ge v1, v9, :cond_0

    .line 231
    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-direct {v9, v2, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, v6, v1

    .line 232
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, v3, v1

    .line 233
    add-float/2addr v2, v8

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/widget/e;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/widget/e;-><init>()V

    .line 236
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    invoke-virtual {v1, v6}, Lcom/yf/smart/weloopx/android/ui/widget/e;->a([Landroid/graphics/PointF;)V

    .line 240
    invoke-virtual {v1, v7}, Lcom/yf/smart/weloopx/android/ui/widget/e;->a([Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 243
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setBottomLabelSeries(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 245
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/widget/c;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/widget/c;-><init>()V

    .line 246
    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a([Landroid/graphics/PointF;)V

    .line 247
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a(F)V

    .line 248
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/c;->c()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c0063

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 260
    const/4 v1, 0x0

    .line 261
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 262
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getHappenDate()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/g/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v1, v1, 0x5a0

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 273
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Landroid/graphics/PointF;

    .line 274
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Landroid/graphics/PointF;

    .line 275
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [Landroid/graphics/PointF;

    .line 276
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v10, v1, [Landroid/graphics/PointF;

    .line 277
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v11, v1, [I

    .line 278
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v12, v1, [I

    .line 282
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    array-length v1, v6

    if-ge v3, v1, :cond_1

    .line 283
    add-int v1, v3, v2

    int-to-float v1, v1

    mul-float v13, v1, v8

    .line 284
    new-instance v14, Landroid/graphics/PointF;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float v1, v1, p3

    invoke-direct {v14, v13, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v14, v6, v3

    .line 286
    new-instance v14, Landroid/graphics/PointF;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getShallowSleepMinutes()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float v1, v1, p3

    invoke-direct {v14, v13, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v14, v7, v3

    .line 288
    new-instance v14, Landroid/graphics/PointF;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getWakeMinutes()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float v1, v1, p3

    invoke-direct {v14, v13, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v14, v9, v3

    .line 290
    new-instance v14, Landroid/graphics/PointF;

    div-int/lit8 v1, v4, 0x2

    int-to-float v1, v1

    add-float/2addr v13, v1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getSleepGoalMinutes()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float v1, v1, p3

    invoke-direct {v14, v13, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v14, v10, v3

    .line 293
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getShallowSleepMinutes()I

    move-result v1

    add-int/2addr v13, v1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getWakeMinutes()I

    move-result v1

    add-int/2addr v13, v1

    .line 295
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v1

    .line 296
    aput v13, v11, v3

    .line 297
    aput v1, v12, v3

    .line 282
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    .line 300
    :cond_1
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/d;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, p0, v11, v12, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;-><init>(Landroid/content/Context;[I[ILjava/lang/Boolean;)V

    .line 301
    int-to-float v1, v4

    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a(F)V

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020168

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 305
    invoke-virtual {v2, v9, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a([Landroid/graphics/PointF;Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020167

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 309
    invoke-virtual {v2, v7, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a([Landroid/graphics/PointF;Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020165

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 313
    invoke-virtual {v2, v6, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a([Landroid/graphics/PointF;Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 314
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 317
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/widget/h;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/widget/h;-><init>()V

    .line 318
    invoke-virtual {v1, v10}, Lcom/yf/smart/weloopx/android/ui/widget/h;->a([Landroid/graphics/PointF;)V

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 320
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/h;->a()Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 321
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/h;->a()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/h;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 325
    move/from16 v0, p4

    int-to-float v1, v0

    mul-float/2addr v1, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setXSize(F)V

    .line 326
    float-to-int v1, v8

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->scrollTo(II)V

    .line 327
    return-void

    :cond_2
    move v2, v1

    goto/16 :goto_1
.end method

.method public static d(Landroid/content/Context;Lcom/yf/smart/weloopx/android/ui/widget/ChartView;Ljava/util/List;FILjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yf/smart/weloopx/android/ui/widget/ChartView;",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/SleepItem;",
            ">;FI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a()V

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 334
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 335
    div-int/lit8 v4, v1, 0x22

    .line 336
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->getYSize()F

    move-result v5

    .line 338
    const/4 v1, 0x5

    new-array v2, v1, [Landroid/graphics/PointF;

    .line 339
    const/4 v1, 0x5

    new-array v3, v1, [Landroid/graphics/PointF;

    .line 340
    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v7, "1"

    aput-object v7, v6, v1

    const/4 v1, 0x1

    const-string v7, "7"

    aput-object v7, v6, v1

    const/4 v1, 0x2

    const-string v7, "14"

    aput-object v7, v6, v1

    const/4 v1, 0x3

    const-string v7, "21"

    aput-object v7, v6, v1

    const/4 v1, 0x4

    const-string v7, "28"

    aput-object v7, v6, v1

    .line 342
    const/4 v1, 0x0

    new-instance v7, Landroid/graphics/PointF;

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v4

    int-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v3, v1

    .line 343
    const/4 v1, 0x0

    new-instance v7, Landroid/graphics/PointF;

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-direct {v7, v8, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v2, v1

    .line 345
    const/4 v1, 0x1

    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_0

    .line 346
    mul-int/lit8 v7, v1, 0x7

    mul-int/2addr v7, v4

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 347
    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {v8, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v8, v3, v1

    .line 348
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v8, v2, v1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/widget/e;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/widget/e;-><init>()V

    .line 351
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06005b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 354
    invoke-virtual {v1, v3}, Lcom/yf/smart/weloopx/android/ui/widget/e;->a([Landroid/graphics/PointF;)V

    .line 355
    invoke-virtual {v1, v6}, Lcom/yf/smart/weloopx/android/ui/widget/e;->a([Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/e;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    invoke-virtual {p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setBottomLabelSeries(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 359
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/widget/c;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/widget/c;-><init>()V

    .line 360
    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a([Landroid/graphics/PointF;)V

    .line 361
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/c;->a(F)V

    .line 362
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/c;->c()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c0063

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    invoke-virtual {p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 374
    const/4 v1, 0x0

    .line 375
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 376
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getHappenDate()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/g/i;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    div-int/lit16 v1, v1, 0x5a0

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 387
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Landroid/graphics/PointF;

    .line 388
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Landroid/graphics/PointF;

    .line 389
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Landroid/graphics/PointF;

    .line 390
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [Landroid/graphics/PointF;

    .line 391
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v10, v1, [I

    .line 392
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v11, v1, [I

    .line 396
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    array-length v1, v6

    if-ge v3, v1, :cond_1

    .line 397
    add-int v1, v3, v2

    mul-int/2addr v1, v4

    int-to-float v12, v1

    .line 398
    new-instance v13, Landroid/graphics/PointF;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float v1, v1, p3

    invoke-direct {v13, v12, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v13, v6, v3

    .line 400
    new-instance v13, Landroid/graphics/PointF;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getShallowSleepMinutes()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float v1, v1, p3

    invoke-direct {v13, v12, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v13, v7, v3

    .line 402
    new-instance v13, Landroid/graphics/PointF;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getWakeMinutes()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float v1, v1, p3

    invoke-direct {v13, v12, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v13, v8, v3

    .line 404
    new-instance v13, Landroid/graphics/PointF;

    div-int/lit8 v1, v4, 0x2

    int-to-float v1, v1

    add-float/2addr v12, v1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getSleepGoalMinutes()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float v1, v1, p3

    invoke-direct {v13, v12, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v13, v9, v3

    .line 406
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getShallowSleepMinutes()I

    move-result v1

    add-int/2addr v12, v1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getWakeMinutes()I

    move-result v1

    add-int/2addr v12, v1

    .line 408
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yf/smart/weloopx/data/models/SleepItem;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/SleepItem;->getDeepSleepMinutes()I

    move-result v1

    .line 409
    aput v12, v10, v3

    .line 410
    aput v1, v11, v3

    .line 396
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    .line 413
    :cond_1
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/widget/d;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, p0, v10, v11, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;-><init>(Landroid/content/Context;[I[ILjava/lang/Boolean;)V

    .line 414
    int-to-float v1, v4

    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a(F)V

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 418
    invoke-virtual {v2, v8, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a([Landroid/graphics/PointF;Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020162

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 422
    invoke-virtual {v2, v7, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a([Landroid/graphics/PointF;Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020161

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 426
    invoke-virtual {v2, v6, v1}, Lcom/yf/smart/weloopx/android/ui/widget/d;->a([Landroid/graphics/PointF;Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 427
    invoke-virtual {p1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 429
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/widget/h;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/widget/h;-><init>()V

    .line 430
    invoke-virtual {v1, v9}, Lcom/yf/smart/weloopx/android/ui/widget/h;->a([Landroid/graphics/PointF;)V

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 432
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/h;->a()Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 433
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/h;->a()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/ui/widget/h;->c()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    invoke-virtual {p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->a(Lcom/yf/smart/weloopx/android/ui/widget/t;)V

    .line 437
    mul-int v1, p4, v4

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->setXSize(F)V

    .line 438
    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1}, Lcom/yf/smart/weloopx/android/ui/widget/ChartView;->scrollTo(II)V

    .line 439
    return-void

    :cond_2
    move v2, v1

    goto/16 :goto_1
.end method
