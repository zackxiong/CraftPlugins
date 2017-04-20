.class final Lit/sephiroth/android/library/widget/g;
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
        "Lit/sephiroth/android/library/widget/AbsHListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
    .locals 2

    .prologue
    .line 1449
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcel;Lit/sephiroth/android/library/widget/a;)V

    return-object v0
.end method

.method public a(I)[Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
    .locals 1

    .prologue
    .line 1454
    new-array v0, p1, [Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1445
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/g;->a(Landroid/os/Parcel;)Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1445
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/g;->a(I)[Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    move-result-object v0

    return-object v0
.end method
