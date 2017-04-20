.class public Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetPendingIntentTemplate"
.end annotation


# instance fields
.field b:Landroid/app/PendingIntent;

.field final synthetic c:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 427
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;->c:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;->a:I

    .line 429
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;->b:Landroid/app/PendingIntent;

    .line 430
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 433
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;->b:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 436
    return-void
.end method
