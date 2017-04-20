.class public Landroid/support/v7/widget/c;
.super Landroid/widget/AutoCompleteTextView;
.source "ProGuard"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/internal/widget/ab;

.field private c:Landroid/support/v7/internal/widget/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/c;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-static {p1}, Landroid/support/v7/internal/widget/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-boolean v0, Landroid/support/v7/internal/widget/ab;->a:Z

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/c;->a:[I

    invoke-static {v0, p2, v1, p3, v3}, Landroid/support/v7/internal/widget/ac;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/ac;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ac;->c()Landroid/support/v7/internal/widget/ab;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/internal/widget/ab;

    .line 65
    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ac;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ac;->c()Landroid/support/v7/internal/widget/ab;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/internal/widget/ac;->f(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ab;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/c;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 71
    :cond_0
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ac;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ac;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/c;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ac;->b()V

    .line 76
    :cond_2
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    invoke-static {p0, v0}, Landroid/support/v7/internal/widget/ab;->a(Landroid/view/View;Landroid/support/v7/internal/widget/aa;)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 145
    invoke-direct {p0}, Landroid/support/v7/widget/c;->a()V

    .line 146
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aa;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aa;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/c;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/aa;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    iput-object p1, v0, Landroid/support/v7/internal/widget/aa;->a:Landroid/content/res/ColorStateList;

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/aa;->d:Z

    .line 98
    invoke-direct {p0}, Landroid/support/v7/widget/c;->a()V

    .line 99
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/aa;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    iput-object p1, v0, Landroid/support/v7/internal/widget/aa;->b:Landroid/graphics/PorterDuff$Mode;

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/c;->c:Landroid/support/v7/internal/widget/aa;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/aa;->c:Z

    .line 127
    invoke-direct {p0}, Landroid/support/v7/widget/c;->a()V

    .line 128
    return-void
.end method
