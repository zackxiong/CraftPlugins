.class public Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetRemoteViewsAdapterList"
.end annotation


# instance fields
.field b:I

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/YFRemoteViews3;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Landroid/widget/YFRemoteViews3;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 538
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->d:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->a:I

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->b:I

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    .line 544
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 545
    sget-object v0, Landroid/widget/YFRemoteViews3;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews3;

    .line 546
    iget-object v3, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 548
    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 551
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget v1, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget v1, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->b:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-object v1, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 556
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    :cond_1
    return-void

    .line 558
    :cond_2
    iget-object v1, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 559
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    .line 560
    :goto_0
    if-ge v1, v2, :cond_1

    .line 561
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews3;

    .line 562
    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews3;->writeToParcel(Landroid/os/Parcel;I)V

    .line 560
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
