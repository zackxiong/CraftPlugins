.class Lcom/yf/smart/weloopx/android/ui/c/di;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dc;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/di;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/di;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/di;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dc;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/di;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 628
    return-void
.end method
