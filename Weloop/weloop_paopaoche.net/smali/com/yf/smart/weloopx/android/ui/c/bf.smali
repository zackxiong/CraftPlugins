.class Lcom/yf/smart/weloopx/android/ui/c/bf;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/yf/smart/weloopx/android/ui/c/ba;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ba;II)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->c:Lcom/yf/smart/weloopx/android/ui/c/ba;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->a:I

    iput p3, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->c:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->j(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 608
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->c:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->j(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->a:I

    if-ne v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->c:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->j(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->c:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->j(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 616
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->c:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->j(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->c:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->j(Lcom/yf/smart/weloopx/android/ui/c/ba;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bf;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
