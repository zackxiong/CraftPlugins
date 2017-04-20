.class Lcom/yf/smart/weloopx/view/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/a$a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/a$a;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/f;->a:Lcom/yf/smart/weloopx/view/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/f;->a:Lcom/yf/smart/weloopx/view/a$a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a$a;->a(Lcom/yf/smart/weloopx/view/a$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/view/f;->a:Lcom/yf/smart/weloopx/view/a$a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a$a;->a(Lcom/yf/smart/weloopx/view/a$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/f;->a:Lcom/yf/smart/weloopx/view/a$a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a$a;->a(Lcom/yf/smart/weloopx/view/a$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 297
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/f;->a:Lcom/yf/smart/weloopx/view/a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/view/a$a;->a(Lcom/yf/smart/weloopx/view/a$a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 299
    :cond_0
    return-void
.end method
