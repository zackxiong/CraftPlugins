.class public Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;
.super Landroid/widget/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewDrawableColorFilterAction"
.end annotation


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:Landroid/graphics/PorterDuff$Mode;

.field final synthetic f:Landroid/widget/YFRemoteViews2;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1523
    iput-object p1, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->f:Landroid/widget/YFRemoteViews2;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews2$Action;-><init>()V

    .line 1524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->a:I

    .line 1525
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->b:Z

    .line 1526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->c:I

    .line 1527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->d:I

    .line 1528
    invoke-virtual {p0, p2}, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->a(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->e:Landroid/graphics/PorterDuff$Mode;

    .line 1529
    return-void

    .line 1525
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 1532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1533
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1534
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1536
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1541
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    iget v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    iget v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    iget v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1546
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$TextViewDrawableColorFilterAction;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    return-void

    .line 1543
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
