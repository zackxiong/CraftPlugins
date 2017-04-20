.class final Lcom/yf/lib/bt/c;
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
        "Lcom/yf/lib/bt/ScannedDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yf/lib/bt/ScannedDevice;
    .locals 7

    .prologue
    .line 47
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 50
    const-class v0, Lcom/yf/lib/bt/BleAdvertisedData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/yf/lib/bt/BleAdvertisedData;

    .line 51
    new-instance v1, Lcom/yf/lib/bt/ScannedDevice;

    invoke-direct/range {v1 .. v6}, Lcom/yf/lib/bt/ScannedDevice;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/yf/lib/bt/BleAdvertisedData;)V

    return-object v1
.end method

.method public a(I)[Lcom/yf/lib/bt/ScannedDevice;
    .locals 1

    .prologue
    .line 54
    new-array v0, p1, [Lcom/yf/lib/bt/ScannedDevice;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yf/lib/bt/c;->a(Landroid/os/Parcel;)Lcom/yf/lib/bt/ScannedDevice;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/yf/lib/bt/c;->a(I)[Lcom/yf/lib/bt/ScannedDevice;

    move-result-object v0

    return-object v0
.end method
