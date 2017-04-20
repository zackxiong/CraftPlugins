.class public Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewSizeAction"
.end annotation


# instance fields
.field b:I

.field c:F

.field final synthetic d:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;->d:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 1420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;->a:I

    .line 1421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;->b:I

    .line 1422
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;->c:F

    .line 1423
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1426
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1430
    return-void
.end method
