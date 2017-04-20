.class Lcom/yf/smart/weloopx/android/ui/c/ai;
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
    .line 164
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/ai;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 167
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ai;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Lcom/yf/smart/weloopx/android/ui/c/ah;Z)Z

    .line 168
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ai;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Lcom/yf/smart/weloopx/android/ui/c/ah;)Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/ai;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Lcom/yf/smart/weloopx/android/ui/c/ah;)Lcom/yf/smart/weloopx/android/ui/c/ah$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/ai;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/ah;->b(Lcom/yf/smart/weloopx/android/ui/c/ah;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/c/ai;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-static {v3}, Lcom/yf/smart/weloopx/android/ui/c/ah;->c(Lcom/yf/smart/weloopx/android/ui/c/ah;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/yf/smart/weloopx/android/ui/c/ah$a;->a(Ljava/lang/String;Z)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/ai;->a:Lcom/yf/smart/weloopx/android/ui/c/ah;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ah;->b()V

    .line 172
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
