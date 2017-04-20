.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# instance fields
.field d:Landroid/content/Intent;

.field final synthetic e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 626
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->a:I

    .line 628
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->d:Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->a(Landroid/os/Parcel;)V

    .line 630
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 633
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->d:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 636
    return-void
.end method
