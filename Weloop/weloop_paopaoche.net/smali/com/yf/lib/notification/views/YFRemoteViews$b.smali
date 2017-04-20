.class public Lcom/yf/lib/notification/views/YFRemoteViews$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
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
    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    .line 928
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    .line 933
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 934
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 935
    iget-object v3, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 937
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)I
    .locals 1

    .prologue
    .line 940
    if-nez p1, :cond_0

    .line 941
    const/4 v0, -0x1

    .line 947
    :goto_0
    return v0

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public a(I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 953
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 954
    :cond_0
    const/4 v0, 0x0

    .line 956
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 962
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 964
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 963
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 966
    :cond_0
    return-void
.end method

.method public a(Lcom/yf/lib/notification/views/YFRemoteViews$c;)V
    .locals 2

    .prologue
    .line 980
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews$c;->a(Landroid/graphics/Bitmap;)V

    .line 980
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 983
    :cond_0
    return-void
.end method
