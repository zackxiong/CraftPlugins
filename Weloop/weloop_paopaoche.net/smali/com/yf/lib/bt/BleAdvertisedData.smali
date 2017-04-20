.class public Lcom/yf/lib/bt/BleAdvertisedData;
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
            "Lcom/yf/lib/bt/BleAdvertisedData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/yf/lib/bt/a;

    invoke-direct {v0}, Lcom/yf/lib/bt/a;-><init>()V

    sput-object v0, Lcom/yf/lib/bt/BleAdvertisedData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/yf/lib/bt/BleAdvertisedData;->a:Ljava/util/List;

    .line 15
    iput-object p2, p0, Lcom/yf/lib/bt/BleAdvertisedData;->b:Ljava/lang/String;

    .line 16
    if-nez p3, :cond_0

    .line 17
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 19
    :cond_0
    iput-object p3, p0, Lcom/yf/lib/bt/BleAdvertisedData;->c:[B

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/lib/bt/BleAdvertisedData;->c:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/yf/lib/bt/BleAdvertisedData;->c:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 43
    return-void
.end method
