.class final Lcom/yf/lib/notification/views/d;
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
        "Lcom/yf/lib/notification/views/YFRemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yf/lib/notification/views/YFRemoteViews;
    .locals 1

    .prologue
    .line 2328
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yf/lib/notification/views/YFRemoteViews;
    .locals 1

    .prologue
    .line 2332
    new-array v0, p1, [Lcom/yf/lib/notification/views/YFRemoteViews;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0, p1}, Lcom/yf/lib/notification/views/d;->a(Landroid/os/Parcel;)Lcom/yf/lib/notification/views/YFRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p0, p1}, Lcom/yf/lib/notification/views/d;->a(I)[Lcom/yf/lib/notification/views/YFRemoteViews;

    move-result-object v0

    return-object v0
.end method
