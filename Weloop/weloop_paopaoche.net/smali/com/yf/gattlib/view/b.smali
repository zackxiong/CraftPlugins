.class public abstract Lcom/yf/gattlib/view/b;
.super Landroid/app/DialogFragment;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/gattlib/view/d;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method public final a(Lcom/yf/gattlib/view/c;)V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/gattlib/view/b;->a:Lcom/yf/gattlib/view/d;

    iget-object v1, p0, Lcom/yf/gattlib/view/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/yf/gattlib/view/d;->a(Ljava/lang/String;Lcom/yf/gattlib/view/c;)Z

    .line 24
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 30
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yf/gattlib/view/d;

    move-object v1, v0

    iput-object v1, p0, Lcom/yf/gattlib/view/b;->a:Lcom/yf/gattlib/view/d;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v1

    .line 32
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement FragmentEventHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yf/gattlib/view/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_FRAGMENT_ID"

    const-string v2, "HandlerDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/view/b;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/yf/gattlib/view/b;->a()Landroid/view/View;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yf/gattlib/view/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 44
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    return-object v1
.end method
