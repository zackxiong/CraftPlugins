.class public Lcom/dd/processbutton/a;
.super Landroid/widget/Button;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dd/processbutton/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/dd/processbutton/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/dd/processbutton/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/dd/processbutton/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/processbutton/a;->b:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p0}, Lcom/dd/processbutton/a;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/processbutton/a;->a:Ljava/lang/CharSequence;

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public getNormalDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dd/processbutton/a;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNormalText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dd/processbutton/a;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/dd/processbutton/a;->getPaddingLeft()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/dd/processbutton/a;->getPaddingTop()I

    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/dd/processbutton/a;->getPaddingRight()I

    move-result v2

    .line 70
    invoke-virtual {p0}, Lcom/dd/processbutton/a;->getPaddingBottom()I

    move-result v3

    .line 72
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/dd/processbutton/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :goto_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dd/processbutton/a;->setPadding(IIII)V

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dd/processbutton/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
