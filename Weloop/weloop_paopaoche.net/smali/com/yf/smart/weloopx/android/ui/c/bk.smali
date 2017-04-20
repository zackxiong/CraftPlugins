.class Lcom/yf/smart/weloopx/android/ui/c/bk;
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
    .line 79
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/bk;->b:Lcom/yf/smart/weloopx/android/ui/c/bi;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/bk;->a:Lcom/yf/smart/weloopx/android/ui/c/bi$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/bk;->a:Lcom/yf/smart/weloopx/android/ui/c/bi$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/c/bi$a;->a()V

    .line 83
    return-void
.end method
