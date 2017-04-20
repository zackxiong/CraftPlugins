.class public Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewSizeAction"
.end annotation


# instance fields
.field d:I

.field e:F

.field final synthetic f:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1464
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;->f:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 1465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;->a:I

    .line 1466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;->d:I

    .line 1467
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;->e:F

    .line 1468
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;->a(Landroid/os/Parcel;)V

    .line 1469
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1472
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1476
    return-void
.end method
