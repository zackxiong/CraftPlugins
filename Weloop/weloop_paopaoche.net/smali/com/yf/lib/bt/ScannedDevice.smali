.class public Lcom/yf/lib/bt/ScannedDevice;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yf/lib/bt/ScannedDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/bluetooth/BluetoothDevice;

.field public final b:I

.field public final c:J

.field public d:Lcom/yf/lib/bt/BleAdvertisedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/yf/lib/bt/c;

    invoke-direct {v0}, Lcom/yf/lib/bt/c;-><init>()V

    sput-object v0, Lcom/yf/lib/bt/ScannedDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IJLcom/yf/lib/bt/BleAdvertisedData;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yf/lib/bt/ScannedDevice;->a:Landroid/bluetooth/BluetoothDevice;

    .line 16
    iput p2, p0, Lcom/yf/lib/bt/ScannedDevice;->b:I

    .line 17
    iput-wide p3, p0, Lcom/yf/lib/bt/ScannedDevice;->c:J

    .line 18
    iput-object p5, p0, Lcom/yf/lib/bt/ScannedDevice;->d:Lcom/yf/lib/bt/BleAdvertisedData;

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 38
    instance-of v0, p1, Lcom/yf/lib/bt/ScannedDevice;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/yf/lib/bt/ScannedDevice;->a:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/yf/lib/bt/ScannedDevice;

    iget-object v1, p1, Lcom/yf/lib/bt/ScannedDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yf/lib/bt/ScannedDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget v0, p0, Lcom/yf/lib/bt/ScannedDevice;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-wide v0, p0, Lcom/yf/lib/bt/ScannedDevice;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-object v0, p0, Lcom/yf/lib/bt/ScannedDevice;->d:Lcom/yf/lib/bt/BleAdvertisedData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    return-void
.end method
