.class public Landroid/widget/YFRemoteViews3$SetDrawableParameters;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
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

.field final synthetic g:Landroid/widget/YFRemoteViews3;


# direct methods
.method public constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 840
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->g:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->a:I

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->b:Z

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->c:I

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->d:I

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    :goto_1
    if-eqz v1, :cond_2

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    .line 851
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->f:I

    .line 852
    return-void

    :cond_0
    move v0, v2

    .line 842
    goto :goto_0

    :cond_1
    move v1, v2

    .line 845
    goto :goto_1

    .line 849
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 855
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->e:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    :goto_1
    iget v0, p0, Landroid/widget/YFRemoteViews3$SetDrawableParameters;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    return-void

    :cond_0
    move v0, v2

    .line 857
    goto :goto_0

    .line 864
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
