.class Lcom/yf/smart/weloopx/android/ui/c/x;
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
    .line 287
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/x;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    invoke-static {}, Lcom/yf/smart/weloopx/f/a;->b()Lcom/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/x;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->i(Lcom/yf/smart/weloopx/android/ui/c/l;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/x;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Lcom/yf/smart/weloopx/android/ui/c/l;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/x;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/l;->j(Lcom/yf/smart/weloopx/android/ui/c/l;)Lcom/yf/smart/weloopx/data/models/Watchface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/models/Watchface;->getWatchfaceImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/x;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->g(Lcom/yf/smart/weloopx/android/ui/c/l;)Lcom/dd/processbutton/iml/SubmitProcessButton;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/dd/processbutton/iml/SubmitProcessButton;->setProgress(I)V

    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/x;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->k(Lcom/yf/smart/weloopx/android/ui/c/l;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 293
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/x;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->h(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 294
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/x;->a:Lcom/yf/smart/weloopx/android/ui/c/u;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/u;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->l(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 295
    return-void
.end method
