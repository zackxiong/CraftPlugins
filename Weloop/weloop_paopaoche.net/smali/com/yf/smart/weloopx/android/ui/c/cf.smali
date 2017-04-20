.class Lcom/yf/smart/weloopx/android/ui/c/cf;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/ce;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/ce;I)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/cf;->b:Lcom/yf/smart/weloopx/android/ui/c/ce;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/c/cf;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/cf;->b:Lcom/yf/smart/weloopx/android/ui/c/ce;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/c/cg;

    invoke-direct {v1, p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/c/cg;-><init>(Lcom/yf/smart/weloopx/android/ui/c/cf;II)V

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ce;->a(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    return-void
.end method
