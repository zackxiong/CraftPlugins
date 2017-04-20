.class Landroid/support/v7/internal/widget/ae;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Landroid/support/v7/internal/view/menu/a;

.field final synthetic b:Landroid/support/v7/internal/widget/ad;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ad;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 184
    iput-object p1, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Landroid/support/v7/internal/view/menu/a;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ad;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ad;->a(Landroid/support/v7/internal/widget/ad;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ad;

    invoke-static {v4}, Landroid/support/v7/internal/widget/ad;->b(Landroid/support/v7/internal/widget/ad;)Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/view/menu/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ad;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ad;->c(Landroid/support/v7/internal/widget/ad;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ad;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ad;->d(Landroid/support/v7/internal/widget/ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ad;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ad;->c(Landroid/support/v7/internal/widget/ad;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ae;->a:Landroid/support/v7/internal/view/menu/a;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 192
    :cond_0
    return-void
.end method
