.class final Landroid/widget/d;
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
        "Landroid/widget/YFRemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/widget/YFRemoteViews;
    .locals 1

    .prologue
    .line 2322
    new-instance v0, Landroid/widget/YFRemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/YFRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/widget/YFRemoteViews;
    .locals 1

    .prologue
    .line 2326
    new-array v0, p1, [Landroid/widget/YFRemoteViews;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2320
    invoke-virtual {p0, p1}, Landroid/widget/d;->a(Landroid/os/Parcel;)Landroid/widget/YFRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2320
    invoke-virtual {p0, p1}, Landroid/widget/d;->a(I)[Landroid/widget/YFRemoteViews;

    move-result-object v0

    return-object v0
.end method
