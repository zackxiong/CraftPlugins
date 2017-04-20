.class public Landroid/widget/YFRemoteViews3$ViewGroupAction;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewGroupAction"
.end annotation


# instance fields
.field b:Landroid/widget/YFRemoteViews3;

.field final synthetic c:Landroid/widget/YFRemoteViews3;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;Landroid/widget/YFRemoteViews3$b;)V
    .locals 1

    .prologue
    .line 1362
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->c:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 1363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->a:I

    .line 1364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1365
    :goto_0
    if-nez v0, :cond_1

    .line 1366
    new-instance v0, Landroid/widget/YFRemoteViews3;

    invoke-direct {v0, p2, p3}, Landroid/widget/YFRemoteViews3;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews3$b;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->b:Landroid/widget/YFRemoteViews3;

    .line 1370
    :goto_1
    return-void

    .line 1364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1368
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->b:Landroid/widget/YFRemoteViews3;

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/YFRemoteViews3$b;)V
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->b:Landroid/widget/YFRemoteViews3;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->b:Landroid/widget/YFRemoteViews3;

    invoke-static {v0, p1}, Landroid/widget/YFRemoteViews3;->a(Landroid/widget/YFRemoteViews3;Landroid/widget/YFRemoteViews3$b;)V

    .line 1410
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/YFRemoteViews3$c;)V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->b:Landroid/widget/YFRemoteViews3;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->b:Landroid/widget/YFRemoteViews3;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews3;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/YFRemoteViews3$c;->a(I)V

    .line 1403
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1373
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    iget v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->b:Landroid/widget/YFRemoteViews3;

    if-eqz v0, :cond_0

    .line 1376
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$ViewGroupAction;->b:Landroid/widget/YFRemoteViews3;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews3;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1382
    :goto_0
    return-void

    .line 1380
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
