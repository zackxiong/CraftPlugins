.class public Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewSizeAction"
.end annotation


# instance fields
.field b:I

.field c:F

.field final synthetic d:Lcom/yf/lib/notification/views/YFRemoteViews2;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;->d:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;-><init>()V

    .line 1441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;->a:I

    .line 1442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;->b:I

    .line 1443
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;->c:F

    .line 1444
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1447
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1451
    return-void
.end method
