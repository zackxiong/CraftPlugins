.class public Lcom/yf/smart/weloopx/activitys/TargetSetting;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/da$a;


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0144
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d013d
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d014b
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d014c
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0140
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0141
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0142
    .end annotation
.end field

.field k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d013e
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 46
    const-string v0, "IS_WEIXIN_LOGIN"

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->l:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->m:Z

    .line 50
    const/16 v0, 0x64

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    .line 51
    iput v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->o:I

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/TargetSetting;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/TargetSetting;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/TargetSetting;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->i()V

    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    const v2, 0x7f0c0108

    .line 139
    iput p1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    .line 140
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->c()V

    .line 141
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    const/16 v1, 0x4b0

    if-lt v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->o:I

    add-int/lit8 v1, v1, -0x1e

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x46

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->p:F

    .line 151
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->o:I

    add-int/lit8 v1, v1, -0x1e

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0xcd

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->q:F

    .line 153
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->d()V

    .line 154
    return-void

    .line 143
    :cond_0
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .prologue
    const/16 v4, 0x7d0

    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->m:Z

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "to_main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->r:Z

    .line 101
    :goto_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->o:I

    .line 104
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetSetting \u521d\u59cb\u5316\u76ee\u6807goal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    if-ge v0, v3, :cond_3

    .line 107
    iput v3, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    .line 112
    :cond_1
    :goto_1
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->o:I

    add-int/lit8 v1, v1, -0x1e

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x46

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->p:F

    .line 113
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->o:I

    add-int/lit8 v1, v1, -0x1e

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0xcd

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->q:F

    .line 114
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->d()V

    .line 115
    return-void

    .line 99
    :cond_2
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->r:Z

    goto :goto_0

    .line 108
    :cond_3
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    if-le v0, v4, :cond_1

    .line 109
    iput v4, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    goto :goto_1
.end method

.method private i()V
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/app/a;->b()V

    .line 269
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->finish()V

    .line 270
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->r:Z

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v1, "REGISTER_SUCCESS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->startActivity(Landroid/content/Intent;)V

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->c:Landroid/widget/TextView;

    const v1, 0x7f070260

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/dincond_bold.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setScalePosition(I)V

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/ab;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/ab;-><init>(Lcom/yf/smart/weloopx/activitys/TargetSetting;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setOnScaleListener(Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;)V

    .line 136
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->i()V

    .line 265
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->b(I)V

    .line 250
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->getScalePosition()I

    move-result v2

    iput v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TargetSetting \u9009\u62e9\u7684\u76ee\u6807 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u7528\u6237\u7684 accessToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/UserData;->setCalorieValue(I)V

    .line 210
    const-string v0, "TargetSetting \u8bbe\u7f6e\u8fd0\u52a8\u76ee\u6807\u754c\u9762\u5f00\u59cb\u4fdd\u5b58\u7528\u6237\u4fe1\u606f"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f070256

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yf/smart/weloopx/android/ui/c/az;->a(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    new-instance v3, Lcom/yf/smart/weloopx/activitys/ac;

    invoke-direct {v3, p0, v0, v1}, Lcom/yf/smart/weloopx/activitys/ac;-><init>(Lcom/yf/smart/weloopx/activitys/TargetSetting;Landroid/app/DialogFragment;Lcom/yf/smart/weloopx/data/models/UserData;)V

    invoke-virtual {v2, v1, v3}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/t;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const v2, 0x7f0c001c

    .line 278
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    return-void
.end method

.method public d()V
    .locals 8

    .prologue
    const v7, 0x7f070122

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x7f070167

    const/high16 v4, 0x42700000    # 60.0f

    .line 284
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->p:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_0
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->q:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->q:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_1
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->p:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->p:F

    iget v3, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->p:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->q:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->q:F

    iget v3, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->q:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 300
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 301
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x4b0

    const/16 v1, 0x1f4

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 160
    :sswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->b()V

    goto :goto_0

    .line 165
    :sswitch_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->finish()V

    goto :goto_0

    .line 176
    :sswitch_2
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    if-lt v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(I)V

    goto :goto_0

    .line 182
    :sswitch_3
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    if-lt v0, v2, :cond_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(I)V

    goto :goto_0

    .line 188
    :sswitch_4
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->n:I

    if-ge v0, v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/TargetSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->a(I)V

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00ff -> :sswitch_1
        0x7f0d0140 -> :sswitch_2
        0x7f0d0141 -> :sswitch_3
        0x7f0d0142 -> :sswitch_4
        0x7f0d0144 -> :sswitch_0
        0x7f0d017d -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->requestWindowFeature(I)Z

    .line 83
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->setContentView(I)V

    .line 84
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 86
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->h()V

    .line 87
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/TargetSetting;->a()V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onDestroy()V

    .line 260
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onStop()V

    .line 255
    return-void
.end method
