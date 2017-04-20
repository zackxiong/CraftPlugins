.class public Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetOnClickPendingIntent"
.end annotation


# instance fields
.field d:Landroid/app/PendingIntent;

.field final synthetic e:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 679
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;->e:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;->a:I

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;->d:Landroid/app/PendingIntent;

    .line 686
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;->a(Landroid/os/Parcel;)V

    .line 687
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 690
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget v2, p0, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;->a:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;->d:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 698
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 694
    goto :goto_0
.end method
