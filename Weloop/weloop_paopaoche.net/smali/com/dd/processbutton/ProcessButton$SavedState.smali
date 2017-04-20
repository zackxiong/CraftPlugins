.class public Lcom/dd/processbutton/ProcessButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dd/processbutton/ProcessButton;
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
            "Lcom/dd/processbutton/ProcessButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/dd/processbutton/b;

    invoke-direct {v0}, Lcom/dd/processbutton/b;-><init>()V

    sput-object v0, Lcom/dd/processbutton/ProcessButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dd/processbutton/ProcessButton$SavedState;->a:I

    .line 226
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/dd/processbutton/ProcessButton$1;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/dd/processbutton/ProcessButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 221
    return-void
.end method

.method static synthetic a(Lcom/dd/processbutton/ProcessButton$SavedState;)I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/dd/processbutton/ProcessButton$SavedState;->a:I

    return v0
.end method

.method static synthetic a(Lcom/dd/processbutton/ProcessButton$SavedState;I)I
    .locals 0

    .prologue
    .line 215
    iput p1, p0, Lcom/dd/processbutton/ProcessButton$SavedState;->a:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    iget v0, p0, Lcom/dd/processbutton/ProcessButton$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return-void
.end method
