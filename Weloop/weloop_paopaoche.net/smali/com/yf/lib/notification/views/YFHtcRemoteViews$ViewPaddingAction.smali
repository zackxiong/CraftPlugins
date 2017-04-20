.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPaddingAction"
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field final synthetic h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 1520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->a:I

    .line 1521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->d:I

    .line 1522
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->e:I

    .line 1523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->f:I

    .line 1524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->g:I

    .line 1525
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->a(Landroid/os/Parcel;)V

    .line 1526
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1529
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    invoke-virtual {p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;->b(Landroid/os/Parcel;)V

    .line 1536
    return-void
.end method
