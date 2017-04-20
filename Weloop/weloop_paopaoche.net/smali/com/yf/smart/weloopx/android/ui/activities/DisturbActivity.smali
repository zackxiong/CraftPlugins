.class public Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/r;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/ah$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/RelativeLayout;

.field private B:[B

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Landroid/widget/CompoundButton$OnCheckedChangeListener;

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

.field d:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00dd
    .end annotation
.end field

.field e:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00df
    .end annotation
.end field

.field f:Landroid/widget/TimePicker;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00e2
    .end annotation
.end field

.field g:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00d3
    .end annotation
.end field

.field h:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00d7
    .end annotation
.end field

.field i:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00d5
    .end annotation
.end field

.field j:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00d9
    .end annotation
.end field

.field k:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00d6
    .end annotation
.end field

.field private l:Lcom/yf/smart/weloopx/c/s;

.field private m:Lcom/yf/gattlib/client/d;

.field private n:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/r;-><init>()V

    .line 73
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->m:Lcom/yf/gattlib/client/d;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->I:Z

    .line 389
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/da;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/da;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->K:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 421
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->C:I

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->D:I

    return p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 225
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    :try_start_0
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v0, "00:00"

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 410
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->C:I

    .line 411
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DisturbActivity"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 356
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->l:Lcom/yf/smart/weloopx/c/s;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    invoke-virtual {v0, p1, v1}, Lcom/yf/smart/weloopx/c/s;->a(Z[B)V

    .line 357
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->l:Lcom/yf/smart/weloopx/c/s;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cx;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/cx;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/c/s;->a(Lcom/yf/smart/weloopx/c/s$a;)V

    .line 385
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->I:Z

    return p1
.end method

.method private a(Ljava/lang/String;)[I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 240
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 241
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v3

    .line 242
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    .line 243
    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->D:I

    return v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->E:I

    return p1
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 106
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "last anti disturb time"

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    .line 107
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "anti disturb model"

    invoke-virtual {v0, v1, v4}, Lcom/yf/gattlib/c/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    .line 108
    const-string v0, "huangxiaojie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "anti disturb time"

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    if-nez v0, :cond_1

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    .line 117
    :cond_1
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    if-ne v0, v4, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d()I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    .line 121
    :cond_2
    new-instance v0, Lcom/yf/smart/weloopx/c/s;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/c/s;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->l:Lcom/yf/smart/weloopx/c/s;

    .line 122
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->C:I

    .line 123
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->D:I

    .line 124
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->E:I

    .line 125
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->F:I

    .line 126
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->G:I

    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->m:Lcom/yf/gattlib/client/d;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->H:Z

    .line 129
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->E:I

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->F:I

    return p1
.end method

.method private c()V
    .locals 7

    .prologue
    const v6, 0x7f0d0213

    const v5, 0x7f0d0212

    const v4, 0x7f0d016c

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0701f3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->o:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->g:Landroid/view/View;

    const v1, 0x7f0d020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->n:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->n:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->m:Lcom/yf/gattlib/client/d;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/d;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->n:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->K:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->p:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->q:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->r:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->s:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d:Landroid/view/View;

    const v1, 0x7f0d0214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->t:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e:Landroid/view/View;

    const v1, 0x7f0d0214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->u:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->x:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->h:Landroid/view/View;

    const v1, 0x7f0d0218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->w:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->h:Landroid/view/View;

    const v1, 0x7f0d0215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->A:Landroid/widget/RelativeLayout;

    .line 155
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    if-ne v0, v2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->A:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0216

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->y:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->A:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0217

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->z:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 164
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->setSaveFromParentEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setSaveEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 167
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 168
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cw;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cw;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(I)V

    .line 207
    return-void
.end method

.method private d()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 210
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 213
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->G:I

    return p1
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 9

    .prologue
    const v8, 0x7f070047

    const v4, 0x7f070045

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 248
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0701f3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f070215

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->x:Landroid/widget/TextView;

    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aget-byte v0, v0, v5

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aget-byte v1, v1, v7

    invoke-direct {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 262
    if-gtz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 268
    :goto_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Ljava/lang/String;)[I

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    aget v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 270
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 272
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->H:Z

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->I:Z

    .line 289
    return-void

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 278
    :cond_2
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->H:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    if-nez v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 282
    :cond_3
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->H:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    if-ne v0, v7, :cond_0

    .line 284
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)[B
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->F:I

    return v0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->G:I

    return v0
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Lcom/yf/gattlib/client/d;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->m:Lcom/yf/gattlib/client/d;

    return-object v0
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    return v0
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->h()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 476
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/db;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/db;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 416
    if-eqz p2, :cond_0

    const-string v0, "outSave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->finish()V

    .line 419
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 296
    :sswitch_0
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->I:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "outSave"

    const v2, 0x7f0700f7

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03004a

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->finish()V

    goto :goto_0

    .line 303
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(I)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 306
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 310
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0

    .line 313
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(I)V

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 316
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 320
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->f:Landroid/widget/TimePicker;

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 323
    :sswitch_3
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    if-nez v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aput-byte v2, v0, v2

    .line 325
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aput-byte v2, v0, v3

    .line 326
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    const/16 v1, 0x17

    aput-byte v1, v0, v4

    .line 327
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    const/16 v1, 0x3b

    aput-byte v1, v0, v5

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aget-byte v0, v0, v2

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aget-byte v1, v1, v4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aget-byte v0, v0, v3

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->B:[B

    aget-byte v1, v1, v5

    if-ne v0, v1, :cond_4

    .line 330
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a()V

    goto/16 :goto_0

    .line 333
    :cond_4
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->H:Z

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->a(Z)V

    goto/16 :goto_0

    .line 345
    :sswitch_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->A:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 348
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->J:I

    .line 349
    iput-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->I:Z

    goto/16 :goto_0

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x7f0d00d6 -> :sswitch_4
        0x7f0d00dd -> :sswitch_1
        0x7f0d00df -> :sswitch_2
        0x7f0d017d -> :sswitch_0
        0x7f0d017e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/r;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->requestWindowFeature(I)Z

    .line 95
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->setContentView(I)V

    .line 96
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->b()V

    .line 99
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->c()V

    .line 100
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->e()V

    .line 102
    const v0, 0x7f070253

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->d(Ljava/lang/String;)V

    .line 103
    return-void
.end method
