.class public Landroid/widget/YFRemoteViews$ViewGroupAction;
.super Landroid/widget/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewGroupAction"
.end annotation


# instance fields
.field b:Landroid/widget/YFRemoteViews;

.field final synthetic c:Landroid/widget/YFRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;Landroid/widget/YFRemoteViews$b;)V
    .locals 1

    .prologue
    .line 1286
    iput-object p1, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->c:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews$Action;-><init>()V

    .line 1287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->a:I

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1289
    :goto_0
    if-nez v0, :cond_1

    .line 1290
    new-instance v0, Landroid/widget/YFRemoteViews;

    invoke-direct {v0, p2, p3}, Landroid/widget/YFRemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews$b;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->b:Landroid/widget/YFRemoteViews;

    .line 1294
    :goto_1
    return-void

    .line 1288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1292
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->b:Landroid/widget/YFRemoteViews;

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/YFRemoteViews$b;)V
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->b:Landroid/widget/YFRemoteViews;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->b:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/YFRemoteViews;->a(Landroid/widget/YFRemoteViews$b;)V

    .line 1334
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/YFRemoteViews$c;)V
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->b:Landroid/widget/YFRemoteViews;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->b:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/YFRemoteViews$c;->a(I)V

    .line 1327
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    iget-object v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->b:Landroid/widget/YFRemoteViews;

    if-eqz v0, :cond_0

    .line 1300
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    iget-object v0, p0, Landroid/widget/YFRemoteViews$ViewGroupAction;->b:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1306
    :goto_0
    return-void

    .line 1304
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
