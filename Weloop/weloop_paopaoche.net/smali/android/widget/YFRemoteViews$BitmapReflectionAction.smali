.class public Landroid/widget/YFRemoteViews$BitmapReflectionAction;
.super Landroid/widget/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field b:I

.field c:Landroid/graphics/Bitmap;

.field d:Ljava/lang/String;

.field final synthetic e:Landroid/widget/YFRemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 992
    iput-object p1, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->e:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews$Action;-><init>()V

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->a:I

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->d:Ljava/lang/String;

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->b:I

    .line 996
    iget-object v0, p1, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    iget v1, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews$b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->c:Landroid/graphics/Bitmap;

    .line 997
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/YFRemoteViews$b;)V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/YFRemoteViews$b;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->b:I

    .line 1018
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1001
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    iget v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    iget-object v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1004
    iget v0, p0, Landroid/widget/YFRemoteViews$BitmapReflectionAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    return-void
.end method
