.class public final Landroid/widget/YFRemoteViews2$ReflectionActionWithoutParams;
.super Landroid/widget/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReflectionActionWithoutParams"
.end annotation


# instance fields
.field final b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/YFRemoteViews2;


# direct methods
.method constructor <init>(Landroid/widget/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 894
    iput-object p1, p0, Landroid/widget/YFRemoteViews2$ReflectionActionWithoutParams;->c:Landroid/widget/YFRemoteViews2;

    invoke-direct {p0}, Landroid/widget/YFRemoteViews2$Action;-><init>()V

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews2$ReflectionActionWithoutParams;->a:I

    .line 896
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews2$ReflectionActionWithoutParams;->b:Ljava/lang/String;

    .line 897
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    iget v0, p0, Landroid/widget/YFRemoteViews2$ReflectionActionWithoutParams;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    iget-object v0, p0, Landroid/widget/YFRemoteViews2$ReflectionActionWithoutParams;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 903
    return-void
.end method
