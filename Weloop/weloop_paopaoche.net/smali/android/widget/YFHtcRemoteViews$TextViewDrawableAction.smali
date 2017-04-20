.class public Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
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

.field final synthetic i:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1413
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->i:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 1448
    iput-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->d:Z

    .line 1414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->a:I

    .line 1415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->d:Z

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->e:I

    .line 1417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->f:I

    .line 1418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->g:I

    .line 1419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->h:I

    .line 1420
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->a(Landroid/os/Parcel;)V

    .line 1421
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1424
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    iget-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1430
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    return-void

    .line 1426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
