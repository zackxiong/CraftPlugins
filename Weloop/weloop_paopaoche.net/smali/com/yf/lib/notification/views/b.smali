.class final Lcom/yf/lib/notification/views/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yf/lib/notification/views/YFHtcRemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yf/lib/notification/views/YFHtcRemoteViews;
    .locals 1

    .prologue
    .line 2768
    new-instance v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {v0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yf/lib/notification/views/YFHtcRemoteViews;
    .locals 1

    .prologue
    .line 2772
    new-array v0, p1, [Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2766
    invoke-virtual {p0, p1}, Lcom/yf/lib/notification/views/b;->a(Landroid/os/Parcel;)Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2766
    invoke-virtual {p0, p1}, Lcom/yf/lib/notification/views/b;->a(I)[Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    move-result-object v0

    return-object v0
.end method
