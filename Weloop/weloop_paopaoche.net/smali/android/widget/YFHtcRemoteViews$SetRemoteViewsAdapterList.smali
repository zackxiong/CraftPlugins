.class public Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetRemoteViewsAdapterList"
.end annotation


# instance fields
.field d:I

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/YFHtcRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 532
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->f:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->a:I

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->d:I

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    .line 538
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 539
    sget-object v0, Landroid/widget/YFHtcRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFHtcRemoteViews;

    .line 540
    iget-object v3, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 546
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v1, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v1, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->d:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 551
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    :cond_1
    return-void

    .line 553
    :cond_2
    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 554
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    .line 555
    :goto_0
    if-ge v1, v2, :cond_1

    .line 556
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFHtcRemoteViews;

    .line 557
    invoke-virtual {v0, p1, p2}, Landroid/widget/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 555
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
