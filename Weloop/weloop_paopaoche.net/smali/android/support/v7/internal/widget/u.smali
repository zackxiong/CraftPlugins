.class Landroid/support/v7/internal/widget/u;
.super Landroid/support/v7/widget/n$b;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat$c;

.field final synthetic b:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/SpinnerCompat$c;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    iput-object p3, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/SpinnerCompat$c;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/n$b;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/n;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/SpinnerCompat$c;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/SpinnerCompat$d;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/SpinnerCompat$d;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$d;->c()V

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
