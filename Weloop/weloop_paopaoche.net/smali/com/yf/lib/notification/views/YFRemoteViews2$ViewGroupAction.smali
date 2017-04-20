.class public Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewGroupAction"
.end annotation


# instance fields
.field public b:Lcom/yf/lib/notification/views/YFRemoteViews2;

.field final synthetic c:Lcom/yf/lib/notification/views/YFRemoteViews2;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V
    .locals 1

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->c:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;-><init>()V

    .line 1314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->a:I

    .line 1315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1316
    :goto_0
    if-nez v0, :cond_1

    .line 1317
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {v0, p2, p3}, Lcom/yf/lib/notification/views/YFRemoteViews2;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    .line 1321
    :goto_1
    return-void

    .line 1315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1319
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2;->a(Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    .line 1361
    :cond_0
    return-void
.end method

.method public a(Lcom/yf/lib/notification/views/YFRemoteViews2$c;)V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews2;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a(I)V

    .line 1354
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    if-eqz v0, :cond_0

    .line 1327
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews2;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1333
    :goto_0
    return-void

    .line 1331
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
