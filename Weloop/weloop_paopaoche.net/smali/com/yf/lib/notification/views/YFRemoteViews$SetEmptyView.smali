.class public Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetEmptyView"
.end annotation


# instance fields
.field b:I

.field c:I

.field final synthetic d:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;->d:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;->b:I

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;->c:I

    .line 320
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    return-void
.end method
