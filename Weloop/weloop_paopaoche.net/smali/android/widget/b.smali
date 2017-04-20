.class final Landroid/widget/b;
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
        "Landroid/widget/YFHtcRemoteViews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/widget/YFHtcRemoteViews;
    .locals 1

    .prologue
    .line 2756
    new-instance v0, Landroid/widget/YFHtcRemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/widget/YFHtcRemoteViews;
    .locals 1

    .prologue
    .line 2760
    new-array v0, p1, [Landroid/widget/YFHtcRemoteViews;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2754
    invoke-virtual {p0, p1}, Landroid/widget/b;->a(Landroid/os/Parcel;)Landroid/widget/YFHtcRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2754
    invoke-virtual {p0, p1}, Landroid/widget/b;->a(I)[Landroid/widget/YFHtcRemoteViews;

    move-result-object v0

    return-object v0
.end method
