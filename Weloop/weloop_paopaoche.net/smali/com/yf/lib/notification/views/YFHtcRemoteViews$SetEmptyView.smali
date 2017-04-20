.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetEmptyView"
.end annotation


# instance fields
.field public d:I

.field public e:I

.field final synthetic f:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 352
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;->f:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;->d:I

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;->e:I

    .line 355
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;->a(Landroid/os/Parcel;)V

    .line 356
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    invoke-virtual {p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;->b(Landroid/os/Parcel;)V

    .line 363
    return-void
.end method
