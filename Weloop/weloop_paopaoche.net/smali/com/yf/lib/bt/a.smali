.class final Lcom/yf/lib/bt/a;
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
        "Lcom/yf/lib/bt/BleAdvertisedData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yf/lib/bt/BleAdvertisedData;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    new-array v0, v0, [B

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 52
    invoke-static {v0}, Lcom/yf/lib/bt/b;->a([B)Lcom/yf/lib/bt/BleAdvertisedData;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/yf/lib/bt/BleAdvertisedData;
    .locals 1

    .prologue
    .line 57
    new-array v0, p1, [Lcom/yf/lib/bt/BleAdvertisedData;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/yf/lib/bt/a;->a(Landroid/os/Parcel;)Lcom/yf/lib/bt/BleAdvertisedData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/yf/lib/bt/a;->a(I)[Lcom/yf/lib/bt/BleAdvertisedData;

    move-result-object v0

    return-object v0
.end method
