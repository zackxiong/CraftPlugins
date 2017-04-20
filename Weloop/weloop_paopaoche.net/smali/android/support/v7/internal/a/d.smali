.class Landroid/support/v7/internal/a/d;
.super Landroid/support/v4/view/bm;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/a/b;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/b;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Landroid/support/v7/internal/a/d;->a:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Landroid/support/v4/view/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/a/d;->a:Landroid/support/v7/internal/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;Landroid/support/v7/internal/view/d;)Landroid/support/v7/internal/view/d;

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/a/d;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    .line 160
    return-void
.end method
