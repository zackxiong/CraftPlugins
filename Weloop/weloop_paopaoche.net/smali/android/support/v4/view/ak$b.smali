.class Landroid/support/v4/view/ak$b;
.super Landroid/support/v4/view/ak$a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0}, Landroid/support/v4/view/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 946
    invoke-static {p1}, Landroid/support/v4/view/am;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method