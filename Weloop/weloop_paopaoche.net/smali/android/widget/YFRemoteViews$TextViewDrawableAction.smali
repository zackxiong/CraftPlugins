.class public Landroid/widget/YFRemoteViews$TextViewDrawableAction;
.super Landroid/widget/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
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

.field final synthetic g:Landroid/widget/YFRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1363
    iput-object p1, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->g:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews$Action;-><init>()V

    .line 1397
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->b:Z

    .line 1364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->a:I

    .line 1365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->b:Z

    .line 1366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->c:I

    .line 1367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->d:I

    .line 1368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->e:I

    .line 1369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->f:I

    .line 1370
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1373
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    iget v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    iget v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    iget v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    iget v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    iget v0, p0, Landroid/widget/YFRemoteViews$TextViewDrawableAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    return-void

    .line 1375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
