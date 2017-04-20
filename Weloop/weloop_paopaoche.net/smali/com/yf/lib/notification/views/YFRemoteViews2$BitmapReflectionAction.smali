.class public Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field b:I

.field c:Landroid/graphics/Bitmap;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/yf/lib/notification/views/YFRemoteViews2;


# direct methods
.method constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->e:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;-><init>()V

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->a:I

    .line 1016
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->d:Ljava/lang/String;

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->b:I

    .line 1018
    iget-object v0, p1, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    iget v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->b:I

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2$b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->c:Landroid/graphics/Bitmap;

    .line 1019
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews2$b;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->b:I

    .line 1040
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1023
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1026
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    return-void
.end method
