.class Landroid/support/v4/widget/k$b;
.super Landroid/support/v4/widget/k$a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/widget/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 54
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/l;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 55
    return-void
.end method
