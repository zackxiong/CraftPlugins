.class public Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
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
            "Lcom/yf/lib/notification/views/YFRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 505
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->d:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->a:I

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->b:I

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    .line 511
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 512
    sget-object v0, Lcom/yf/lib/notification/views/YFRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFRemoteViews;

    .line 513
    iget-object v3, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->b:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 523
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    :cond_1
    return-void

    .line 525
    :cond_2
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 526
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    .line 527
    :goto_0
    if-ge v1, v2, :cond_1

    .line 528
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFRemoteViews;

    .line 529
    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 527
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
