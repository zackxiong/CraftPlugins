.class public Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewDrawableColorFilterAction"
.end annotation


# instance fields
.field final b:Z

.field final c:I

.field final d:I

.field final e:Landroid/graphics/PorterDuff$Mode;

.field final synthetic f:Landroid/widget/YFRemoteViews3;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1655
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->f:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 1656
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->a:I

    .line 1657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->b:Z

    .line 1658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->c:I

    .line 1659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->d:I

    .line 1660
    invoke-direct {p0, p2}, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->a(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->e:Landroid/graphics/PorterDuff$Mode;

    .line 1661
    return-void

    .line 1657
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 1664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1665
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1666
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1668
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1673
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    iget v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1678
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1679
    return-void

    .line 1675
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
