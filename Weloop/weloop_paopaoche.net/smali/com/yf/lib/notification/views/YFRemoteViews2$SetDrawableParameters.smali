.class public Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;
.super Lcom/yf/lib/notification/views/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetDrawableParameters"
.end annotation


# instance fields
.field b:Z

.field c:I

.field d:I

.field e:Landroid/graphics/PorterDuff$Mode;

.field f:I

.field final synthetic g:Lcom/yf/lib/notification/views/YFRemoteViews2;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 820
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->g:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;-><init>()V

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->a:I

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->b:Z

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->c:I

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->d:I

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    :goto_1
    if-eqz v1, :cond_2

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    .line 831
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->f:I

    .line 832
    return-void

    :cond_0
    move v0, v2

    .line 822
    goto :goto_0

    :cond_1
    move v1, v2

    .line 825
    goto :goto_1

    .line 829
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 835
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 841
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 846
    :goto_1
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    return-void

    :cond_0
    move v0, v2

    .line 837
    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
