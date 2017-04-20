.class public Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field b:Z

.field c:I

.field d:I

.field e:I

.field f:I

.field final synthetic g:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1369
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->g:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 1403
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->b:Z

    .line 1370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->a:I

    .line 1371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->b:Z

    .line 1372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->c:I

    .line 1373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->d:I

    .line 1374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->e:I

    .line 1375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->f:I

    .line 1376
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1379
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    return-void

    .line 1381
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
