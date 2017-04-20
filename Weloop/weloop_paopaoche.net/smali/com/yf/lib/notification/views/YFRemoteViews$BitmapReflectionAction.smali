.class public Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field b:I

.field c:Landroid/graphics/Bitmap;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 998
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->e:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->a:I

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->d:Ljava/lang/String;

    .line 1001
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->b:I

    .line 1002
    iget-object v0, p1, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    iget v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->b:I

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->c:Landroid/graphics/Bitmap;

    .line 1003
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/lib/notification/views/YFRemoteViews$b;)V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->b:I

    .line 1024
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1007
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1010
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    return-void
.end method
