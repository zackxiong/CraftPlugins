.class Lcom/yf/smart/weloopx/android/ui/c/y;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/u;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/u;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/y;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/y;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->g(Lcom/yf/smart/weloopx/android/ui/c/l;)Lcom/dd/processbutton/iml/SubmitProcessButton;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setProgress(I)V

    .line 306
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/y;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->h(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 307
    return-void
.end method
