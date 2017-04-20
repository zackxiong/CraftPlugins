.class public Lcom/dd/processbutton/iml/SubmitProcessButton;
.super Lcom/dd/processbutton/ProcessButton;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dd/processbutton/ProcessButton;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/dd/processbutton/ProcessButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/dd/processbutton/ProcessButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/dd/processbutton/iml/SubmitProcessButton;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/dd/processbutton/iml/SubmitProcessButton;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dd/processbutton/iml/SubmitProcessButton;->getMaxProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 55
    invoke-virtual {p0}, Lcom/dd/processbutton/iml/SubmitProcessButton;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 57
    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/dd/processbutton/iml/SubmitProcessButton;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
