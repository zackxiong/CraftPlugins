.class public abstract Landroid/widget/YFHtcRemoteViews$Action;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$Action;->b:Z

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/YFHtcRemoteViews$Action;->c:Z

    .line 271
    return-void

    :cond_0
    move v0, v2

    .line 269
    goto :goto_0

    :cond_1
    move v1, v2

    .line 270
    goto :goto_1
.end method

.method public a(Landroid/widget/YFHtcRemoteViews$a;)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public a(Landroid/widget/YFHtcRemoteViews$b;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public b(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v3, p0, Landroid/widget/YFHtcRemoteViews$Action;->b:Z

    aput-boolean v3, v0, v2

    iget-boolean v3, p0, Landroid/widget/YFHtcRemoteViews$Action;->c:Z

    aput-boolean v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 275
    iget-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$Action;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 276
    iget-boolean v0, p0, Landroid/widget/YFHtcRemoteViews$Action;->c:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 277
    return-void

    :cond_0
    move v0, v2

    .line 275
    goto :goto_0

    :cond_1
    move v1, v2

    .line 276
    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method
