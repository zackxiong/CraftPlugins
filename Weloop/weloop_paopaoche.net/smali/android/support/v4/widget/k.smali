.class public Landroid/support/v4/widget/k;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/k$b;,
        Landroid/support/v4/widget/k$a;,
        Landroid/support/v4/widget/k$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/k$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 65
    new-instance v0, Landroid/support/v4/widget/k$b;

    invoke-direct {v0}, Landroid/support/v4/widget/k$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/k;->a:Landroid/support/v4/widget/k$c;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Landroid/support/v4/widget/k$a;

    invoke-direct {v0}, Landroid/support/v4/widget/k$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/k;->a:Landroid/support/v4/widget/k$c;

    goto :goto_0
.end method

.method public static a(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 6

    .prologue
    .line 93
    sget-object v0, Landroid/support/v4/widget/k;->a:Landroid/support/v4/widget/k$c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/k$c;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 94
    return-void
.end method
