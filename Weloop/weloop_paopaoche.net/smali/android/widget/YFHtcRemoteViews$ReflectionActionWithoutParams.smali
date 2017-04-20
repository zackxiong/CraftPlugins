.class public final Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReflectionActionWithoutParams"
.end annotation


# instance fields
.field final d:Ljava/lang/String;

.field final synthetic e:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 917
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;->e:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;->a:I

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;->d:Ljava/lang/String;

    .line 920
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;->a(Landroid/os/Parcel;)V

    .line 921
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0, p1}, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;->b(Landroid/os/Parcel;)V

    .line 928
    return-void
.end method
