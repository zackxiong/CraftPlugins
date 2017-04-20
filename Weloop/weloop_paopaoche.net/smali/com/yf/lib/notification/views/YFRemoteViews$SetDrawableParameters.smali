.class public Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
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

.field final synthetic g:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 804
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->g:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->a:I

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->b:Z

    .line 807
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->c:I

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->d:I

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    :goto_1
    if-eqz v1, :cond_2

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    .line 815
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->f:I

    .line 816
    return-void

    :cond_0
    move v0, v2

    .line 806
    goto :goto_0

    :cond_1
    move v1, v2

    .line 809
    goto :goto_1

    .line 813
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 819
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 830
    :goto_1
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    return-void

    :cond_0
    move v0, v2

    .line 821
    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
