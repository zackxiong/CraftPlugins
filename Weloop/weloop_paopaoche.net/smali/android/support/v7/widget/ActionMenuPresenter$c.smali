.class Landroid/support/v7/widget/ActionMenuPresenter$c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private b:Landroid/support/v7/widget/ActionMenuPresenter$e;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$e;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuPresenter$c;->b:Landroid/support/v7/widget/ActionMenuPresenter$e;

    .line 751
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->f()V

    .line 755
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 756
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$c;->b:Landroid/support/v7/widget/ActionMenuPresenter$e;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$c;->b:Landroid/support/v7/widget/ActionMenuPresenter$e;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$e;)Landroid/support/v7/widget/ActionMenuPresenter$e;

    .line 759
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$c;)Landroid/support/v7/widget/ActionMenuPresenter$c;

    .line 760
    return-void
.end method
