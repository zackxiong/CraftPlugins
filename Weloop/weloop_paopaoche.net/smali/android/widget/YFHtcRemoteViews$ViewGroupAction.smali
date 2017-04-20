.class public Landroid/widget/YFHtcRemoteViews$ViewGroupAction;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewGroupAction"
.end annotation


# instance fields
.field public d:Landroid/widget/YFHtcRemoteViews;

.field final synthetic e:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;Landroid/widget/YFHtcRemoteViews$a;)V
    .locals 1

    .prologue
    .line 1335
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->e:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 1336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->a:I

    .line 1337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1338
    :goto_0
    if-nez v0, :cond_1

    .line 1339
    new-instance v0, Landroid/widget/YFHtcRemoteViews;

    invoke-direct {v0, p2, p3}, Landroid/widget/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/YFHtcRemoteViews$a;)V

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->d:Landroid/widget/YFHtcRemoteViews;

    .line 1343
    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->a(Landroid/os/Parcel;)V

    .line 1344
    return-void

    .line 1337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1341
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->d:Landroid/widget/YFHtcRemoteViews;

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/YFHtcRemoteViews$a;)V
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->d:Landroid/widget/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->d:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/YFHtcRemoteViews;->a(Landroid/widget/YFHtcRemoteViews$a;)V

    .line 1384
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/YFHtcRemoteViews$b;)V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->d:Landroid/widget/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->d:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v0}, Landroid/widget/YFHtcRemoteViews;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/YFHtcRemoteViews$b;->a(I)V

    .line 1377
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1347
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1348
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->d:Landroid/widget/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    .line 1350
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1351
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;->d:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1356
    :goto_0
    return-void

    .line 1354
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
