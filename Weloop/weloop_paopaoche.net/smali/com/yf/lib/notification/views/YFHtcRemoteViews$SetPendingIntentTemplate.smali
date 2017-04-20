.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetPendingIntentTemplate"
.end annotation


# instance fields
.field d:Landroid/app/PendingIntent;

.field final synthetic e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 465
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;->a:I

    .line 467
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;->d:Landroid/app/PendingIntent;

    .line 468
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;->a(Landroid/os/Parcel;)V

    .line 469
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 472
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;->d:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 475
    return-void
.end method
