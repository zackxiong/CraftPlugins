.class Landroid/support/v7/internal/widget/s$c;
.super Landroid/support/v7/widget/m;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/s;

.field private final b:[I

.field private c:Landroid/support/v7/app/a$b;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/s;Landroid/content/Context;Landroid/support/v7/app/a$b;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 380
    iput-object p1, p0, Landroid/support/v7/internal/widget/s$c;->a:Landroid/support/v7/internal/widget/s;

    .line 381
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    invoke-direct {p0, p2, v3, v0}, Landroid/support/v7/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 371
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    iput-object v0, p0, Landroid/support/v7/internal/widget/s$c;->b:[I

    .line 382
    iput-object p3, p0, Landroid/support/v7/internal/widget/s$c;->c:Landroid/support/v7/app/a$b;

    .line 384
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->b:[I

    sget v1, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    invoke-static {p2, v3, v0, v1, v2}, Landroid/support/v7/internal/widget/ac;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/ac;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ac;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ac;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/s$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ac;->b()V

    .line 391
    if-eqz p4, :cond_1

    .line 392
    const v0, 0x800013

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s$c;->setGravity(I)V

    .line 395
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->a()V

    .line 396
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v6, 0x8

    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 441
    iget-object v2, p0, Landroid/support/v7/internal/widget/s$c;->c:Landroid/support/v7/app/a$b;

    .line 442
    invoke-virtual {v2}, Landroid/support/v7/app/a$b;->c()Landroid/view/View;

    move-result-object v3

    .line 443
    if-eqz v3, :cond_4

    .line 444
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 445
    if-eq v0, p0, :cond_1

    .line 446
    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 447
    :cond_0
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/s$c;->addView(Landroid/view/View;)V

    .line 449
    :cond_1
    iput-object v3, p0, Landroid/support/v7/internal/widget/s$c;->f:Landroid/view/View;

    .line 450
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    :cond_3
    :goto_0
    return-void

    .line 456
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 457
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s$c;->removeView(Landroid/view/View;)V

    .line 458
    iput-object v7, p0, Landroid/support/v7/internal/widget/s$c;->f:Landroid/view/View;

    .line 461
    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/app/a$b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 462
    invoke-virtual {v2}, Landroid/support/v7/app/a$b;->b()Ljava/lang/CharSequence;

    move-result-object v3

    .line 464
    if-eqz v0, :cond_b

    .line 465
    iget-object v4, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    if-nez v4, :cond_6

    .line 466
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 467
    new-instance v5, Landroid/support/v7/widget/m$a;

    invoke-direct {v5, v8, v8}, Landroid/support/v7/widget/m$a;-><init>(II)V

    .line 469
    iput v9, v5, Landroid/support/v7/widget/m$a;->h:I

    .line 470
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    invoke-virtual {p0, v4, v1}, Landroid/support/v7/internal/widget/s$c;->addView(Landroid/view/View;I)V

    .line 472
    iput-object v4, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    .line 474
    :cond_6
    iget-object v4, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    :cond_7
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 482
    :goto_2
    if-eqz v0, :cond_d

    .line 483
    iget-object v4, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    if-nez v4, :cond_8

    .line 484
    new-instance v4, Landroid/support/v7/widget/l;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v4, v5, v7, v6}, Landroid/support/v7/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 486
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 487
    new-instance v5, Landroid/support/v7/widget/m$a;

    invoke-direct {v5, v8, v8}, Landroid/support/v7/widget/m$a;-><init>(II)V

    .line 489
    iput v9, v5, Landroid/support/v7/widget/m$a;->h:I

    .line 490
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/s$c;->addView(Landroid/view/View;)V

    .line 492
    iput-object v4, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    .line 494
    :cond_8
    iget-object v4, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v3, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    :cond_9
    :goto_3
    iget-object v3, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 502
    iget-object v3, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/support/v7/app/a$b;->e()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    :cond_a
    if-nez v0, :cond_e

    invoke-virtual {v2}, Landroid/support/v7/app/a$b;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 506
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/widget/s$c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 476
    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 477
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    move v0, v1

    .line 481
    goto :goto_2

    .line 496
    :cond_d
    iget-object v3, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 497
    iget-object v3, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v3, p0, Landroid/support/v7/internal/widget/s$c;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 508
    :cond_e
    invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/s$c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 509
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/s$c;->setLongClickable(Z)V

    goto/16 :goto_0
.end method

.method public a(Landroid/support/v7/app/a$b;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Landroid/support/v7/internal/widget/s$c;->c:Landroid/support/v7/app/a$b;

    .line 400
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->a()V

    .line 401
    return-void
.end method

.method public b()Landroid/support/v7/app/a$b;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->c:Landroid/support/v7/app/a$b;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/support/v7/widget/m;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 416
    const-class v0, Landroid/support/v7/app/a$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/support/v7/widget/m;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 425
    const-class v0, Landroid/support/v7/app/a$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 427
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 515
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 516
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s$c;->getLocationOnScreen([I)V

    .line 518
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 519
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->getWidth()I

    move-result v2

    .line 520
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->getHeight()I

    move-result v3

    .line 521
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 523
    iget-object v5, p0, Landroid/support/v7/internal/widget/s$c;->c:Landroid/support/v7/app/a$b;

    invoke-virtual {v5}, Landroid/support/v7/app/a$b;->e()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 526
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 529
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 530
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/m;->onMeasure(II)V

    .line 434
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->a:Landroid/support/v7/internal/widget/s;

    iget v0, v0, Landroid/support/v7/internal/widget/s;->b:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/s$c;->a:Landroid/support/v7/internal/widget/s;

    iget v1, v1, Landroid/support/v7/internal/widget/s;->b:I

    if-le v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$c;->a:Landroid/support/v7/internal/widget/s;

    iget v0, v0, Landroid/support/v7/internal/widget/s;->b:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/m;->onMeasure(II)V

    .line 438
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/s$c;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 406
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/m;->setSelected(Z)V

    .line 407
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 408
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/s$c;->sendAccessibilityEvent(I)V

    .line 410
    :cond_0
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
