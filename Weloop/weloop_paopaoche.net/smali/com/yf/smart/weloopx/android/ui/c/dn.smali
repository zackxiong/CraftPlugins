.class Lcom/yf/smart/weloopx/android/ui/c/dn;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dm;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dm;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dn;->a:Lcom/yf/smart/weloopx/android/ui/c/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dn;->a:Lcom/yf/smart/weloopx/android/ui/c/dm;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->a(Lcom/yf/smart/weloopx/android/ui/c/dm;)Lcom/yf/smart/weloopx/android/ui/c/dm$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dn;->a:Lcom/yf/smart/weloopx/android/ui/c/dm;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->a(Lcom/yf/smart/weloopx/android/ui/c/dm;)Lcom/yf/smart/weloopx/android/ui/c/dm$a;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/c/dn;->a:Lcom/yf/smart/weloopx/android/ui/c/dm;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/c/dm;->b(Lcom/yf/smart/weloopx/android/ui/c/dm;)Lcom/yf/smart/weloopx/data/models/Watchface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yf/smart/weloopx/android/ui/c/dm$a;->a(ILcom/yf/smart/weloopx/data/models/Watchface;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dn;->a:Lcom/yf/smart/weloopx/android/ui/c/dm;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/dm;->b()V

    .line 76
    return-void
.end method
