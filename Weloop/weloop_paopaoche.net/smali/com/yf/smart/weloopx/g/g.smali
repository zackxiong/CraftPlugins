.class public Lcom/yf/smart/weloopx/g/g;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/g/g$a;
    }
.end annotation


# static fields
.field public static a:D

.field public static b:D

.field public static c:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/yf/smart/weloopx/g/g;->a:D

    .line 16
    const-wide v0, 0x415854c140000000L    # 6378245.0

    sput-wide v0, Lcom/yf/smart/weloopx/g/g;->b:D

    .line 17
    const-wide v0, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    sput-wide v0, Lcom/yf/smart/weloopx/g/g;->c:D

    return-void
.end method

.method public static a(DD)Lcom/yf/smart/weloopx/g/g$a;
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/g/g;->c(DD)Lcom/yf/smart/weloopx/g/g$a;

    move-result-object v0

    .line 48
    mul-double v2, p2, v6

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/g/g$a;->b()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 49
    mul-double v4, p0, v6

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/g/g$a;->a()D

    move-result-wide v0

    sub-double v0, v4, v0

    .line 50
    new-instance v4, Lcom/yf/smart/weloopx/g/g$a;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/yf/smart/weloopx/g/g$a;-><init>(DD)V

    return-object v4
.end method

.method public static b(DD)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 97
    const-wide v2, 0x4052004189374bc7L    # 72.004

    cmpg-double v1, p2, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v1, p2, v2

    if-lez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const-wide v2, 0x3fea89a027525461L    # 0.8293

    cmpg-double v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v1, p0, v2

    if-gtz v1, :cond_0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(DD)Lcom/yf/smart/weloopx/g/g$a;
    .locals 20

    .prologue
    .line 105
    invoke-static/range {p0 .. p3}, Lcom/yf/smart/weloopx/g/g;->b(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    new-instance v4, Lcom/yf/smart/weloopx/g/g$a;

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/yf/smart/weloopx/g/g$a;-><init>(DD)V

    .line 118
    :goto_0
    return-object v4

    .line 108
    :cond_0
    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, p2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, p0, v6

    invoke-static {v4, v5, v6, v7}, Lcom/yf/smart/weloopx/g/g;->d(DD)D

    move-result-wide v4

    .line 109
    const-wide v6, 0x405a400000000000L    # 105.0

    sub-double v6, p2, v6

    const-wide v8, 0x4041800000000000L    # 35.0

    sub-double v8, p0, v8

    invoke-static {v6, v7, v8, v9}, Lcom/yf/smart/weloopx/g/g;->e(DD)D

    move-result-wide v6

    .line 110
    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v8, p0, v8

    sget-wide v10, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v8, v10

    .line 111
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 112
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-wide v14, Lcom/yf/smart/weloopx/g/g;->c:D

    mul-double/2addr v14, v10

    mul-double/2addr v10, v14

    sub-double v10, v12, v10

    .line 113
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 114
    const-wide v14, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v14

    sget-wide v14, Lcom/yf/smart/weloopx/g/g;->b:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sget-wide v18, Lcom/yf/smart/weloopx/g/g;->c:D

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    mul-double/2addr v10, v12

    div-double v10, v14, v10

    sget-wide v14, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v10, v14

    div-double/2addr v4, v10

    .line 115
    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v10

    sget-wide v10, Lcom/yf/smart/weloopx/g/g;->b:D

    div-double/2addr v10, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    sget-wide v10, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 116
    add-double v8, p0, v4

    .line 117
    add-double v6, v6, p2

    .line 118
    new-instance v4, Lcom/yf/smart/weloopx/g/g$a;

    invoke-direct {v4, v8, v9, v6, v7}, Lcom/yf/smart/weloopx/g/g$a;-><init>(DD)V

    goto :goto_0
.end method

.method public static d(DD)D
    .locals 10

    .prologue
    .line 122
    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, p2

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 124
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    sget-wide v6, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    sget-wide v8, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 125
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-wide v4, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p2, v6

    sget-wide v8, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 126
    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p2, v4

    sget-wide v6, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    sget-wide v6, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v6, p2

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 127
    return-wide v0
.end method

.method public static e(DD)D
    .locals 10

    .prologue
    .line 131
    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, p0

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 133
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    sget-wide v6, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    sget-wide v8, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 134
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-wide v4, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p0, v6

    sget-wide v8, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 135
    const-wide v2, 0x4062c00000000000L    # 150.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p0, v4

    sget-wide v6, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4072c00000000000L    # 300.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double v6, p0, v6

    sget-wide v8, Lcom/yf/smart/weloopx/g/g;->a:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 137
    return-wide v0
.end method
