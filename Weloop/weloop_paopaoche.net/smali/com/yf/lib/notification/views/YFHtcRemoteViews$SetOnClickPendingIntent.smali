.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetOnClickPendingIntent"
.end annotation


# instance fields
.field d:Landroid/app/PendingIntent;

.field final synthetic e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 691
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;->a:I

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;->d:Landroid/app/PendingIntent;

    .line 698
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;->a(Landroid/os/Parcel;)V

    .line 699
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 702
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;->a:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;->d:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 710
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 706
    goto :goto_0
.end method
