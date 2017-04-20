.class public Landroid/widget/YFRemoteViews3$BitmapReflectionAction;
.super Landroid/widget/YFRemoteViews3$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field b:I

.field c:Landroid/graphics/Bitmap;

.field d:Ljava/lang/String;

.field final synthetic e:Landroid/widget/YFRemoteViews3;


# direct methods
.method constructor <init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1034
    iput-object p1, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->e:Landroid/widget/YFRemoteViews3;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews3$Action;-><init>()V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->a:I

    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->d:Ljava/lang/String;

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->b:I

    .line 1038
    iget-object v0, p1, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    iget v1, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews3$b;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->c:Landroid/graphics/Bitmap;

    .line 1039
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/YFRemoteViews3$b;)V
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/YFRemoteViews3$b;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->b:I

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
    iget v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    iget-object v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1046
    iget v0, p0, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    return-void
.end method
