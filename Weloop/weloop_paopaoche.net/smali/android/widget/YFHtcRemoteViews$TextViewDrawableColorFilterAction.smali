.class public Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewDrawableColorFilterAction"
.end annotation


# instance fields
.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/PorterDuff$Mode;

.field final synthetic h:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1556
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->h:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 1557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->a:I

    .line 1558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->d:Z

    .line 1559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->e:I

    .line 1560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->f:I

    .line 1561
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->c(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->g:Landroid/graphics/PorterDuff$Mode;

    .line 1562
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->a(Landroid/os/Parcel;)V

    .line 1563
    return-void

    .line 1558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public c(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 1566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1567
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1568
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1570
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1575
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1576
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    iget-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    return-void

    .line 1577
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
