.class public Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/h;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/activities/h$a;
.implements Lcom/yf/smart/weloopx/g/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity$1;
    }
.end annotation


# static fields
.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/ImageView;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/daliy/modes/AlarmModel;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final O:I

.field private final P:I

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:Z

.field a:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0089
    .end annotation
.end field

.field b:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d008a
    .end annotation
.end field

.field c:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d008b
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field e:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field g:Z

.field private final s:Ljava/lang/String;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 504
    const-string v0, "v2.10"

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->h:Ljava/lang/String;

    .line 505
    const-string v0, "v3.33"

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/h;-><init>()V

    .line 39
    const-string v0, "AlarmClockActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->s:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->J:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->K:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->L:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->M:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->N:Ljava/util/List;

    .line 279
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->g:Z

    .line 500
    const/16 v0, 0x1609

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->O:I

    .line 501
    const/16 v0, 0x2807

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->P:I

    .line 502
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->Q:I

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    .line 506
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->S:Z

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    const-string v1, "1,2,3,4,5,6,7,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1234567"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    .line 465
    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_2
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_3
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 474
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_4
    const-string v1, "3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 478
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_5
    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 482
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_6
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 486
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_7
    const-string v1, "6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 490
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_8
    const-string v1, "7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 494
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->J:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->B:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->F:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 231
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const-string v0, "AlarmClockActivity\u7a7a\u7684\uff0c\u9700\u8981\u9009\u62e9\u65e5\u671f"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->J:Z

    if-nez v2, :cond_0

    .line 238
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->J:Z

    .line 239
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->G:Z

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->G:Z

    .line 242
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->e(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 241
    goto :goto_1

    .line 245
    :pswitch_1
    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->H:Z

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->H:Z

    .line 246
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->e(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 245
    goto :goto_2

    .line 249
    :pswitch_2
    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->I:Z

    if-nez v2, :cond_4

    :goto_3
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->I:Z

    .line 250
    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->e(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 249
    goto :goto_3

    .line 239
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method private d(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 257
    .line 258
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 260
    :pswitch_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->L:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->N:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/yf/smart/weloopx/data/a;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->r:Lcom/yf/smart/weloopx/data/a;

    .line 104
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->r:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/a;->b()V

    .line 106
    return-void
.end method

.method private e(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 282
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 321
    :goto_0
    :try_start_0
    invoke-virtual {p0, p0, p1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/h$a;II)V
    :try_end_0
    .catch Lcom/yf/gattlib/e/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_1
    return-void

    .line 285
    :pswitch_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AlarmClockActivity"

    invoke-static {v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 286
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->g:Z

    .line 287
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 289
    new-instance v3, Lcom/yf/smart/weloopx/data/models/AlarmHolder;

    iget-boolean v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->g:Z

    invoke-direct {v3, v1, v2, v4}, Lcom/yf/smart/weloopx/data/models/AlarmHolder;-><init>(IIZ)V

    .line 292
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->p:[B

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->L:Ljava/util/List;

    const/16 v4, 0x3e9

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/data/models/AlarmHolder;[BLjava/util/List;I)V

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlarmClockActivity"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 298
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->g:Z

    .line 299
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    new-instance v2, Lcom/yf/smart/weloopx/data/models/AlarmHolder;

    iget-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->g:Z

    invoke-direct {v2, v0, v1, v3}, Lcom/yf/smart/weloopx/data/models/AlarmHolder;-><init>(IIZ)V

    .line 302
    const/4 v0, 0x1

    .line 304
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->p:[B

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->M:Ljava/util/List;

    const/16 v4, 0x3ea

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/data/models/AlarmHolder;[BLjava/util/List;I)V

    goto :goto_0

    .line 308
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlarmClockActivity"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 309
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->g:Z

    .line 310
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v1}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 312
    new-instance v2, Lcom/yf/smart/weloopx/data/models/AlarmHolder;

    iget-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->g:Z

    invoke-direct {v2, v0, v1, v3}, Lcom/yf/smart/weloopx/data/models/AlarmHolder;-><init>(IIZ)V

    .line 313
    const/4 v0, 0x2

    .line 315
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->p:[B

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->N:Ljava/util/List;

    const/16 v4, 0x3eb

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Lcom/yf/smart/weloopx/data/models/AlarmHolder;[BLjava/util/List;I)V

    goto/16 :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Lcom/yf/gattlib/e/a;->printStackTrace()V

    goto/16 :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method private f(I)V
    .locals 4

    .prologue
    .line 350
    const-string v1, ""

    .line 351
    const-string v0, ""

    .line 352
    packed-switch p1, :pswitch_data_0

    .line 366
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    const-string v3, "INDEX"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v3, "ALARM_MSG"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v1, "ALARM_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v2, p1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    return-void

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 355
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 359
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 363
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private h()V
    .locals 5

    .prologue
    const v4, 0x7f0d0172

    const v3, 0x7f0d0171

    const v2, 0x7f0d0170

    const v1, 0x7f0d016f

    .line 110
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->t:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->u:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->w:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->x:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->y:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->z:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->A:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->B:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->C:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->D:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->E:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->F:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->f:Landroid/widget/TextView;

    const v1, 0x7f07003a

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method private i()V
    .locals 9

    .prologue
    const v1, 0x7f0200ea

    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->r:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->K:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->K:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->K:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    .line 150
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->K:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->G:Z

    .line 153
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->H:Z

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->I:Z

    .line 157
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v3

    move v0, v2

    .line 158
    :goto_0
    if-gt v0, v8, :cond_0

    .line 159
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->L:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v3

    move v0, v2

    .line 162
    :goto_1
    if-gt v0, v8, :cond_1

    .line 163
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v3

    move v0, v2

    .line 166
    :goto_2
    if-gt v0, v8, :cond_2

    .line 167
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->N:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_3

    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 173
    iput-boolean v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->G:Z

    .line 174
    const-string v0, "08:00"

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_4

    .line 179
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 180
    iput-boolean v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->H:Z

    .line 181
    const-string v0, "14:00"

    .line 183
    :cond_4
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_5

    .line 186
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 187
    iput-boolean v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->I:Z

    .line 188
    const-string v0, "21:00"

    .line 190
    :cond_5
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->u:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->z:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->D:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->m:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->A:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->n:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->E:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->o:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->x:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->G:Z

    if-eqz v0, :cond_7

    const v0, 0x7f02014d

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 199
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->G:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0200eb

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 200
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->x:Landroid/widget/ImageView;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/a;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/activities/a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->B:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->H:Z

    if-eqz v0, :cond_9

    const v0, 0x7f02014d

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 207
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b:Landroid/view/View;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->H:Z

    if-eqz v0, :cond_a

    const v0, 0x7f0200eb

    :goto_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->B:Landroid/widget/ImageView;

    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/b;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/activities/b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->F:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->I:Z

    if-eqz v0, :cond_b

    const v0, 0x7f02014d

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 215
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c:Landroid/view/View;

    iget-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->I:Z

    if-eqz v2, :cond_6

    const v1, 0x7f0200eb

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 216
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->F:Landroid/widget/ImageView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/c;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/c;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void

    .line 198
    :cond_7
    const v0, 0x7f02014c

    goto :goto_3

    :cond_8
    move v0, v1

    .line 199
    goto :goto_4

    .line 206
    :cond_9
    const v0, 0x7f02014c

    goto :goto_5

    :cond_a
    move v0, v1

    .line 207
    goto :goto_6

    .line 214
    :cond_b
    const v0, 0x7f02014c

    goto :goto_7
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x1609

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 509
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v4

    if-nez v4, :cond_1

    .line 511
    const-string v0, "AlarmClockActivity \u8bbe\u5907\u6ca1\u6709\u8fde\u63a5"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 512
    const v0, 0x7f0700c4

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->e(Ljava/lang/String;)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlarmClockActivity \u8bbe\u5907\u7248\u672c = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 518
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 521
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    .line 524
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->k()Ljava/lang/String;

    move-result-object v5

    .line 525
    invoke-static {v5}, Lcom/yf/smart/weloopx/c/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {v0}, Lcom/yf/smart/weloopx/c/v;->a(Ljava/lang/String;)Lcom/yf/smart/weloopx/c/v;

    move-result-object v6

    .line 528
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity$1;->a:[I

    invoke-virtual {v6}, Lcom/yf/smart/weloopx/c/v;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 536
    iput v7, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->Q:I

    .line 540
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlarmClockActivity \u8bbe\u5907leixing  = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->Q:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 541
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->Q:I

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    const-string v4, "v3.18"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->Q:I

    if-ne v0, v7, :cond_2

    .line 545
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 531
    :pswitch_0
    const/16 v0, 0x2807

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->Q:I

    goto :goto_1

    .line 550
    :cond_2
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->Q:I

    if-ne v0, v7, :cond_4

    move v4, v1

    .line 551
    :goto_2
    if-eqz v4, :cond_5

    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->i:Ljava/lang/String;

    .line 552
    :goto_3
    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_6

    :goto_4
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->S:Z

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlarmClockActivity \u8bbe\u5907\u662f\u4e0d\u662f\u624b\u8868 = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", \u6700\u5c0f\u7684\u7248\u672c = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", \u5f53\u524d\u7684\u7248\u672c = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", \u6bd4\u8f83\u7684\u7ed3\u679c = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlarmClockActivity DeviceName = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " curDeviceType = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", deviceVersion = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", isShowThreeAlarm = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->S:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", tempVersion = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 556
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->S:Z

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->b:Landroid/view/View;

    if-nez v4, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 550
    goto/16 :goto_2

    .line 551
    :cond_5
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->h:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    move v1, v2

    .line 552
    goto/16 :goto_4

    .line 528
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private k()V
    .locals 1

    .prologue
    .line 566
    sget-boolean v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->d:Z

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Lcom/yf/smart/weloopx/g/a;

    invoke-direct {v0, p0, p0}, Lcom/yf/smart/weloopx/g/a;-><init>(Landroid/content/Context;Lcom/yf/smart/weloopx/g/a$a;)V

    .line 568
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/g/a;->a()V

    .line 570
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/d;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/d;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 403
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/f;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/f;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;I)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->J:Z

    .line 389
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/e;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/e;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 448
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/g;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/g;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->i()V

    .line 576
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/yf/smart/weloopx/android/ui/activities/h;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->i()V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 332
    :sswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->finish()V

    goto :goto_0

    .line 335
    :sswitch_1
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->f(I)V

    goto :goto_0

    .line 339
    :sswitch_2
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->f(I)V

    goto :goto_0

    .line 343
    :sswitch_3
    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->f(I)V

    goto :goto_0

    .line 330
    :sswitch_data_0
    .sparse-switch
        0x7f0d0089 -> :sswitch_1
        0x7f0d008a -> :sswitch_2
        0x7f0d008b -> :sswitch_3
        0x7f0d017d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/h;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->setContentView(I)V

    .line 85
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 87
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->e()V

    .line 88
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->h()V

    .line 89
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->i()V

    .line 90
    const v0, 0x7f07023f

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->d(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->j()V

    .line 92
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmClockActivity;->k()V

    .line 93
    return-void
.end method
