.class public Landroid/widget/YFRemoteViews3$TextViewSizeAction;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewSizeAction"
.end annotation


# instance fields
.field b:I

.field c:F

.field final synthetic d:Landroid/widget/YFRemoteViews3;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1566
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$TextViewSizeAction;->d:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 1567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewSizeAction;->a:I

    .line 1568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewSizeAction;->b:I

    .line 1569
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewSizeAction;->c:F

    .line 1570
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1573
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewSizeAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewSizeAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewSizeAction;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1577
    return-void
.end method
