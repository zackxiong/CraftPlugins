.class public Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewGroupAction"
.end annotation


# instance fields
.field b:Lcom/yf/lib/notification/views/YFRemoteViews;

.field final synthetic c:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews$b;)V
    .locals 1

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->c:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 1293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->a:I

    .line 1294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1295
    :goto_0
    if-nez v0, :cond_1

    .line 1296
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {v0, p2, p3}, Lcom/yf/lib/notification/views/YFRemoteViews;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews;

    .line 1300
    :goto_1
    return-void

    .line 1294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1298
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews;

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/yf/lib/notification/views/YFRemoteViews$b;)V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews;->a(Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    .line 1340
    :cond_0
    return-void
.end method

.method public a(Lcom/yf/lib/notification/views/YFRemoteViews$c;)V
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews;

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews$c;->a(I)V

    .line 1333
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1303
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews;

    if-eqz v0, :cond_0

    .line 1306
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;->b:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1312
    :goto_0
    return-void

    .line 1310
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
