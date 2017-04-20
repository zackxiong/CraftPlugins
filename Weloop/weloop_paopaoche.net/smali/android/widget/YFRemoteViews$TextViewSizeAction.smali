.class public Landroid/widget/YFRemoteViews$TextViewSizeAction;
.super Landroid/widget/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewSizeAction"
.end annotation


# instance fields
.field b:I

.field c:F

.field final synthetic d:Landroid/widget/YFRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1413
    iput-object p1, p0, Landroid/widget/YFRemoteViews$TextViewSizeAction;->d:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews$Action;-><init>()V

    .line 1414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$TextViewSizeAction;->a:I

    .line 1415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$TextViewSizeAction;->b:I

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$TextViewSizeAction;->c:F

    .line 1417
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1420
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1421
    iget v0, p0, Landroid/widget/YFRemoteViews$TextViewSizeAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    iget v0, p0, Landroid/widget/YFRemoteViews$TextViewSizeAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    iget v0, p0, Landroid/widget/YFRemoteViews$TextViewSizeAction;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1424
    return-void
.end method
