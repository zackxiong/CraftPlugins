.class final Lcom/yf/lib/ui/fragments/a;
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
        "Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;Lcom/yf/lib/ui/fragments/FragmentTabHost$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;
    .locals 1

    .prologue
    .line 96
    new-array v0, p1, [Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/yf/lib/ui/fragments/a;->a(Landroid/os/Parcel;)Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/yf/lib/ui/fragments/a;->a(I)[Lcom/yf/lib/ui/fragments/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method
