.class Lcom/yf/smart/weloopx/android/ui/activities/hh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/hh;->a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/hh;->a:Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/WatchfaceActivity;->finish()V

    .line 38
    return-void
.end method
