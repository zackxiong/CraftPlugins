.class Lcom/yf/smart/weloopx/android/ui/c/aj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ah;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ah;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/aj;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/aj;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Lcom/yf/smart/weloopx/android/ui/c/ah;Z)Z

    .line 193
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/aj;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Lcom/yf/smart/weloopx/android/ui/c/ah;)Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/aj;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Lcom/yf/smart/weloopx/android/ui/c/ah;)Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/aj;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;->b(Lcom/yf/smart/weloopx/android/ui/c/ah;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/aj;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/ah;->c(Lcom/yf/smart/weloopx/android/ui/c/ah;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/ah$a;->a(Ljava/lang/String;Z)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/aj;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->b()V

    .line 197
    return-void
.end method
