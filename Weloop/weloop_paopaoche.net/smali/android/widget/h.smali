.class final Landroid/widget/h;
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
        "Landroid/widget/YFRemoteViews3;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/widget/YFRemoteViews3;
    .locals 1

    .prologue
    .line 2939
    new-instance v0, Landroid/widget/YFRemoteViews3;

    invoke-direct {v0, p1}, Landroid/widget/YFRemoteViews3;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/widget/YFRemoteViews3;
    .locals 1

    .prologue
    .line 2943
    new-array v0, p1, [Landroid/widget/YFRemoteViews3;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0, p1}, Landroid/widget/h;->a(Landroid/os/Parcel;)Landroid/widget/YFRemoteViews3;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0, p1}, Landroid/widget/h;->a(I)[Landroid/widget/YFRemoteViews3;

    move-result-object v0

    return-object v0
.end method
