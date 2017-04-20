.class public Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;
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
            "Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel$1;

    invoke-direct {v0}, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel$1;-><init>()V

    sput-object v0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->c:I

    .line 63
    const/16 v0, 0xb40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->d:[B

    .line 64
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->d:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/PedometerDataModel;->d:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    return-void
.end method
