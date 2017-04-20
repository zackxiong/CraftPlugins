.class public Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
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

.field final synthetic h:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1507
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->h:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 1508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->a:I

    .line 1509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->d:I

    .line 1510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->e:I

    .line 1511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->f:I

    .line 1512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->g:I

    .line 1513
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->a(Landroid/os/Parcel;)V

    .line 1514
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1517
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1522
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    invoke-virtual {p0, p1}, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;->b(Landroid/os/Parcel;)V

    .line 1524
    return-void
.end method
