.class public Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPaddingAction"
.end annotation


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field final synthetic f:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->f:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 1462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->a:I

    .line 1463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->b:I

    .line 1464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->c:I

    .line 1465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->d:I

    .line 1466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->e:I

    .line 1467
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1470
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    return-void
.end method
