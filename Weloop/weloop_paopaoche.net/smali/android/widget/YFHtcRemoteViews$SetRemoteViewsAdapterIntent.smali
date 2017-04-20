.class public Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# instance fields
.field d:Landroid/content/Intent;

.field final synthetic e:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 614
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->e:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->a:I

    .line 616
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->d:Landroid/content/Intent;

    .line 617
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->a(Landroid/os/Parcel;)V

    .line 618
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 621
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;->d:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 624
    return-void
.end method
