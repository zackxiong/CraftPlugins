.class Lcom/yf/smart/weloopx/android/ui/activities/bp;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/bo;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/bo;)V
    .locals 0

    .prologue
    .line 1892
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bp;->a:Lcom/yf/smart/weloopx/android/ui/activities/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bp;->a:Lcom/yf/smart/weloopx/android/ui/activities/bo;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bo;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->t(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1896
    return-void
.end method
