.class Lcom/yf/smart/weloopx/android/ui/c/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/d/b$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/l;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/m;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseDialogFragment \u76d1\u542c\u8fde\u63a5\u72b6\u6001\u65b9\u6cd5isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/m;->a:Lcom/yf/smart/weloopx/android/ui/c/l;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/c/l;->b()V

    .line 91
    :cond_0
    return-void
.end method
