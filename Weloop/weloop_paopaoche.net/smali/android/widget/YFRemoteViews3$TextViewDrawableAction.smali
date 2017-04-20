.class public Landroid/widget/YFRemoteViews3$TextViewDrawableAction;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field b:Z

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroid/graphics/drawable/Icon;

.field i:Landroid/graphics/drawable/Icon;

.field j:Landroid/graphics/drawable/Icon;

.field k:Landroid/graphics/drawable/Icon;

.field final synthetic l:Landroid/widget/YFRemoteViews3;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1453
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->l:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 1548
    iput-boolean v2, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->b:Z

    .line 1549
    iput-boolean v2, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->c:Z

    .line 1454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->a:I

    .line 1455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->b:Z

    .line 1456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    iput-boolean v1, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->c:Z

    .line 1457
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->c:Z

    if-eqz v0, :cond_6

    .line 1458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->h:Landroid/graphics/drawable/Icon;

    .line 1461
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->i:Landroid/graphics/drawable/Icon;

    .line 1464
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1465
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->j:Landroid/graphics/drawable/Icon;

    .line 1467
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1468
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->k:Landroid/graphics/drawable/Icon;

    .line 1476
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 1455
    goto :goto_0

    :cond_5
    move v1, v2

    .line 1456
    goto :goto_1

    .line 1471
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->d:I

    .line 1472
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->e:I

    .line 1473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->f:I

    .line 1474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->g:I

    goto :goto_2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1481
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1483
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1484
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->c:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->c:Z

    if-eqz v0, :cond_6

    .line 1486
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->h:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    .line 1487
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1488
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->h:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1492
    :goto_2
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->i:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_3

    .line 1493
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->i:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1498
    :goto_3
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->j:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_4

    .line 1499
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->j:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1504
    :goto_4
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->k:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_5

    .line 1505
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->k:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1516
    :goto_5
    return-void

    :cond_0
    move v0, v2

    .line 1483
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1484
    goto :goto_1

    .line 1490
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1496
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1502
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 1508
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 1511
    :cond_6
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1512
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5
.end method
