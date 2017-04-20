.class public Lcom/yf/smart/weloopx/activitys/UserInfoSetting;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/da$a;


# instance fields
.field public a:Lcom/yf/smart/weloopx/data/models/UserData;

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d010b
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00ff
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0165
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d015c
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d015f
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0163
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d015e
    .end annotation
.end field

.field i:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0160
    .end annotation
.end field

.field j:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d013e
    .end annotation
.end field

.field k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0162
    .end annotation
.end field

.field l:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0164
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 38
    const-string v0, "UserInfoSetting"

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->m:Ljava/lang/String;

    .line 39
    const-string v0, "IS_WEIXIN_LOGIN"

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->n:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->q:I

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->q:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->r:I

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->r:I

    return p1
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->o:Ljava/lang/String;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    const v2, 0x7f0c0108

    .line 144
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->b()V

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;I)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->b(I)V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dincond_bold.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->t:Landroid/graphics/Typeface;

    .line 89
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->p:Z

    .line 93
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e()V

    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;I)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->b(I)V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a:Lcom/yf/smart/weloopx/data/models/UserData;

    .line 221
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v0

    .line 222
    if-nez v0, :cond_0

    const/16 v0, 0xaa

    :cond_0
    iput v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->q:I

    .line 223
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->j:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->q:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setScalePosition(I)V

    .line 228
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v0

    .line 229
    if-nez v0, :cond_1

    const/16 v0, 0x3c

    :cond_1
    iput v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->r:I

    .line 230
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    iget v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->r:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setScalePosition(I)V

    .line 236
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getBirthday()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "1980"

    :cond_2
    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->o:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->l:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->o:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setScalePosition(I)V

    .line 239
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->p:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 97
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->s:Z

    .line 101
    :goto_0
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->s:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->b:Landroid/widget/Button;

    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->t:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->t:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->t:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->j:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->l:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->j:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/ad;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/ad;-><init>(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setOnScaleListener(Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;)V

    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->k:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/ae;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/ae;-><init>(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setOnScaleListener(Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;)V

    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->l:Lcom/yf/smart/weloopx/android/ui/widget/RulerView;

    new-instance v1, Lcom/yf/smart/weloopx/activitys/af;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/af;-><init>(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/RulerView;->setOnScaleListener(Lcom/yf/smart/weloopx/android/ui/widget/RulerView$a;)V

    .line 140
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e()V

    .line 141
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set_target"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->s:Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->finish()V

    .line 294
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/UserData;)V
    .locals 3

    .prologue
    .line 298
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setStature(I)V

    .line 300
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setWeight(I)V

    .line 301
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/UserData;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setBirthday(Ljava/lang/String;)V

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u8bbe\u7f6e\u5b8c\u6210\u8eab\u9ad8\u4f53\u91cd\u4fe1\u606f\u4e4b\u540e\u4fdd\u5b58"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;)V

    .line 304
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const v2, 0x7f0c0110

    .line 162
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const v0, 0x7f07017c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->b(I)V

    .line 289
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 250
    iget v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->q:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setStature(I)V

    .line 251
    iget v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->r:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setWeight(I)V

    .line 252
    iget-object v1, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setBirthday(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setAccessToken(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f070256

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/az;->a(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v1

    .line 257
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    new-instance v3, Lcom/yf/smart/weloopx/activitys/ah;

    invoke-direct {v3, p0, v1, v0}, Lcom/yf/smart/weloopx/activitys/ah;-><init>(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;Landroid/app/DialogFragment;Lcom/yf/smart/weloopx/data/models/UserData;)V

    invoke-virtual {v2, v0, v3}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;Lcom/yf/smart/weloopx/b/b/p;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 174
    :sswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a:Lcom/yf/smart/weloopx/data/models/UserData;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserData;->getBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->finish()V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->c()V

    goto :goto_0

    .line 188
    :sswitch_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yf/smart/weloopx/activitys/ag;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/activitys/ag;-><init>(Lcom/yf/smart/weloopx/activitys/UserInfoSetting;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 198
    :sswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->c(I)V

    goto :goto_0

    .line 203
    :sswitch_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->c(I)V

    goto :goto_0

    .line 208
    :sswitch_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->c(I)V

    goto :goto_0

    .line 172
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ff -> :sswitch_0
        0x7f0d010b -> :sswitch_1
        0x7f0d013e -> :sswitch_3
        0x7f0d015c -> :sswitch_3
        0x7f0d015f -> :sswitch_4
        0x7f0d0162 -> :sswitch_4
        0x7f0d0163 -> :sswitch_5
        0x7f0d0164 -> :sswitch_5
        0x7f0d0165 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->requestWindowFeature(I)Z

    .line 77
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 80
    invoke-direct {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->d()V

    .line 81
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->a()V

    .line 82
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/app/a;->a(Landroid/app/Activity;)V

    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/UserInfoSetting;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 85
    return-void
.end method
