.class Lcom/yf/smart/weloopx/android/ui/c/an;
.super Lcom/yf/smart/weloopx/b/b/c;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/am;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/am;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/an;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/an;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/an;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->a(Lcom/yf/smart/weloopx/android/ui/c/am;)Lcom/yf/smart/weloopx/android/ui/c/am$a;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lcom/yf/smart/weloopx/android/ui/c/am$a;->a(ILjava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/an;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->b()V

    .line 86
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/an;->a:Lcom/yf/smart/weloopx/android/ui/c/am;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/am;->b(Lcom/yf/smart/weloopx/android/ui/c/am;)V

    .line 97
    return-void
.end method
