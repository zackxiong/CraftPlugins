.class Lcom/yf/smart/weloopx/android/ui/c/cq;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/android/ui/a/s$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/co;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/co;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cq;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/android/ui/a/s;I)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cq;->a:Lcom/yf/smart/weloopx/android/ui/c/co;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/co;->a:Lit/sephiroth/android/library/widget/CenterHListView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/cr;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/c/cr;-><init>(Lcom/yf/smart/weloopx/android/ui/c/cq;)V

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/CenterHListView;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method
