.class Lcom/yf/smart/weloopx/c/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/ap$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/g;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/g;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/h;->a:Lcom/yf/smart/weloopx/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 216
    const-string v0, "CustomInitializer 12. onSetStepStart"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 221
    const-string v0, "CustomInitializer 14. onSetStepTimeout"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 222
    const-string v0, "CustomInitializer test, onSetStepTimeout"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/h;->a:Lcom/yf/smart/weloopx/c/g;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/g;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 224
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 228
    const-string v0, "CustomInitializer 13. onSetStepFinish"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 229
    const-string v0, "CustomInitializer test, onSetStepFinish"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 231
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/h;->a:Lcom/yf/smart/weloopx/c/g;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/g;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 232
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 236
    const-string v0, "CustomInitializer 15. onSetStepFail"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 237
    const-string v0, "CustomInitializer test, onSetStepFail"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/h;->a:Lcom/yf/smart/weloopx/c/g;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/g;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 239
    return-void
.end method
