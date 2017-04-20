.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field final synthetic i:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1425
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->i:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 1460
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->d:Z

    .line 1426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->a:I

    .line 1427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->d:Z

    .line 1428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->e:I

    .line 1429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->f:I

    .line 1430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->g:I

    .line 1431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->h:I

    .line 1432
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->a(Landroid/os/Parcel;)V

    .line 1433
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1436
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1437
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1439
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    return-void

    .line 1438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
