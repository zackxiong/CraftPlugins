.class final Lcom/alimama/mobile/csdk/umupdate/models/b;
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
        "Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;-><init>(Landroid/os/Parcel;Lcom/alimama/mobile/csdk/umupdate/models/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;
    .locals 1

    .prologue
    .line 42
    new-array v0, p1, [Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/b;->a(Landroid/os/Parcel;)Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/b;->a(I)[Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    return-object v0
.end method
