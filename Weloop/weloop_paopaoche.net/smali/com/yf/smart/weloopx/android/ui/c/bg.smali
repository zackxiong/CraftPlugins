.class Lcom/yf/smart/weloopx/android/ui/c/bg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/ba;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ba;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bg;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bg;->a:Lcom/yf/smart/weloopx/android/ui/c/ba;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba;->k(Lcom/yf/smart/weloopx/android/ui/c/ba;)Lcom/yf/smart/weloopx/android/ui/c/ba$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/c/ba$a;->a()V

    .line 631
    return-void
.end method
