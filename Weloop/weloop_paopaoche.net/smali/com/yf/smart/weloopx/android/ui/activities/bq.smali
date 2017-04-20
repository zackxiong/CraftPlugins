.class Lcom/yf/smart/weloopx/android/ui/activities/bq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/m/a/b;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)V
    .locals 0

    .prologue
    .line 1906
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bq;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bq;->a:Lcom/yf/gattlib/m/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bq;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->V(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bq;->a:Lcom/yf/gattlib/m/a/b;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->a(Lcom/yf/gattlib/m/a/b;)Z

    .line 1910
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bq;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->V(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->notifyDataSetChanged()V

    .line 1911
    return-void
.end method
