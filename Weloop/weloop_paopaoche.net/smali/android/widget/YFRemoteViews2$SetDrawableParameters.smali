.class public Landroid/widget/YFRemoteViews2$SetDrawableParameters;
.super Landroid/widget/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews2;
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

.field final synthetic g:Landroid/widget/YFRemoteViews2;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 814
    iput-object p1, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->g:Landroid/widget/YFRemoteViews2;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews2$Action;-><init>()V

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->a:I

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->b:Z

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->c:I

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->d:I

    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    :goto_1
    if-eqz v1, :cond_2

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    .line 825
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->f:I

    .line 826
    return-void

    :cond_0
    move v0, v2

    .line 816
    goto :goto_0

    :cond_1
    move v1, v2

    .line 819
    goto :goto_1

    .line 823
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 829
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    iget v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 840
    :goto_1
    iget v0, p0, Landroid/widget/YFRemoteViews2$SetDrawableParameters;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    return-void

    :cond_0
    move v0, v2

    .line 831
    goto :goto_0

    .line 838
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
