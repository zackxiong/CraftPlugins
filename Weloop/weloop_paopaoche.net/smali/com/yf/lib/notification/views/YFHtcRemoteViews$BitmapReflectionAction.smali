.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field d:I

.field e:Landroid/graphics/Bitmap;

.field f:Ljava/lang/String;

.field final synthetic g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->a:I

    .line 1047
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->f:Ljava/lang/String;

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->d:I

    .line 1049
    iget-object v0, p1, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    iget v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->d:I

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->e:Landroid/graphics/Bitmap;

    .line 1051
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->d:I

    .line 1072
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1055
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1058
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    return-void
.end method
