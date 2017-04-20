.class Landroid/support/v7/internal/widget/z$a;
.super Landroid/support/v7/internal/widget/q;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/internal/widget/ab;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/ab;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/q;-><init>(Landroid/content/res/Resources;)V

    .line 62
    iput-object p2, p0, Landroid/support/v7/internal/widget/z$a;->a:Landroid/support/v7/internal/widget/ab;

    .line 63
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/q;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Landroid/support/v7/internal/widget/z$a;->a:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/internal/widget/ab;->a(ILandroid/graphics/drawable/Drawable;)Z

    .line 76
    :cond_0
    return-object v0
.end method
