.class public Landroid/widget/YFRemoteViews2$SetEmptyView;
.super Landroid/widget/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetEmptyView"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field final synthetic d:Landroid/widget/YFRemoteViews2;


# direct methods
.method constructor <init>(Landroid/widget/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 325
    iput-object p1, p0, Landroid/widget/YFRemoteViews2$SetEmptyView;->d:Landroid/widget/YFRemoteViews2;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews2$Action;-><init>()V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$SetEmptyView;->b:I

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$SetEmptyView;->c:I

    .line 328
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/widget/YFRemoteViews2$SetEmptyView;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/widget/YFRemoteViews2$SetEmptyView;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    return-void
.end method
