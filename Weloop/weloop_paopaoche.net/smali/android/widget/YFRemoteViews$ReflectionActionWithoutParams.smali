.class public final Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;
.super Landroid/widget/YFRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReflectionActionWithoutParams"
.end annotation


# instance fields
.field final b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/YFRemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 878
    iput-object p1, p0, Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;->c:Landroid/widget/YFRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews$Action;-><init>()V

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;->a:I

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;->b:Ljava/lang/String;

    .line 881
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 884
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget v0, p0, Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    iget-object v0, p0, Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    return-void
.end method
