.class final Landroid/support/v4/view/bk;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/bn;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/bn;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v4/view/bk;->a:Landroid/support/v4/view/bn;

    iput-object p2, p0, Landroid/support/v4/view/bk;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v4/view/bk;->a:Landroid/support/v4/view/bn;

    iget-object v1, p0, Landroid/support/v4/view/bk;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/bn;->a(Landroid/view/View;)V

    .line 29
    return-void
.end method
