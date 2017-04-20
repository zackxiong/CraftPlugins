.class Lcom/yf/smart/weloopx/android/ui/c/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/r;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/r;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(Lcom/yf/smart/weloopx/android/ui/c/l;)I

    move-result v0

    if-gez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/r;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(I)V

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/r;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->b(Lcom/yf/smart/weloopx/android/ui/c/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/r;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    const v1, 0x7f0702c5

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/l;->a(I)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/r;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->c(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/r;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->d(Lcom/yf/smart/weloopx/android/ui/c/l;)V

    goto :goto_0
.end method
