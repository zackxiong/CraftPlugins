.class Landroid/support/v7/widget/ActionMenuPresenter$a;
.super Landroid/support/v7/internal/view/menu/l;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Landroid/support/v7/widget/ActionMenuPresenter;

.field private d:Landroid/support/v7/internal/view/menu/q;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/q;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 690
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 691
    const/4 v3, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/l;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/f;Landroid/view/View;ZI)V

    .line 693
    iput-object p3, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->d:Landroid/support/v7/internal/view/menu/q;

    .line 695
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/q;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/h;

    .line 696
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->e(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->a(Landroid/view/View;)V

    .line 701
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$a;->a(Landroid/support/v7/internal/view/menu/m$a;)V

    .line 704
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/q;->size()I

    move-result v1

    move v0, v4

    .line 705
    :goto_1
    if-ge v0, v1, :cond_1

    .line 706
    invoke-virtual {p3, v0}, Landroid/support/v7/internal/view/menu/q;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 707
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 708
    const/4 v4, 0x1

    .line 712
    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/ActionMenuPresenter$a;->a(Z)V

    .line 713
    return-void

    .line 698
    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 717
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/l;->onDismiss()V

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$a;)Landroid/support/v7/widget/ActionMenuPresenter$a;

    .line 719
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$a;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 720
    return-void
.end method
