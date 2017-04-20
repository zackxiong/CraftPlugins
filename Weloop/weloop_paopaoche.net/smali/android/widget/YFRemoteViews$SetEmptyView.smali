.class public Landroid/widget/YFRemoteViews$SetEmptyView;
.super Landroid/widget/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetEmptyView"
.end annotation


# instance fields
.field b:I

.field c:I

.field final synthetic d:Landroid/widget/YFRemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 311
    iput-object p1, p0, Landroid/widget/YFRemoteViews$SetEmptyView;->d:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews$Action;-><init>()V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$SetEmptyView;->b:I

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$SetEmptyView;->c:I

    .line 314
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/widget/YFRemoteViews$SetEmptyView;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/widget/YFRemoteViews$SetEmptyView;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    return-void
.end method
