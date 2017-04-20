.class Landroid/support/v4/view/ak$h;
.super Landroid/support/v4/view/ak$g;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1331
    invoke-direct {p0}, Landroid/support/v4/view/ak$g;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1344
    invoke-static {p1, p2}, Landroid/support/v4/view/aq;->a(Landroid/view/View;I)V

    .line 1345
    return-void
.end method

.method public p(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1349
    invoke-static {p1}, Landroid/support/v4/view/as;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
