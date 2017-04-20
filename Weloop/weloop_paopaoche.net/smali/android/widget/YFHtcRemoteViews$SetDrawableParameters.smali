.class public Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetDrawableParameters"
.end annotation


# instance fields
.field d:Z

.field e:I

.field f:I

.field g:Landroid/graphics/PorterDuff$Mode;

.field h:I

.field final synthetic i:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 836
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->i:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->a:I

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->d:Z

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->e:I

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->f:I

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    :goto_1
    if-eqz v1, :cond_2

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->g:Landroid/graphics/PorterDuff$Mode;

    .line 847
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->h:I

    .line 849
    return-void

    :cond_0
    move v0, v2

    .line 838
    goto :goto_0

    :cond_1
    move v1, v2

    .line 841
    goto :goto_1

    .line 845
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->g:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->g:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    :goto_1
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    return-void

    :cond_0
    move v0, v2

    .line 854
    goto :goto_0

    .line 861
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
