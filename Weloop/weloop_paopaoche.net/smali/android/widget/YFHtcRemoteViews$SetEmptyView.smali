.class public Landroid/widget/YFHtcRemoteViews$SetEmptyView;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetEmptyView"
.end annotation


# instance fields
.field public d:I

.field public e:I

.field final synthetic f:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 340
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$SetEmptyView;->f:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetEmptyView;->d:I

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetEmptyView;->e:I

    .line 343
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$SetEmptyView;->a(Landroid/os/Parcel;)V

    .line 344
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$SetEmptyView;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$SetEmptyView;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {p0, p1}, Landroid/widget/YFHtcRemoteViews$SetEmptyView;->b(Landroid/os/Parcel;)V

    .line 351
    return-void
.end method
