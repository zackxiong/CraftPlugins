.class public Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/slidingFragment/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1047
    new-instance v0, Lcom/yf/gattlib/slidingFragment/e;

    invoke-direct {v0}, Lcom/yf/gattlib/slidingFragment/e;-><init>()V

    sput-object v0, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;->a:I

    .line 1031
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yf/gattlib/slidingFragment/d;)V
    .locals 0

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1025
    iput p2, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;->a:I

    .line 1026
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1043
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1044
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/SlidingMenu$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    return-void
.end method
