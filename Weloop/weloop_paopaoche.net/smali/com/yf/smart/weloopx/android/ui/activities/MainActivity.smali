.class public Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;
.super Landroid/support/v4/app/k;
.source "ProGuard"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/yf/smart/weloopx/android/ui/activities/hg;
.implements Lcom/yf/smart/weloopx/android/ui/c/ah$a;
.implements Lcom/yf/smart/weloopx/b/b/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/MainActivity$1;,
        Lcom/yf/smart/weloopx/android/ui/activities/MainActivity$a;
    }
.end annotation


# static fields
.field public static final n:[Ljava/lang/String;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:I

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/yf/gattlib/d/b$a;

.field private final F:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private G:Z

.field private H:Ljava/lang/Runnable;

.field private I:Ljava/lang/Runnable;

.field private J:Ljava/lang/Runnable;

.field private K:Ljava/lang/Runnable;

.field private L:Ljava/lang/Runnable;

.field protected o:Lb/a/a/a/a/a;

.field protected p:Lcom/yf/gattlib/a/b;

.field private final q:Ljava/lang/String;

.field private final r:[Ljava/lang/Class;

.field private final s:[I

.field private final t:[I

.field private u:Lcom/yf/lib/ui/views/BottomTabLayout;

.field private v:Landroid/app/Dialog;

.field private final w:I

.field private final x:I

.field private final y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tab0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tab1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tab2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tab3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 173
    invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V

    .line 109
    const-string v0, "MainActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->q:Ljava/lang/String;

    .line 116
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/di;

    aput-object v1, v0, v3

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/fp;

    aput-object v1, v0, v5

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/el;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/z;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->r:[Ljava/lang/Class;

    .line 118
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->s:[I

    .line 120
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->t:[I

    .line 128
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->w:I

    .line 129
    iput v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->x:I

    .line 130
    iput v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->y:I

    .line 131
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->z:I

    .line 136
    iput v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->B:I

    .line 139
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dl;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dl;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->E:Lcom/yf/gattlib/d/b$a;

    .line 347
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    .line 384
    iput-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->G:Z

    .line 402
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dy;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dy;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->H:Ljava/lang/Runnable;

    .line 445
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ea;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ea;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->I:Ljava/lang/Runnable;

    .line 454
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/eb;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/eb;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->J:Ljava/lang/Runnable;

    .line 463
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ec;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ec;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->K:Ljava/lang/Runnable;

    .line 641
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dn;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dn;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->L:Ljava/lang/Runnable;

    .line 174
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->p:Lcom/yf/gattlib/a/b;

    .line 175
    new-instance v0, Lb/a/a/a/a/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->p:Lcom/yf/gattlib/a/b;

    const-string v2, "V 0.00"

    invoke-direct {v0, v1, v2}, Lb/a/a/a/a/a;-><init>(Lcom/yf/gattlib/a/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o:Lb/a/a/a/a/a;

    .line 176
    return-void

    .line 118
    nop

    :array_0
    .array-data 4
        0x7f070114
        0x7f0701ce
        0x7f070161
        0x7f0700c3
    .end array-data

    .line 120
    :array_1
    .array-data 4
        0x7f0200d9
        0x7f0200db
        0x7f0200dc
        0x7f0200dd
    .end array-data
.end method

.method private A()V
    .locals 3

    .prologue
    .line 954
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_AUTO_SYNC_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/x;->f()V

    .line 957
    :cond_0
    return-void
.end method

.method private a(Lcom/umeng/update/UpdateResponse;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 290
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 293
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v:Landroid/app/Dialog;

    .line 294
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 296
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    const v0, 0x7f030041

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 299
    const v0, 0x7f0d017c

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 300
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/dw;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/dw;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;Lcom/umeng/update/UpdateResponse;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    const v0, 0x7f0d017a

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 311
    const v1, 0x7f07018e

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 312
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/dx;

    invoke-direct {v1, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/dx;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;Lcom/umeng/update/UpdateResponse;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v1, 0x7f0d0177

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 328
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    const v1, 0x7f0d0175

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    const v3, 0x7f0702ba

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    const v1, 0x7f0d0176

    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 336
    iget-object v3, p1, Lcom/umeng/update/UpdateResponse;->updateLog:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->G:Z

    if-eqz v3, :cond_1

    .line 339
    const v3, 0x7f070107

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    const v0, 0x7f0d017b

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 344
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->u()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;I)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;Lcom/umeng/update/UpdateResponse;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/umeng/update/UpdateResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;I)I
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->B:I

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    .line 379
    :cond_0
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 381
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 793
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dr;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/dr;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 807
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->l()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 387
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->b(Ljava/lang/String;)I

    move-result v0

    .line 388
    invoke-static {p0}, Lcom/yf/gattlib/p/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->b(Ljava/lang/String;)I

    move-result v2

    .line 389
    if-lt v0, v3, :cond_0

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->G:Z

    .line 390
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 393
    :try_start_0
    const-string v2, "2016-01-05"

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 394
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 395
    iget-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->G:Z

    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->G:Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 389
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->G:Z

    .line 398
    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Z
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->z()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 757
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 758
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 759
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 760
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    const v0, 0x7f030041

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 763
    const v0, 0x7f0d017c

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 764
    const v3, 0x7f070238

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 765
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/activities/dq;

    invoke-direct {v3, p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/dq;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    const v0, 0x7f0d017b

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 773
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 775
    const v0, 0x7f0d017a

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 776
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 778
    const v0, 0x7f0d0177

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 779
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    const v0, 0x7f0d0175

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 782
    const v1, 0x7f07020b

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 785
    const v0, 0x7f0d0176

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 786
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->v:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->q()V

    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->G:Z

    return v0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Z
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->r()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Z
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->s()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->x()V

    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->z:I

    return v0
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->u()V

    .line 162
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/du;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/du;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "api_key"

    invoke-static {p0, v2}, Lcom/yf/smart/weloopx/g/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushManager;->isPushEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 236
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baidu Push state is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->w()V

    return-void
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->B:I

    return v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    const-string v1, "login_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    const-string v2, "login_msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v2, "2020"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->d(Ljava/lang/String;)V

    .line 286
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 353
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    monitor-exit v1

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private p()Z
    .locals 2

    .prologue
    .line 360
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 366
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    monitor-exit v1

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->F:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 371
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private r()Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 473
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 474
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1000

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 476
    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    .line 477
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p0, v7}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 483
    const-string v8, "MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", granted ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 490
    const/16 v8, 0x80

    :try_start_1
    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    .line 491
    invoke-virtual {v8, v3}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 496
    :goto_2
    :try_start_2
    const-string v8, "MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", name ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 498
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    const-string v2, "MainActivity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 515
    :goto_3
    return v0

    .line 492
    :catch_1
    move-exception v8

    .line 493
    :try_start_3
    const-string v8, "MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no permission: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 502
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 503
    goto :goto_3

    .line 506
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 507
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 508
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 510
    :cond_4
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "cp"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03004c

    invoke-static {v0, v2, v3, v4}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 511
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private s()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-static {}, Lcom/yf/smart/weloopx/android/a/a;->a()Lcom/yf/smart/weloopx/android/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/android/a/a;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 525
    :goto_0
    return v0

    .line 522
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/android/a/a;->a()Lcom/yf/smart/weloopx/android/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/a/a;->a(I)V

    .line 523
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ee"

    const v2, 0x7f07021a

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03006a

    invoke-static {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 525
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 581
    const-string v0, "MainActivity \u5f00\u542f\u5b9a\u4f4d\u670d\u52a1"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/services/LocationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 584
    return-void
.end method

.method private u()V
    .locals 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 683
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->p:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->w()V

    goto :goto_0

    .line 704
    :cond_1
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v0

    .line 705
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/do;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/do;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/c;->a(Lcom/yf/gattlib/client/c$b;)V

    .line 715
    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->j()V

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 719
    new-instance v0, Lcom/yf/gattlib/j/b;

    invoke-direct {v0}, Lcom/yf/gattlib/j/b;-><init>()V

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/dp;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dp;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/yf/gattlib/j/b;->a(Landroid/app/Activity;Lcom/yf/gattlib/j/a;)Z

    .line 732
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 735
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity$1;->a:[I

    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->c()Lcom/yf/smart/weloopx/c/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/c/v;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->z:I

    .line 749
    :goto_0
    return-void

    .line 738
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->z:I

    goto :goto_0

    .line 743
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->z:I

    goto :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private y()V
    .locals 5

    .prologue
    .line 828
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 829
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 831
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->u()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/ds;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ds;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 871
    return-void
.end method

.method private z()Z
    .locals 3

    .prologue
    .line 889
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "FIRST_GUIDE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 963
    :goto_0
    return-object v0

    .line 962
    :catch_0
    move-exception v0

    .line 963
    const-string v0, ""

    goto :goto_0
.end method

.method public a(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 969
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "LAST_UPDATE_TIME"

    invoke-virtual {v0, v1, v6, v7}, Lcom/yf/gattlib/c/c;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 970
    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 971
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "LAST_UPDATE_TIME"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;J)V

    .line 972
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 977
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 979
    :try_start_0
    const-string v6, "2016-01-05"

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 980
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 985
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 987
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivitynow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastUpdateTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, v2, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 988
    sub-long v0, v2, v4

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 989
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "LAST_UPDATE_TIME"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;J)V

    .line 990
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected a(Lcom/yf/lib/ui/fragments/FragmentTabHost;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 241
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 242
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity$a;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity$a;-><init>()V

    .line 243
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->r:[Ljava/lang/Class;

    iput-object v3, v1, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity$a;->a:[Ljava/lang/Class;

    .line 244
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v3

    sget-object v4, Lcom/yf/smart/weloopx/d/c;->c:Lcom/yf/smart/weloopx/d/c;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v0, v5}, Lcom/yf/smart/weloopx/d/a;->a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z

    move v1, v0

    .line 245
    :goto_0
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->n:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 246
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->n:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 247
    const v0, 0x7f0300a8

    invoke-virtual {v2, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 248
    const v0, 0x7f0d02b2

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->s:[I

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 250
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->t:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v7, v5, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 253
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 254
    const-string v5, "1"

    sget-object v6, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->n:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v5, "2"

    iget-object v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->s:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 257
    const-string v5, "msgNum"

    iget v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->B:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->D:Landroid/widget/TextView;

    .line 262
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->r:[Ljava/lang/Class;

    aget-object v0, v0, v1

    invoke-virtual {p1, v3, v0, v4}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 245
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 259
    :cond_1
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 260
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->C:Landroid/widget/TextView;

    goto :goto_1

    .line 264
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 530
    const-string v0, "cp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 532
    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/f/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 533
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 534
    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    const-string v0, "ee"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    if-eqz p2, :cond_2

    .line 540
    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/f/m;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 541
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 542
    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->q()V

    goto :goto_0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 589
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/b;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v4/app/k;->attachBaseContext(Landroid/content/Context;)V

    .line 590
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 593
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->u:Lcom/yf/lib/ui/views/BottomTabLayout;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/BottomTabLayout;->getTabHost()Lcom/yf/lib/ui/fragments/FragmentTabHost;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->setCurrentTab(I)V

    .line 596
    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 611
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dm;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dm;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 636
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/yf/smart/weloopx/b/c;->a(Ljava/lang/String;Lcom/yf/smart/weloopx/b/b/u;)V

    .line 638
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 679
    return-void
.end method

.method public i()Lb/a/a/a/a/a;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o:Lb/a/a/a/a/a;

    return-object v0
.end method

.method public j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 875
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->B:I

    .line 876
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 878
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 903
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/dt;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dt;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    .line 949
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/b/b/g;)V

    .line 950
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .prologue
    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->g()V

    .line 603
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->y()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    const-string v1, "MainActivity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->requestWindowFeature(I)Z

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/k;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "MainActivity onCreate"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 185
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->setContentView(I)V

    .line 186
    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/ui/views/BottomTabLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->u:Lcom/yf/lib/ui/views/BottomTabLayout;

    .line 187
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->u:Lcom/yf/lib/ui/views/BottomTabLayout;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/lib/ui/views/BottomTabLayout;->setup(Landroid/app/FragmentManager;)V

    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->u:Lcom/yf/lib/ui/views/BottomTabLayout;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/BottomTabLayout;->getTabHost()Lcom/yf/lib/ui/fragments/FragmentTabHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(Lcom/yf/lib/ui/fragments/FragmentTabHost;)V

    .line 189
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->u:Lcom/yf/lib/ui/views/BottomTabLayout;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/BottomTabLayout;->getTabHost()Lcom/yf/lib/ui/fragments/FragmentTabHost;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/dv;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/dv;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 196
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->m()V

    .line 198
    invoke-static {}, Lcom/yf/smart/weloopx/app/a;->a()Lcom/yf/smart/weloopx/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/app/a;->b()V

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->A:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/yf/smart/weloopx/data/a;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/a;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/a;->b()V

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.start.app.run.reminder"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->t()V

    .line 212
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->f()V

    .line 213
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->l()V

    .line 216
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->E:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Lcom/yf/gattlib/d/b$a;)V

    .line 218
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o()V

    .line 219
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->q()V

    .line 220
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->n()V

    .line 224
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->a(Ljava/lang/Object;)V

    .line 226
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->A()V

    .line 228
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 883
    const-string v0, "MainActivity onDestroy"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 884
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/lib/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 885
    invoke-super {p0}, Landroid/support/v4/app/k;->onDestroy()V

    .line 886
    return-void
.end method

.method public onInvalidAccessToken(Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;)V
    .locals 2
    .annotation runtime Lcom/yf/lib/squareup/otto/j;
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->b(Ljava/lang/String;)V

    .line 269
    const v0, 0x7f070134

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->b(I)V

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/activitys/RegisterStart;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->finish()V

    .line 273
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 811
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 813
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->u:Lcom/yf/lib/ui/views/BottomTabLayout;

    invoke-virtual {v0}, Lcom/yf/lib/ui/views/BottomTabLayout;->getTabHost()Lcom/yf/lib/ui/fragments/FragmentTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/lib/ui/fragments/FragmentTabHost;->getCurrentTab()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v3, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->n:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 815
    instance-of v3, v0, Lcom/yf/smart/weloopx/android/ui/activities/z;

    if-eqz v3, :cond_2

    .line 816
    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 820
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/k;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 896
    const-string v0, "MainActivity onPause"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 897
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->E:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->b(Lcom/yf/gattlib/d/b$a;)V

    .line 898
    invoke-super {p0}, Landroid/support/v4/app/k;->onPause()V

    .line 899
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 551
    invoke-super {p0}, Landroid/support/v4/app/k;->onResume()V

    .line 553
    const-string v0, "MainActivity onResume"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 554
    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->a(J)V

    .line 556
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->E:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Lcom/yf/gattlib/d/b$a;)V

    .line 557
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yf/smart/weloopx/android/ui/activities/FirstGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 562
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "FIRST_GUIDE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/b;->a()Lcom/yf/smart/weloopx/android/ui/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/android/ui/b;->a(Landroid/app/Activity;)V

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->k()V

    .line 568
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->d()Lcom/yf/smart/weloopx/data/models/OriginalData;

    move-result-object v0

    .line 569
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_2

    .line 570
    const-string v0, "MainActivity \u6709\u81ea\u52a8\u540c\u6b65\u4ea7\u751f\u7684\u539f\u59cb\u6570\u636e"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 571
    invoke-static {}, Lcom/yf/smart/weloopx/c/x;->a()Lcom/yf/smart/weloopx/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/c/x;->c()Z

    .line 576
    :goto_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->p:Lcom/yf/gattlib/a/b;

    .line 577
    new-instance v0, Lb/a/a/a/a/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->p:Lcom/yf/gattlib/a/b;

    const-string v2, "V 0.00"

    invoke-direct {v0, v1, v2}, Lb/a/a/a/a/a;-><init>(Lcom/yf/gattlib/a/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->o:Lb/a/a/a/a/a;

    .line 578
    return-void

    .line 573
    :cond_2
    const-string v0, "MainActivity \u6ca1\u6709\u81ea\u52a8\u540c\u6b65\u4ea7\u751f\u7684\u6570\u636e\u66f4\u65b0"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
