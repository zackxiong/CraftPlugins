.class public Landroid/support/v7/internal/widget/z;
.super Landroid/content/ContextWrapper;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/z$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    instance-of v0, p0, Landroid/support/v7/internal/widget/z;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/support/v7/internal/widget/z;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/z;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 36
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/support/v7/internal/widget/z$a;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Landroid/support/v7/internal/widget/ab;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/ab;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/z$a;-><init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/ab;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/content/res/Resources;

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/content/res/Resources;

    return-object v0
.end method
