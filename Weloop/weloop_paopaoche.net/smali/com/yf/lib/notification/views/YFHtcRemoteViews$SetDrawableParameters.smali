.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
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

.field final synthetic i:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method public constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 848
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->i:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->a:I

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->d:Z

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->e:I

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->f:I

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    :goto_1
    if-eqz v1, :cond_2

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->g:Landroid/graphics/PorterDuff$Mode;

    .line 859
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->h:I

    .line 861
    return-void

    :cond_0
    move v0, v2

    .line 850
    goto :goto_0

    :cond_1
    move v1, v2

    .line 853
    goto :goto_1

    .line 857
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->g:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 864
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->g:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->g:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    :goto_1
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    return-void

    :cond_0
    move v0, v2

    .line 866
    goto :goto_0

    .line 873
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
