.class public Lcom/yf/lib/ui/views/birthday/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:F


# direct methods
.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 12
    sget v0, Lcom/yf/lib/ui/views/birthday/a;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/yf/lib/ui/views/birthday/a;->a:F

    .line 14
    :cond_0
    sget v0, Lcom/yf/lib/ui/views/birthday/a;->a:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
