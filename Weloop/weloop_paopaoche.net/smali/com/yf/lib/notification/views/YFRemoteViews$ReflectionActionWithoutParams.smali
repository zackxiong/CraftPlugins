.class public final Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;
.super Lcom/yf/lib/notification/views/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReflectionActionWithoutParams"
.end annotation


# instance fields
.field final b:Ljava/lang/String;

.field final synthetic c:Lcom/yf/lib/notification/views/YFRemoteViews;


# direct methods
.method constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 884
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;->c:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;-><init>()V

    .line 885
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;->a:I

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;->b:Ljava/lang/String;

    .line 887
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    return-void
.end method
