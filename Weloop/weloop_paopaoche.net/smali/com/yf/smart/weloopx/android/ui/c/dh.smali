.class Lcom/yf/smart/weloopx/android/ui/c/dh;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dg;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dg;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dh;->a:Lcom/yf/smart/weloopx/android/ui/c/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dh;->a:Lcom/yf/smart/weloopx/android/ui/c/dg;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/dg;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/c/dc;->f:Landroid/widget/TextView;

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 591
    return-void
.end method
