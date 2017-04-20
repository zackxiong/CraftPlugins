.class final Lcom/dd/processbutton/b;
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
        "Lcom/dd/processbutton/ProcessButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dd/processbutton/ProcessButton$SavedState;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Lcom/dd/processbutton/ProcessButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/dd/processbutton/ProcessButton$SavedState;-><init>(Landroid/os/Parcel;Lcom/dd/processbutton/ProcessButton$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/dd/processbutton/ProcessButton$SavedState;
    .locals 1

    .prologue
    .line 243
    new-array v0, p1, [Lcom/dd/processbutton/ProcessButton$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/dd/processbutton/b;->a(Landroid/os/Parcel;)Lcom/dd/processbutton/ProcessButton$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/dd/processbutton/b;->a(I)[Lcom/dd/processbutton/ProcessButton$SavedState;

    move-result-object v0

    return-object v0
.end method
