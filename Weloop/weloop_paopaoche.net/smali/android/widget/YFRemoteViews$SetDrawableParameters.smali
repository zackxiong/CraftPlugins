.class public Landroid/widget/YFRemoteViews$SetDrawableParameters;
.super Landroid/widget/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
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

.field final synthetic g:Landroid/widget/YFRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 798
    iput-object p1, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->g:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews$Action;-><init>()V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->a:I

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->b:Z

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->c:I

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->d:I

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    :goto_1
    if-eqz v1, :cond_2

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    .line 809
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->f:I

    .line 810
    return-void

    :cond_0
    move v0, v2

    .line 800
    goto :goto_0

    :cond_1
    move v1, v2

    .line 803
    goto :goto_1

    .line 807
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 813
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget-object v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-object v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 824
    :goto_1
    iget v0, p0, Landroid/widget/YFRemoteViews$SetDrawableParameters;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    return-void

    :cond_0
    move v0, v2

    .line 815
    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
