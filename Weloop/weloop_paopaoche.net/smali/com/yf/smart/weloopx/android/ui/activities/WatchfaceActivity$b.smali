.class Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$b;
.super Landroid/support/v13/app/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;


# direct methods
.method public constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$b;->a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    .line 62
    invoke-direct {p0, p2}, Landroid/support/v13/app/d;-><init>(Landroid/app/FragmentManager;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$b;->a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;)[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dr;->a(I)Lcom/yf/smart/weloopx/android/ui/c/dr;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity$b;->a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method
