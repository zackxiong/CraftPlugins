.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewGroupAction"
.end annotation


# instance fields
.field public d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

.field final synthetic e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V
    .locals 1

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 1348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->a:I

    .line 1349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1350
    :goto_0
    if-nez v0, :cond_1

    .line 1351
    new-instance v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {v0, p2, p3}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    .line 1355
    :goto_1
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->a(Landroid/os/Parcel;)V

    .line 1356
    return-void

    .line 1349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1353
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    .line 1396
    :cond_0
    return-void
.end method

.method public a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;)V
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;->a(I)V

    .line 1389
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    .line 1362
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1363
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1368
    :goto_0
    return-void

    .line 1366
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
