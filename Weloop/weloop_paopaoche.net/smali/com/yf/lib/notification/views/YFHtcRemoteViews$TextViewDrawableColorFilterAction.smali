.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
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

.field final synthetic h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 1569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->a:I

    .line 1570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->d:Z

    .line 1571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->e:I

    .line 1572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->f:I

    .line 1573
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->c(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->g:Landroid/graphics/PorterDuff$Mode;

    .line 1574
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->a(Landroid/os/Parcel;)V

    .line 1575
    return-void

    .line 1570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public c(Landroid/os/Parcel;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 1578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1579
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1580
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1582
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1587
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    return-void

    .line 1589
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
