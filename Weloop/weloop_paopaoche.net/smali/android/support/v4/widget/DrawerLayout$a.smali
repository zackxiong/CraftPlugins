.class final Landroid/support/v4/widget/DrawerLayout$a;
.super Landroid/support/v4/view/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/b;)V
    .locals 1

    .prologue
    .line 1948
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    .line 1950
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/b;->a(Landroid/view/View;)V

    .line 1956
    :cond_0
    return-void
.end method
