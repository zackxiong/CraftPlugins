.class public Landroid/widget/YFRemoteViews2$TextViewDrawableAction;
.super Landroid/widget/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewDrawableAction"
.end annotation


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field final synthetic g:Landroid/widget/YFRemoteViews2;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1384
    iput-object p1, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->g:Landroid/widget/YFRemoteViews2;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews2$Action;-><init>()V

    .line 1418
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->b:Z

    .line 1385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->a:I

    .line 1386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->b:Z

    .line 1387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->c:I

    .line 1388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->d:I

    .line 1389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->e:I

    .line 1390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->f:I

    .line 1391
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1394
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    iget v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    iget v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    iget v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    iget v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    iget v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    return-void

    .line 1396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
