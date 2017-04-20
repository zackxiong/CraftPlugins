.class public Lcom/yf/lib/ui/views/wheel/f;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/lib/ui/views/wheel/f$a;,
        Lcom/yf/lib/ui/views/wheel/f$b;
    }
.end annotation


# instance fields
.field private a:Lcom/yf/lib/ui/views/wheel/f$b;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/GestureDetector;

.field private d:Landroid/widget/Scroller;

.field private e:I

.field private f:F

.field private g:Z

.field private h:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final i:I

.field private final j:I

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yf/lib/ui/views/wheel/f$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/yf/lib/ui/views/wheel/g;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/wheel/g;-><init>(Lcom/yf/lib/ui/views/wheel/f;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->h:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 179
    iput v2, p0, Lcom/yf/lib/ui/views/wheel/f;->i:I

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/f;->j:I

    .line 201
    new-instance v0, Lcom/yf/lib/ui/views/wheel/f$a;

    invoke-direct {v0, p0}, Lcom/yf/lib/ui/views/wheel/f$a;-><init>(Lcom/yf/lib/ui/views/wheel/f;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->k:Landroid/os/Handler;

    .line 88
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/f;->h:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->c:Landroid/view/GestureDetector;

    .line 89
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 91
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->d:Landroid/widget/Scroller;

    .line 93
    iput-object p2, p0, Lcom/yf/lib/ui/views/wheel/f;->a:Lcom/yf/lib/ui/views/wheel/f$b;

    .line 94
    iput-object p1, p0, Lcom/yf/lib/ui/views/wheel/f;->b:Landroid/content/Context;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/yf/lib/ui/views/wheel/f;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/yf/lib/ui/views/wheel/f;->e:I

    return v0
.end method

.method static synthetic a(Lcom/yf/lib/ui/views/wheel/f;I)I
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/yf/lib/ui/views/wheel/f;->e:I

    return p1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/f;->c()V

    .line 189
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    return-void
.end method

.method static synthetic b(Lcom/yf/lib/ui/views/wheel/f;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->d:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic b(Lcom/yf/lib/ui/views/wheel/f;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/yf/lib/ui/views/wheel/f;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/yf/lib/ui/views/wheel/f;)Lcom/yf/lib/ui/views/wheel/f$b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->a:Lcom/yf/lib/ui/views/wheel/f$b;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    return-void
.end method

.method static synthetic d(Lcom/yf/lib/ui/views/wheel/f;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->a:Lcom/yf/lib/ui/views/wheel/f$b;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/f$b;->c()V

    .line 245
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yf/lib/ui/views/wheel/f;->a(I)V

    .line 246
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/f;->g:Z

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/f;->g:Z

    .line 254
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->a:Lcom/yf/lib/ui/views/wheel/f$b;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/f$b;->a()V

    .line 256
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/yf/lib/ui/views/wheel/f;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/f;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->d:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 127
    return-void
.end method

.method public a(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->d:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 114
    iput v1, p0, Lcom/yf/lib/ui/views/wheel/f;->e:I

    .line 116
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->d:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v5, p2

    :goto_0
    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 117
    invoke-direct {p0, v1}, Lcom/yf/lib/ui/views/wheel/f;->a(I)V

    .line 119
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/f;->e()V

    .line 120
    return-void

    .line 116
    :cond_0
    const/16 v5, 0x190

    goto :goto_0
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->d:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 103
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->d:Landroid/widget/Scroller;

    .line 104
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/f;->d()V

    .line 157
    :cond_1
    return v2

    .line 137
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/f;->f:F

    .line 138
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->d:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 139
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/f;->c()V

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/yf/lib/ui/views/wheel/f;->f:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/yf/lib/ui/views/wheel/f;->e()V

    .line 147
    iget-object v1, p0, Lcom/yf/lib/ui/views/wheel/f;->a:Lcom/yf/lib/ui/views/wheel/f$b;

    invoke-interface {v1, v0}, Lcom/yf/lib/ui/views/wheel/f$b;->a(I)V

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yf/lib/ui/views/wheel/f;->f:F

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method b()V
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/f;->g:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/yf/lib/ui/views/wheel/f;->a:Lcom/yf/lib/ui/views/wheel/f$b;

    invoke-interface {v0}, Lcom/yf/lib/ui/views/wheel/f$b;->b()V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/lib/ui/views/wheel/f;->g:Z

    .line 266
    :cond_0
    return-void
.end method
