.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
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
            "Lcom/yf/lib/notification/views/YFHtcRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 544
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->f:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->a:I

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->d:I

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    .line 550
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 551
    sget-object v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    .line 552
    iget-object v3, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 555
    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 558
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->d:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 563
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    :cond_1
    return-void

    .line 565
    :cond_2
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 566
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    .line 567
    :goto_0
    if-ge v1, v2, :cond_1

    .line 568
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    .line 569
    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 567
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
