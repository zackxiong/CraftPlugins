.class Lcom/yf/smart/weloopx/android/ui/c/af;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ae;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ae;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/af;->a:Lcom/yf/smart/weloopx/android/ui/c/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/af;->a:Lcom/yf/smart/weloopx/android/ui/c/ae;

    new-instance v1, Lcom/yf/gattlib/view/c;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/af;->a:Lcom/yf/smart/weloopx/android/ui/c/ae;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/ae;->a(Lcom/yf/smart/weloopx/android/ui/c/ae;)I

    move-result v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/af;->a:Lcom/yf/smart/weloopx/android/ui/c/ae;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/c/ae;->b(Lcom/yf/smart/weloopx/android/ui/c/ae;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/yf/gattlib/view/c;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ae;->a(Lcom/yf/gattlib/view/c;)V

    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/af;->a:Lcom/yf/smart/weloopx/android/ui/c/ae;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ae;->dismiss()V

    .line 41
    return-void
.end method
