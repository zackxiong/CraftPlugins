.class public Lit/sephiroth/android/library/widget/ExpandableHListView;
.super Lit/sephiroth/android/library/widget/m;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/ExpandableHListView$1;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$a;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$b;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$c;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$e;,
        Lit/sephiroth/android/library/widget/ExpandableHListView$d;
    }
.end annotation


# static fields
.field private static final aJ:[I

.field private static final aK:[I

.field private static final aL:[I

.field private static final aM:[I

.field private static final aN:[[I

.field private static final aO:[I


# instance fields
.field private aA:Landroid/widget/ExpandableListAdapter;

.field private aB:I

.field private aC:I

.field private aD:I

.field private aE:I

.field private aF:I

.field private aG:I

.field private aH:Landroid/graphics/drawable/Drawable;

.field private aI:Landroid/graphics/drawable/Drawable;

.field private aP:Landroid/graphics/drawable/Drawable;

.field private final aQ:Landroid/graphics/Rect;

.field private final aR:Landroid/graphics/Rect;

.field private aS:I

.field private aT:I

.field private aU:I

.field private aV:I

.field private aW:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

.field private aX:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

.field private aY:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

.field private aZ:Lit/sephiroth/android/library/widget/ExpandableHListView$b;

.field private az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    new-array v0, v3, [I

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aJ:[I

    .line 175
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aK:[I

    .line 178
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aL:[I

    .line 181
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aM:[I

    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aJ:[I

    aput-object v1, v0, v3

    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aK:[I

    aput-object v1, v0, v4

    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aL:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lit/sephiroth/android/library/widget/ExpandableHListView;->aM:[I

    aput-object v2, v0, v1

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aN:[[I

    .line 191
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aO:[I

    return-void

    .line 181
    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method private A()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aU:I

    .line 262
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aV:I

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aU:I

    .line 266
    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aV:I

    goto :goto_0
.end method

.method public static a(J)I
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 927
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x2

    .line 931
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lit/sephiroth/android/library/widget/k;)J
    .locals 3

    .prologue
    .line 1033
    iget v0, p1, Lit/sephiroth/android/library/widget/k;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1034
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lit/sephiroth/android/library/widget/k;->a:I

    iget v2, p1, Lit/sephiroth/android/library/widget/k;->b:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1037
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lit/sephiroth/android/library/widget/k;->a:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 381
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v0, v0, Lit/sephiroth/android/library/widget/k;->d:I

    if-ne v0, v3, :cond_4

    .line 382
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    .line 384
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 388
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    iget-object v5, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v5, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    if-ne v0, v5, :cond_2

    :cond_0
    move v0, v2

    .line 390
    :goto_0
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    or-int v0, v2, v1

    .line 392
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aN:[[I

    aget-object v0, v1, v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object v0, v4

    .line 405
    :goto_2
    return-object v0

    :cond_2
    move v0, v1

    .line 388
    goto :goto_0

    :cond_3
    move v2, v1

    .line 390
    goto :goto_1

    .line 396
    :cond_4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:Landroid/graphics/drawable/Drawable;

    .line 398
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v0, v0, Lit/sephiroth/android/library/widget/k;->c:I

    iget-object v2, p1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    if-ne v0, v2, :cond_6

    sget-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aO:[I

    .line 401
    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    move-object v0, v1

    goto :goto_2

    .line 400
    :cond_6
    sget-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aJ:[I

    goto :goto_3

    :cond_7
    move-object v0, v4

    goto :goto_2
.end method

.method public static b(J)I
    .locals 4

    .prologue
    .line 945
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 947
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static c(J)I
    .locals 8

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, -0x1

    .line 964
    cmp-long v1, p0, v6

    if-nez v1, :cond_1

    .line 969
    :cond_0
    :goto_0
    return v0

    .line 967
    :cond_1
    and-long v2, p0, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 969
    and-long v0, p0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method private k(I)Z
    .locals 2

    .prologue
    .line 516
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ao:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 517
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l(I)I
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private m(I)I
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private z()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aS:I

    .line 247
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aT:I

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aS:I

    .line 251
    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aT:I

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4

    .prologue
    .line 421
    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V:I

    add-int/2addr v0, p3

    .line 425
    if-ltz v0, :cond_2

    .line 426
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->l(I)I

    move-result v1

    .line 427
    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v2, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v1

    .line 429
    iget-object v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v2, v2, Lit/sephiroth/android/library/widget/k;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    iget-object v3, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v3, v3, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    if-eq v2, v3, :cond_1

    .line 431
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aP:Landroid/graphics/drawable/Drawable;

    .line 432
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 433
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a()V

    .line 442
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a()V

    .line 441
    :cond_2
    invoke-super {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/m;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/m;->a(Landroid/view/View;IJ)Z

    move-result v0

    .line 552
    :goto_0
    return v0

    .line 551
    :cond_0
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->l(I)I

    move-result v0

    .line 552
    invoke-virtual {p0, p1, v0, p3, p4}, Lit/sephiroth/android/library/widget/ExpandableHListView;->d(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 7

    .prologue
    .line 1007
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    new-instance v0, Lit/sephiroth/android/library/widget/h$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/h$a;-><init>(Landroid/view/View;IJ)V

    .line 1021
    :goto_0
    return-object v0

    .line 1012
    :cond_0
    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->l(I)I

    move-result v0

    .line 1013
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v0

    .line 1014
    iget-object v1, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    .line 1016
    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->a(Lit/sephiroth/android/library/widget/k;)J

    move-result-wide v4

    .line 1017
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/k;->a()J

    move-result-wide v2

    .line 1019
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a()V

    .line 1021
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListView$a;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ExpandableHListView$a;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method d(Landroid/view/View;IJ)Z
    .locals 16

    .prologue
    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v8

    .line 566
    iget-object v2, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->a(Lit/sephiroth/android/library/widget/k;)J

    move-result-wide v6

    .line 569
    iget-object v2, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v2, v2, Lit/sephiroth/android/library/widget/k;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aY:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    if-eqz v2, :cond_0

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aY:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    iget-object v3, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v5, v3, Lit/sephiroth/android/library/widget/k;->a:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lit/sephiroth/android/library/widget/ExpandableHListView$c;->a(Lit/sephiroth/android/library/widget/ExpandableHListView;Landroid/view/View;IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a()V

    .line 576
    const/4 v2, 0x1

    .line 621
    :goto_0
    return v2

    .line 580
    :cond_0
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v2, v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 584
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->playSoundEffect(I)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aW:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

    if-eqz v2, :cond_1

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aW:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

    iget-object v3, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v3, v3, Lit/sephiroth/android/library/widget/k;->a:I

    invoke-interface {v2, v3}, Lit/sephiroth/android/library/widget/ExpandableHListView$d;->a(I)V

    .line 607
    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 619
    :goto_2
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a()V

    goto :goto_0

    .line 592
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v2, v8}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Z

    .line 594
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->playSoundEffect(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aX:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    if-eqz v2, :cond_3

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aX:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    iget-object v3, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v3, v3, Lit/sephiroth/android/library/widget/k;->a:I

    invoke-interface {v2, v3}, Lit/sephiroth/android/library/widget/ExpandableHListView$e;->a(I)V

    .line 600
    :cond_3
    iget-object v2, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v2, v2, Lit/sephiroth/android/library/widget/k;->a:I

    .line 601
    iget-object v3, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v3, v3, Lit/sephiroth/android/library/widget/k;->c:I

    .line 603
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 604
    move-object/from16 v0, p0

    iget-object v4, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v2}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lit/sephiroth/android/library/widget/ExpandableHListView;->b(II)V

    goto :goto_1

    .line 611
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aZ:Lit/sephiroth/android/library/widget/ExpandableHListView$b;

    if-eqz v2, :cond_5

    .line 612
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->playSoundEffect(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v9, v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aZ:Lit/sephiroth/android/library/widget/ExpandableHListView$b;

    iget-object v2, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v12, v2, Lit/sephiroth/android/library/widget/k;->a:I

    iget-object v2, v8, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v13, v2, Lit/sephiroth/android/library/widget/k;->b:I

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide v14, v6

    invoke-interface/range {v9 .. v15}, Lit/sephiroth/android/library/widget/ExpandableHListView$b;->a(Lit/sephiroth/android/library/widget/ExpandableHListView;Landroid/view/View;IIJ)Z

    move-result v2

    goto/16 :goto_0

    .line 616
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 274
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/m;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 277
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 368
    :cond_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    .line 285
    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ao:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    add-int/lit8 v3, v1, -0x1

    .line 287
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getRight()I

    move-result v4

    .line 295
    const/4 v2, -0x4

    .line 297
    iget-object v5, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aQ:Landroid/graphics/Rect;

    .line 302
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getChildCount()I

    move-result v6

    .line 303
    const/4 v1, 0x0

    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V:I

    sub-int v0, v7, v0

    move v13, v0

    move v0, v2

    move v2, v1

    move v1, v13

    :goto_0
    if-ge v2, v6, :cond_0

    .line 305
    if-gez v1, :cond_3

    .line 303
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_3
    if-gt v1, v3, :cond_0

    .line 314
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 315
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 316
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    .line 319
    if-ltz v9, :cond_2

    if-gt v8, v4, :cond_2

    .line 322
    iget-object v10, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v10, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v10

    .line 326
    iget-object v11, v10, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v11, v11, Lit/sephiroth/android/library/widget/k;->d:I

    if-eq v11, v0, :cond_4

    .line 327
    iget-object v0, v10, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v0, v0, Lit/sephiroth/android/library/widget/k;->d:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_6

    .line 328
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    iget v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aF:I

    add-int/2addr v0, v11

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 329
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aF:I

    add-int/2addr v0, v7

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 336
    :goto_2
    iget-object v0, v10, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v0, v0, Lit/sephiroth/android/library/widget/k;->d:I

    .line 339
    :cond_4
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v11, :cond_5

    .line 340
    iget-object v7, v10, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v7, v7, Lit/sephiroth/android/library/widget/k;->d:I

    const/4 v11, 0x1

    if-ne v7, v11, :cond_7

    .line 341
    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aG:I

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 342
    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aG:I

    add-int/2addr v7, v9

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 351
    :goto_3
    invoke-direct {p0, v10}, Lit/sephiroth/android/library/widget/ExpandableHListView;->a(Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 352
    if-eqz v7, :cond_5

    .line 354
    iget-object v8, v10, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v8, v8, Lit/sephiroth/android/library/widget/k;->d:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 355
    iget v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aE:I

    iget v9, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aU:I

    iget v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aV:I

    iget-object v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aR:Landroid/graphics/Rect;

    invoke-static {v8, v9, v11, v5, v12}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 362
    :goto_4
    iget-object v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aR:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 363
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    :cond_5
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a()V

    goto :goto_1

    .line 332
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    iget v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aB:I

    add-int/2addr v0, v11

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 333
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aB:I

    add-int/2addr v0, v7

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 345
    :cond_7
    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aC:I

    add-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 346
    iget v7, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aC:I

    add-int/2addr v7, v9

    iput v7, v5, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 358
    :cond_8
    iget v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aD:I

    iget v9, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aS:I

    iget v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aT:I

    iget-object v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aR:Landroid/graphics/Rect;

    invoke-static {v8, v9, v11, v5, v12}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method public g(I)J
    .locals 3

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const-wide v0, 0xffffffffL

    .line 792
    :goto_0
    return-wide v0

    .line 788
    :cond_0
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->l(I)I

    move-result v0

    .line 789
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v2

    .line 790
    iget-object v0, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/k;->a()J

    move-result-wide v0

    .line 791
    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a()V

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 465
    invoke-super {p0}, Lit/sephiroth/android/library/widget/m;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 4

    .prologue
    .line 838
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getSelectedPosition()J

    move-result-wide v0

    .line 839
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    .line 849
    :goto_0
    return-wide v0

    .line 841
    :cond_0
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->b(J)I

    move-result v2

    .line 843
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->a(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 845
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0

    .line 849
    :cond_1
    iget-object v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->c(J)I

    move-result v0

    invoke-interface {v3, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 2

    .prologue
    .line 824
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getSelectedItemPosition()I

    move-result v0

    .line 827
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1163
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/m;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1164
    const-class v0, Lit/sephiroth/android/library/widget/ExpandableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1165
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1170
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/m;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1171
    const-class v0, Lit/sephiroth/android/library/widget/ExpandableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1172
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1148
    instance-of v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    if-nez v0, :cond_1

    .line 1149
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/m;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    check-cast p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    .line 1154
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/m;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1156
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    iget-object v1, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->z()V

    .line 237
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->A()V

    .line 238
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1142
    invoke-super {p0}, Lit/sephiroth/android/library/widget/m;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1143
    new-instance v2, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .prologue
    .line 488
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:Landroid/widget/ExpandableListAdapter;

    .line 490
    if-eqz p1, :cond_0

    .line 492
    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    .line 499
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/m;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aP:Landroid/graphics/drawable/Drawable;

    .line 417
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1049
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:Landroid/graphics/drawable/Drawable;

    .line 1050
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->A()V

    .line 1051
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1062
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    .line 1063
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->z()V

    .line 1064
    return-void
.end method

.method public setOnChildClickListener(Lit/sephiroth/android/library/widget/ExpandableHListView$b;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aZ:Lit/sephiroth/android/library/widget/ExpandableHListView$b;

    .line 767
    return-void
.end method

.method public setOnGroupClickListener(Lit/sephiroth/android/library/widget/ExpandableHListView$c;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aY:Lit/sephiroth/android/library/widget/ExpandableHListView$c;

    .line 740
    return-void
.end method

.method public setOnGroupCollapseListener(Lit/sephiroth/android/library/widget/ExpandableHListView$d;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aW:Lit/sephiroth/android/library/widget/ExpandableHListView$d;

    .line 697
    return-void
.end method

.method public setOnGroupExpandListener(Lit/sephiroth/android/library/widget/ExpandableHListView$e;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aX:Lit/sephiroth/android/library/widget/ExpandableHListView$e;

    .line 715
    return-void
.end method

.method public setOnItemClickListener(Lit/sephiroth/android/library/widget/h$c;)V
    .locals 0

    .prologue
    .line 478
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/m;->setOnItemClickListener(Lit/sephiroth/android/library/widget/h$c;)V

    .line 479
    return-void
.end method

.method public setSelectedGroup(I)V
    .locals 2

    .prologue
    .line 859
    invoke-static {p1}, Lit/sephiroth/android/library/widget/k;->a(I)Lit/sephiroth/android/library/widget/k;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/k;)Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;

    move-result-object v1

    .line 861
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/k;->b()V

    .line 862
    iget-object v0, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a:Lit/sephiroth/android/library/widget/k;

    iget v0, v0, Lit/sephiroth/android/library/widget/k;->c:I

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->m(I)I

    move-result v0

    .line 863
    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/m;->setSelection(I)V

    .line 864
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$b;->a()V

    .line 865
    return-void
.end method
