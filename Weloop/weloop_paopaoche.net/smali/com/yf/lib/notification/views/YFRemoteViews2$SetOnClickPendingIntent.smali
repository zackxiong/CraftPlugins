.class public Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;
.super Lcom/yf/lib/notification/views/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetOnClickPendingIntent"
.end annotation


# instance fields
.field b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/yf/lib/notification/views/YFRemoteViews2;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 664
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;->c:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;-><init>()V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;->a:I

    .line 668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;->b:Landroid/app/PendingIntent;

    .line 671
    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 674
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    iget v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;->a:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;->b:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 682
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 678
    goto :goto_0
.end method
