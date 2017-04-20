.class Landroid/support/v7/widget/ActionMenuPresenter$f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/support/v7/internal/view/menu/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$f;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$f;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/f;Z)V
    .locals 2

    .prologue
    .line 736
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/q;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 737
    check-cast v0, Landroid/support/v7/internal/view/menu/q;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/q;->p()Landroid/support/v7/internal/view/menu/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/f;->a(Z)V

    .line 739
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$f;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Landroid/support/v7/internal/view/menu/m$a;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_1

    .line 741
    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/m$a;->a(Landroid/support/v7/internal/view/menu/f;Z)V

    .line 743
    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 727
    if-nez p1, :cond_0

    .line 731
    :goto_0
    return v1

    .line 729
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter$f;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/q;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/q;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 730
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$f;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Landroid/support/v7/internal/view/menu/m$a;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/m$a;->a(Landroid/support/v7/internal/view/menu/f;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
