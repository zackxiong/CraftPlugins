.class public abstract Lcom/dd/processbutton/ProcessButton;
.super Lcom/dd/processbutton/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dd/processbutton/ProcessButton$1;,
        Lcom/dd/processbutton/ProcessButton$SavedState;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dd/processbutton/a;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dd/processbutton/ProcessButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/dd/processbutton/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/dd/processbutton/ProcessButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/dd/processbutton/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/dd/processbutton/ProcessButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/processbutton/ProcessButton;->c:I

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/dd/processbutton/ProcessButton;->b:I

    .line 48
    if-eqz p2, :cond_0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/dd/processbutton/ProcessButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/yf/ui/R$styleable;->ProcessButton:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/dd/processbutton/ProcessButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 56
    if-nez v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    sget v0, Lcom/yf/ui/R$styleable;->ProcessButton_pb_textProgress:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/processbutton/ProcessButton;->g:Ljava/lang/CharSequence;

    .line 62
    sget v0, Lcom/yf/ui/R$styleable;->ProcessButton_pb_textComplete:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/processbutton/ProcessButton;->h:Ljava/lang/CharSequence;

    .line 63
    sget v0, Lcom/yf/ui/R$styleable;->ProcessButton_pb_textError:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/processbutton/ProcessButton;->i:Ljava/lang/CharSequence;

    .line 65
    sget v0, Lcom/yf/ui/R$styleable;->ProcessButton_pb_progressDrawable:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/processbutton/ProcessButton;->d:Landroid/graphics/drawable/Drawable;

    .line 66
    sget v0, Lcom/yf/ui/R$styleable;->ProcessButton_pb_completeDrawable:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/processbutton/ProcessButton;->e:Landroid/graphics/drawable/Drawable;

    .line 67
    sget v0, Lcom/yf/ui/R$styleable;->ProcessButton_pb_errorDrawable:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dd/processbutton/ProcessButton;->f:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;)V
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getLoadingText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getLoadingText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getNormalDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getCompleteText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getCompleteText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getCompleteDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getNormalText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getNormalText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->getNormalDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void
.end method

.method public getCompleteDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dd/processbutton/ProcessButton;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCompleteText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dd/processbutton/ProcessButton;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dd/processbutton/ProcessButton;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dd/processbutton/ProcessButton;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLoadingText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dd/processbutton/ProcessButton;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->b:I

    return v0
.end method

.method public getMinProgress()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->c:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dd/processbutton/ProcessButton;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    iget v1, p0, Lcom/dd/processbutton/ProcessButton;->c:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    iget v1, p0, Lcom/dd/processbutton/ProcessButton;->b:I

    if-ge v0, v1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/dd/processbutton/ProcessButton;->a(Landroid/graphics/Canvas;)V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/dd/processbutton/a;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 201
    instance-of v0, p1, Lcom/dd/processbutton/ProcessButton$SavedState;

    if-eqz v0, :cond_0

    .line 202
    check-cast p1, Lcom/dd/processbutton/ProcessButton$SavedState;

    .line 203
    invoke-static {p1}, Lcom/dd/processbutton/ProcessButton$SavedState;->a(Lcom/dd/processbutton/ProcessButton$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    .line 204
    invoke-virtual {p1}, Lcom/dd/processbutton/ProcessButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/dd/processbutton/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 205
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    invoke-virtual {p0, v0}, Lcom/dd/processbutton/ProcessButton;->setProgress(I)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-super {p0, p1}, Lcom/dd/processbutton/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/dd/processbutton/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/dd/processbutton/ProcessButton$SavedState;

    invoke-direct {v1, v0}, Lcom/dd/processbutton/ProcessButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 194
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    invoke-static {v1, v0}, Lcom/dd/processbutton/ProcessButton$SavedState;->a(Lcom/dd/processbutton/ProcessButton$SavedState;I)I

    .line 196
    return-object v1
.end method

.method public setCompleteDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dd/processbutton/ProcessButton;->e:Landroid/graphics/drawable/Drawable;

    .line 164
    return-void
.end method

.method public setCompleteText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dd/processbutton/ProcessButton;->h:Ljava/lang/CharSequence;

    .line 172
    return-void
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dd/processbutton/ProcessButton;->f:Landroid/graphics/drawable/Drawable;

    .line 180
    return-void
.end method

.method public setErrorText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/dd/processbutton/ProcessButton;->i:Ljava/lang/CharSequence;

    .line 188
    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/dd/processbutton/ProcessButton;->g:Ljava/lang/CharSequence;

    .line 168
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .prologue
    .line 75
    iput p1, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    .line 77
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    iget v1, p0, Lcom/dd/processbutton/ProcessButton;->c:I

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->d()V

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->invalidate()V

    .line 88
    return-void

    .line 79
    :cond_0
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    iget v1, p0, Lcom/dd/processbutton/ProcessButton;->b:I

    if-ne v0, v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->c()V

    goto :goto_0

    .line 81
    :cond_1
    iget v0, p0, Lcom/dd/processbutton/ProcessButton;->a:I

    iget v1, p0, Lcom/dd/processbutton/ProcessButton;->c:I

    if-ge v0, v1, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->a()V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/dd/processbutton/ProcessButton;->b()V

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/dd/processbutton/ProcessButton;->d:Landroid/graphics/drawable/Drawable;

    .line 160
    return-void
.end method
