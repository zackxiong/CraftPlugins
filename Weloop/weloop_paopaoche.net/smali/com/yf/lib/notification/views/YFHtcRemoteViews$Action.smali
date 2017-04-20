.class public abstract Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
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
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->b:Z

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->c:Z

    .line 283
    return-void

    :cond_0
    move v0, v2

    .line 281
    goto :goto_0

    :cond_1
    move v1, v2

    .line 282
    goto :goto_1
.end method

.method public a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public b(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v3, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->b:Z

    aput-boolean v3, v0, v2

    iget-boolean v3, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->c:Z

    aput-boolean v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 287
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 288
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->c:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 289
    return-void

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    :cond_1
    move v1, v2

    .line 288
    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method
