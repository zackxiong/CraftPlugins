.class public Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# instance fields
.field b:Landroid/content/Intent;

.field final synthetic c:Landroid/widget/YFRemoteViews3;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 619
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;->c:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;->a:I

    .line 621
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;->b:Landroid/content/Intent;

    .line 622
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 625
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget v0, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;->b:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 628
    return-void
.end method
