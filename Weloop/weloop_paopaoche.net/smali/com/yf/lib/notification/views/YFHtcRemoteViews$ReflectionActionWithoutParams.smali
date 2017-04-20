.class public final Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;
.super Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReflectionActionWithoutParams"
.end annotation


# instance fields
.field final d:Ljava/lang/String;

.field final synthetic e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;


# direct methods
.method constructor <init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 929
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;-><init>()V

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;->a:I

    .line 931
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;->d:Ljava/lang/String;

    .line 932
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;->a(Landroid/os/Parcel;)V

    .line 933
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;->b(Landroid/os/Parcel;)V

    .line 940
    return-void
.end method
