.class Lcom/yf/smart/weloopx/android/ui/c/bj;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/bi$a;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/bi;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/bi;Lcom/yf/smart/weloopx/android/ui/c/bi$a;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bj;->b:Lcom/yf/smart/weloopx/android/ui/c/bi;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/bj;->a:Lcom/yf/smart/weloopx/android/ui/c/bi$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bj;->a:Lcom/yf/smart/weloopx/android/ui/c/bi$a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/bj;->b:Lcom/yf/smart/weloopx/android/ui/c/bi;

    iget v1, v1, Lcom/yf/smart/weloopx/android/ui/c/bi;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/bi$a;->a(I)V

    .line 76
    return-void
.end method
