.class Landroid/support/v7/widget/n$e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/n;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/n;)V
    .locals 0

    .prologue
    .line 1751
    iput-object p1, p0, Landroid/support/v7/widget/n$e;->a:Landroid/support/v7/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/n;Landroid/support/v7/widget/o;)V
    .locals 0

    .prologue
    .line 1751
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n$e;-><init>(Landroid/support/v7/widget/n;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1755
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1758
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n$e;->a:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n$e;->a:Landroid/support/v7/widget/n;

    invoke-static {v0}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/n;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Landroid/support/v7/widget/n$e;->a:Landroid/support/v7/widget/n;

    invoke-static {v0}, Landroid/support/v7/widget/n;->d(Landroid/support/v7/widget/n;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/n$e;->a:Landroid/support/v7/widget/n;

    invoke-static {v1}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/n;)Landroid/support/v7/widget/n$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1761
    iget-object v0, p0, Landroid/support/v7/widget/n$e;->a:Landroid/support/v7/widget/n;

    invoke-static {v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/n;)Landroid/support/v7/widget/n$g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/n$g;->run()V

    .line 1763
    :cond_0
    return-void
.end method
