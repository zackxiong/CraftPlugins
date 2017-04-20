.class Lcom/yf/smart/weloopx/android/ui/activities/bm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bm;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bm;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/bn;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bn;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/bm;)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->l(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1800
    return-void
.end method
