.class public Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field d:I

.field e:Landroid/graphics/Bitmap;

.field f:Ljava/lang/String;

.field final synthetic g:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1033
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->g:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->a:I

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->f:Ljava/lang/String;

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->d:I

    .line 1037
    iget-object v0, p1, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    iget v1, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/YFHtcRemoteViews$a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->e:Landroid/graphics/Bitmap;

    .line 1039
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/YFHtcRemoteViews$a;)V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/YFHtcRemoteViews$a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->d:I

    .line 1060
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1043
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1046
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    return-void
.end method
