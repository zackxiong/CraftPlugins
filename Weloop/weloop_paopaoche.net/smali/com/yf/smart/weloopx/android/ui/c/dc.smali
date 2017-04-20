.class public Lcom/yf/smart/weloopx/android/ui/c/dc;
.super Lcom/yf/smart/weloopx/android/ui/c/av;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/ax$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/c/dc$a;
    }
.end annotation


# static fields
.field private static final A:I

.field private static final B:I

.field private static final C:I

.field private static final D:I

.field private static final E:I

.field private static final F:I

.field private static final G:I

.field private static z:I


# instance fields
.field b:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d02c6
    .end annotation
.end field

.field c:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0269
    .end annotation
.end field

.field d:Landroid/widget/ListView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d02c5
    .end annotation
.end field

.field e:Landroid/view/View;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d00bf
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d02cb
    .end annotation
.end field

.field g:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d02c7
    .end annotation
.end field

.field private h:Lcom/yf/smart/weloopx/android/ui/c/dc$a;

.field private i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

.field private j:Lcom/yf/gattlib/c/c;

.field private k:Lcom/yf/smart/weloopx/android/ui/c/aw;

.field private l:Lcom/yf/smart/weloopx/data/b;

.field private m:Landroid/graphics/Typeface;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/yf/smart/weloopx/b/b/o;

.field private t:Ljava/lang/String;

.field private u:Lcom/yf/smart/weloopx/data/d;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 666
    const/4 v0, 0x0

    sput v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    .line 677
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    sput v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->A:I

    .line 678
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    sput v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->B:I

    .line 679
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    sput v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->C:I

    .line 680
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    sput v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->D:I

    .line 681
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    sput v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->E:I

    .line 682
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    sput v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->F:I

    .line 683
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/yf/smart/weloopx/android/ui/c/dc;->z:I

    sput v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->G:I

    .line 684
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/av;-><init>()V

    .line 81
    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    .line 83
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->p:Z

    .line 84
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->q:Z

    .line 86
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->r:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->t:Ljava/lang/String;

    .line 632
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/dc;Lcom/yf/smart/weloopx/data/models/UserProfileResult;)Lcom/yf/smart/weloopx/data/models/UserProfileResult;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    return-object p1
.end method

