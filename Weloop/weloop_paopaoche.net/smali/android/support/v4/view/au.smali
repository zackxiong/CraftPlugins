.class final Landroid/support/v4/view/au;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/af;


# direct methods
.method constructor <init>(Landroid/support/v4/view/af;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Landroid/support/v4/view/au;->a:Landroid/support/v4/view/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/support/v4/view/bp;

    invoke-direct {v0, p2}, Landroid/support/v4/view/bp;-><init>(Landroid/view/WindowInsets;)V

    .line 62
    iget-object v1, p0, Landroid/support/v4/view/au;->a:Landroid/support/v4/view/af;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/af;->a(Landroid/view/View;Landroid/support/v4/view/bo;)Landroid/support/v4/view/bo;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bp;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/view/bp;->e()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
