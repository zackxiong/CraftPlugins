.class Landroid/support/v4/view/ak$g;
.super Landroid/support/v4/view/ak$f;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1278
    invoke-direct {p0}, Landroid/support/v4/view/ak$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1292
    invoke-static {p1, p2}, Landroid/support/v4/view/ar;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1293
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1297
    invoke-static {p1}, Landroid/support/v4/view/ar;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1322
    invoke-static {p1}, Landroid/support/v4/view/ar;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method
