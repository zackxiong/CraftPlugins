.class final Lcom/yf/gattlib/slidingFragment/e;
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
        "Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;
    .locals 2

    .prologue
    .line 1049
    new-instance v0, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;Lcom/yf/gattlib/slidingFragment/d;)V

    return-object v0
.end method

.method public a(I)[Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;
    .locals 1

    .prologue
    .line 1053
    new-array v0, p1, [Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/slidingFragment/e;->a(Landroid/os/Parcel;)Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/slidingFragment/e;->a(I)[Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;

    move-result-object v0

    return-object v0
.end method