.method private a(ILcom/yf/smart/weloopx/android/ui/widget/o;)V
    .locals 6

    .prologue
    const v3, 0x7f07029c

    const v5, 0x7f02019c

    .line 687
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 688
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 689
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->A:I

    if-ne p1, v0, :cond_1

    .line 690
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f0701f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 691
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getScore()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 694
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    const v1, 0x7f02019d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->B:I

    if-ne p1, v0, :cond_2

    .line 698
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07014f

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getTotalCalorie()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 702
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 704
    :cond_2
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->C:I

    if-ne p1, v0, :cond_3

    .line 705
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070054

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getAverageCalorie()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020173

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 709
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 711
    :cond_3
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->D:I

    if-ne p1, v0, :cond_4

    .line 712
    const-string v0, " "

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestDay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 721
    :goto_1
    iget-object v1, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070062

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestDayCalorie()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 725
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 718
    :catch_0
    move-exception v1

    .line 719
    const-string v1, "UserProfileFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err day="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 727
    :cond_4
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->E:I

    if-ne p1, v0, :cond_5

    .line 728
    const-string v0, " "

    .line 730
    :try_start_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestWeekBeginDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 731
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestWeekEndDate()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 738
    :goto_2
    iget-object v1, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070063

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestWeekCalorie()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 735
    :catch_1
    move-exception v1

    .line 736
    const-string v1, "UserProfileFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err day="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBestDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 744
    :cond_5
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->F:I

    if-ne p1, v0, :cond_6

    .line 745
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f07022d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 746
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getStandardDays()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f02017a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 749
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 751
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 753
    :cond_6
    sget v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->G:I

    if-ne p1, v0, :cond_0

    .line 754
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 755
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getActiveDays()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 758
    iget-object v0, p2, Lcom/yf/smart/weloopx/android/ui/widget/o;->g:Landroid/widget/ImageView;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private a(IZ)V
    .locals 7

    .prologue
    const v5, 0x7f0c011e

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserProfileFragment handleState\u4e2d\u7684updateState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 276
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->o:I

    .line 278
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->g:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 341
    :pswitch_0
    const-string v0, ""

    .line 345
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    :cond_2
    return-void

    .line 286
    :pswitch_1
    const v0, 0x7f0700ab

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 288
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 293
    :pswitch_2
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_3
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 299
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 303
    :pswitch_4
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 305
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 311
    :pswitch_5
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_6
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 320
    :pswitch_7
    const v0, 0x7f0701dc

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 324
    :pswitch_8
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :pswitch_9
    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 334
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->g:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    invoke-virtual {v3, v2}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setVisibility(I)V

    .line 335
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->g:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    invoke-virtual {v3, p0}, Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 346
    goto/16 :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/FragmentManager;IIZLjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v1, "have_interface"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const-string v1, "IS_CAN_DEL_FRIEND"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    const-string v1, "MY_USER_ID"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;-><init>()V

    .line 127
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->setArguments(Landroid/os/Bundle;)V

    .line 128
    const-string v0, "user_profile"

    invoke-static {v1, p0, v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 129
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    .line 243
    const v0, 0x7f0d02c2

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 244
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->v:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f0d02c3

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 248
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v2, 0x7f02015c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->w:Landroid/widget/TextView;

    .line 251
    const v0, 0x7f0d02c4

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 252
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->x:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0d026b

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 256
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->y:Landroid/widget/TextView;

    .line 259
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->y:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 260
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->h:Lcom/yf/smart/weloopx/android/ui/c/dc$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/dc;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->i()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/dc;ILcom/yf/smart/weloopx/android/ui/widget/o;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(ILcom/yf/smart/weloopx/android/ui/widget/o;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/dc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/c/dc;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/dc;)Lcom/yf/smart/weloopx/android/ui/c/aw;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->k:Lcom/yf/smart/weloopx/android/ui/c/aw;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/c/dc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/dc;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/c/dc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->g(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileFragment \u4e2a\u4eba\u8d44\u6599\u8be6\u60c5\u91cc\u9762\u7684\u72b6\u6001  isFriend = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCanDelFriend = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 424
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->r:Z

    if-eqz v0, :cond_1

    .line 425
    const/16 v0, 0xfaa

    invoke-direct {p0, v0, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(IZ)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    const/16 v0, 0xfa9

    invoke-direct {p0, v0, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(IZ)V

    goto :goto_0

    .line 434
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    const/16 v0, 0xfa1

    invoke-direct {p0, v0, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(IZ)V

    goto :goto_0

    .line 436
    :cond_3
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/16 v0, 0xfa3

    invoke-direct {p0, v0, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/c/dc;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->m()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 612
    new-instance v0, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;-><init>()V

    .line 613
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->setAccount(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->setBeApplyUserId(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;->setMyUserId(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->l:Lcom/yf/smart/weloopx/data/b;

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/b;->a(Lcom/yf/smart/weloopx/data/models/ApplyFriendModel;)V

    .line 618
    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/c/dc;)Lcom/yf/smart/weloopx/data/models/UserProfileResult;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/yf/smart/weloopx/data/d;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->u:Lcom/yf/smart/weloopx/data/d;

    .line 185
    new-instance v0, Lcom/yf/smart/weloopx/data/b;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->l:Lcom/yf/smart/weloopx/data/b;

    .line 186
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->j:Lcom/yf/gattlib/c/c;

    .line 187
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/diy.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->m:Landroid/graphics/Typeface;

    .line 189
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "have_interface"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/b/b/o;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->s:Lcom/yf/smart/weloopx/b/b/o;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MY_USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->t:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->o:I

    .line 196
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    .line 197
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "IS_CAN_DEL_FRIEND"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->r:Z

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileFragment \u521d\u59cb\u5316\u674e\u66fc\u7684curState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCanDelFriend = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", myUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->t:Ljava/lang/String;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const/16 v0, 0xfa7

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->o:I

    .line 202
    :cond_1
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 812
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->k:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProfileFragment \u771f\u6b63\u6267\u884c\u5220\u9664\u7684userID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 814
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 815
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 818
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->y()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/c/dj;

    invoke-direct {v4, p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/dj;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dc;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 871
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/android/ui/c/aw;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->k:Lcom/yf/smart/weloopx/android/ui/c/aw;

    .line 206
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->k:Lcom/yf/smart/weloopx/android/ui/c/aw;

    const v1, 0x7f0701c5

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/aw;->e(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->u:Lcom/yf/smart/weloopx/data/d;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/yf/smart/weloopx/data/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 875
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->k:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadFrgmentDialog"

    invoke-static {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;Landroid/app/FragmentManager;Ljava/lang/String;)Z

    .line 215
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/dc$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yf/smart/weloopx/android/ui/c/dc$a;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dc;Lcom/yf/smart/weloopx/android/ui/c/dd;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->h:Lcom/yf/smart/weloopx/android/ui/c/dc$a;

    .line 216
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/dd;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/dd;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V

    .line 234
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 235
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/b/b/g;)V

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    invoke-virtual {v1, v2, v0}, Lcom/yf/smart/weloopx/b/c;->a(ILcom/yf/smart/weloopx/b/b/g;)V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 879
    new-instance v0, Lcom/yf/smart/weloopx/data/b;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/b;-><init>(Landroid/content/Context;)V

    .line 880
    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserProfileFragment \u5220\u9664\u6dfb\u52a0\u597d\u53cb\u6570\u636e\u5e93\u4e2d\u7684\u6570\u636e\u7ed3\u679c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    .line 371
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/g/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->b(Ljava/lang/String;)V

    .line 374
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/de;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/de;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 393
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->y:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getTotalActivePoint()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->v:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getGoldCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->w:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getSilverCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->x:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getBronzeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-static {}, Lcom/yf/smart/weloopx/f/a;->a()Lcom/b/a/a;

    move-result-object v2

    .line 406
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->b:Lcom/yf/smart/weloopx/android/ui/widget/CircularImageView;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v4}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->h:Lcom/yf/smart/weloopx/android/ui/c/dc$a;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/c/dc$a;->notifyDataSetChanged()V

    .line 409
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->j:Lcom/yf/gattlib/c/c;

    const-string v3, "NICK_NAME"

    invoke-virtual {v2, v3, v0}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->j:Lcom/yf/gattlib/c/c;

    const-string v2, "HEAD_PIC"

    invoke-virtual {v0, v2, v1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/UserData;->setHeadPicAddress(Ljava/lang/String;)V

    .line 414
    const-string v1, "UserProfileFragment &&&&& updateProfile Save user info"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/b/c;->a(Lcom/yf/smart/weloopx/data/models/UserData;)V

    .line 417
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->i:Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->getIsfriend()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->o:I

    packed-switch v0, :pswitch_data_0

    .line 503
    :goto_0
    :pswitch_0
    return-void

    .line 469
    :pswitch_1
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :pswitch_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->k()V

    goto :goto_0

    .line 480
    :pswitch_3
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->l()V

    goto :goto_0

    .line 500
    :pswitch_4
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ax;->a(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private k()V
    .locals 5

    .prologue
    .line 507
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 508
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v1, "userId"

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 511
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->s()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/c/df;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/c/df;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 553
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    .line 557
    new-instance v0, Lcom/b/a/d/d;

    invoke-direct {v0}, Lcom/b/a/d/d;-><init>()V

    .line 558
    const-string v1, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "requestUserId"

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "acceptFlag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v1, Lcom/b/a/b;

    invoke-direct {v1}, Lcom/b/a/b;-><init>()V

    .line 562
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->v()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/c/dg;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/c/dg;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 608
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 623
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/c/di;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/c/di;-><init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 150
    invoke-static {p0, v0}, Lcom/b/a/e;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Landroid/view/View;)V

    .line 153
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->o:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(IZ)V

    .line 154
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->k:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 156
    return-object v0
.end method

.method protected a(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/av;->a(Landroid/view/Window;)V

    .line 144
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->h()V

    .line 362
    const-string v0, "UserProfileFragment"

    invoke-static {v0, p1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->h()V

    .line 357
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/av;->onAttach(Landroid/app/Activity;)V

    .line 135
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->e()V

    .line 136
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->f()V

    .line 137
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->g()V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 462
    :goto_0
    return-void

    .line 446
    :sswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->b()V

    goto :goto_0

    .line 450
    :sswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->j()V

    goto :goto_0

    .line 455
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/activitys/RegisterPhoneActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    const-string v1, "set_target"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->startActivity(Landroid/content/Intent;)V

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->p:Z

    goto :goto_0

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x7f0d00bf -> :sswitch_0
        0x7f0d02c7 -> :sswitch_2
        0x7f0d02cb -> :sswitch_1
    .end sparse-switch
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/av;->onDestroyView()V

    .line 173
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->s:Lcom/yf/smart/weloopx/b/b/o;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->s:Lcom/yf/smart/weloopx/b/b/o;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/b/b/o;->c()V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/av;->onDetach()V

    .line 181
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/av;->onResume()V

    .line 162
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->p:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "UserProfileFragment \u7f16\u8f91\u4e2a\u4eba\u8d44\u6599\u540e\u91cd\u65b0\u83b7\u5f97\u6570\u636e"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dc;->p:Z

    .line 165
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->g()V

    .line 168
    :cond_0
    return-void
.end method
