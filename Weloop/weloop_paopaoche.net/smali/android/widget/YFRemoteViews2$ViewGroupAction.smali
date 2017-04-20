.class public Landroid/widget/YFRemoteViews2$ViewGroupAction;
.super Landroid/widget/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewGroupAction"
.end annotation


# instance fields
.field public b:Landroid/widget/YFRemoteViews2;

.field final synthetic c:Landroid/widget/YFRemoteViews2;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews2;Landroid/os/Parcel;Landroid/widget/YFRemoteViews2$b;)V
    .locals 1

    .prologue
    .line 1307
    iput-object p1, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->c:Landroid/widget/YFRemoteViews2;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews2$Action;-><init>()V

    .line 1308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->a:I

    .line 1309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1310
    :goto_0
    if-nez v0, :cond_1

    .line 1311
    new-instance v0, Landroid/widget/YFRemoteViews2;

    invoke-direct {v0, p2, p3}, Landroid/widget/YFRemoteViews2;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews2$b;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->b:Landroid/widget/YFRemoteViews2;

    .line 1315
    :goto_1
    return-void

    .line 1309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1313
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->b:Landroid/widget/YFRemoteViews2;

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/YFRemoteViews2$b;)V
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->b:Landroid/widget/YFRemoteViews2;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->b:Landroid/widget/YFRemoteViews2;

    invoke-virtual {v0, p1}, Landroid/widget/YFRemoteViews2;->a(Landroid/widget/YFRemoteViews2$b;)V

    .line 1355
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/YFRemoteViews2$c;)V
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->b:Landroid/widget/YFRemoteViews2;

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->b:Landroid/widget/YFRemoteViews2;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews2;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/YFRemoteViews2$c;->a(I)V

    .line 1348
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1318
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    iget v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1320
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->b:Landroid/widget/YFRemoteViews2;

    if-eqz v0, :cond_0

    .line 1321
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$ViewGroupAction;->b:Landroid/widget/YFRemoteViews2;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews2;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1327
    :goto_0
    return-void

    .line 1325
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
