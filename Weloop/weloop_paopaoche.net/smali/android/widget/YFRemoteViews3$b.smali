.class public Landroid/widget/YFRemoteViews3$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    .line 964
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    .line 969
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 970
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 971
    iget-object v3, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 973
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)I
    .locals 1

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 977
    const/4 v0, -0x1

    .line 983
    :goto_0
    return v0

    .line 979
    :cond_0
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 982
    :cond_1
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public a(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 989
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 990
    :cond_0
    const/4 v0, 0x0

    .line 992
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 997
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 998
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 999
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1000
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 999
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1002
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/YFRemoteViews3$c;)V
    .locals 2

    .prologue
    .line 1016
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1017
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/YFRemoteViews3$c;->a(Landroid/graphics/Bitmap;)V

    .line 1016
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1019
    :cond_0
    return-void
.end method
