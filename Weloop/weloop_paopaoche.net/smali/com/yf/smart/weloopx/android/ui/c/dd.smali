.class Lcom/yf/smart/weloopx/android/ui/c/dd;
.super Lcom/yf/smart/weloopx/b/b/g;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/c/dc;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/dc;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/dd;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/data/models/UserProfileResult;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dd;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Lcom/yf/smart/weloopx/android/ui/c/dc;Lcom/yf/smart/weloopx/data/models/UserProfileResult;)Lcom/yf/smart/weloopx/data/models/UserProfileResult;

    .line 220
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dd;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->a(Lcom/yf/smart/weloopx/android/ui/c/dc;)V

    .line 221
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dd;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->b(Lcom/yf/smart/weloopx/android/ui/c/dc;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 223
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/dd;->a:Lcom/yf/smart/weloopx/android/ui/c/dc;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/dc;->b(Lcom/yf/smart/weloopx/android/ui/c/dc;)Lcom/yf/smart/weloopx/android/ui/c/aw;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 228
    invoke-static {p1}, Lcom/yf/smart/weloopx/f/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/yf/lib/a/a;->a()Lcom/yf/lib/squareup/otto/b;

    move-result-object v0

    new-instance v1, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/event/InvalidAccessTokenEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/lib/squareup/otto/b;->c(Ljava/lang/Object;)V

    .line 232
    :cond_0
    return-void
.end method
