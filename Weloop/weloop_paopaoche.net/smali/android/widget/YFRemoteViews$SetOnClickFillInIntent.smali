.class public Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;
.super Landroid/widget/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetOnClickFillInIntent"
.end annotation


# instance fields
.field b:Landroid/content/Intent;

.field final synthetic c:Landroid/widget/YFRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 346
    iput-object p1, p0, Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;->c:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews$Action;-><init>()V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;->a:I

    .line 348
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;->b:Landroid/content/Intent;

    .line 349
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 352
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v0, p0, Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;->b:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 355
    return-void
.end method
