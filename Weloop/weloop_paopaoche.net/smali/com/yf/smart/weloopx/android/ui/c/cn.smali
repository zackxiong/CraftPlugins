.class Lcom/yf/smart/weloopx/android/ui/c/cn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ck;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ck;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cn;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cn;->a:Lcom/yf/smart/weloopx/android/ui/c/ck;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/ck;->e()V

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
