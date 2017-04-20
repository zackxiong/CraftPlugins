.class final Lcom/alimama/mobile/csdk/umupdate/models/c;
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
        "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    invoke-direct {v0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
    .locals 1

    .prologue
    .line 294
    new-array v0, p1, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/c;->a(Landroid/os/Parcel;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/c;->a(I)[Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    move-result-object v0

    return-object v0
.end method
