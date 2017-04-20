.class final Landroid/widget/f;
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
        "Landroid/widget/YFRemoteViews2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/widget/YFRemoteViews2;
    .locals 1

    .prologue
    .line 2691
    new-instance v0, Landroid/widget/YFRemoteViews2;

    invoke-direct {v0, p1}, Landroid/widget/YFRemoteViews2;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/widget/YFRemoteViews2;
    .locals 1

    .prologue
    .line 2695
    new-array v0, p1, [Landroid/widget/YFRemoteViews2;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2689
    invoke-virtual {p0, p1}, Landroid/widget/f;->a(Landroid/os/Parcel;)Landroid/widget/YFRemoteViews2;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2689
    invoke-virtual {p0, p1}, Landroid/widget/f;->a(I)[Landroid/widget/YFRemoteViews2;

    move-result-object v0

    return-object v0
.end method
