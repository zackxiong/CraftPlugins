.class public Lcom/yf/gattlib/slidingFragment/c;
.super Landroid/view/ViewGroup;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:Lcom/yf/gattlib/slidingFragment/a;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;

.field private h:Z

.field private i:I

.field private j:Z

.field private final k:Landroid/graphics/Paint;

.field private l:F

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:F

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/view/View;


# direct methods
.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 455
    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 456
    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 213
    if-le p1, v3, :cond_1

    move p1, v0

    .line 214
    :cond_0
    :goto_0
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 219
    :goto_1
    return v1

    .line 213
    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 216
    :cond_2
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    .line 217
    goto :goto_1

    :cond_3
    move v1, p1

    .line 219
    goto :goto_1
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 283
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 287
    :goto_0
    return v0

    .line 284
    :cond_1
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 287
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v0, :cond_1

    .line 257
    packed-switch p2, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_1
    return v0

    .line 259
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 261
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 263
    :cond_1
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 264
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 266
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 268
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 270
    :cond_2
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 271
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 273
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 275
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 271
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public a(Landroid/view/View;II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 224
    .line 225
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v2, :cond_3

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_0

    move v0, v1

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/yf/gattlib/slidingFragment/c;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/yf/gattlib/slidingFragment/c;->scrollTo(II)V

    .line 250
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 251
    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/c;->setVisibility(I)V

    .line 253
    return-void

    .line 229
    :cond_3
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_4

    move v0, v1

    .line 232
    :cond_4
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/yf/gattlib/slidingFragment/c;->l:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/yf/gattlib/slidingFragment/c;->scrollTo(II)V

    goto :goto_0

    .line 235
    :cond_5
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_7

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v3, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_8

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    if-nez p2, :cond_6

    move v0, v1

    .line 242
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_9

    .line 243
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/yf/gattlib/slidingFragment/c;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/yf/gattlib/slidingFragment/c;->scrollTo(II)V

    goto :goto_0

    :cond_7
    move v2, v0

    .line 236
    goto :goto_1

    :cond_8
    move v2, v0

    .line 238
    goto :goto_2

    .line 245
    :cond_9
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/yf/gattlib/slidingFragment/c;->l:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/yf/gattlib/slidingFragment/c;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->o:I

    if-gtz v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v0, :cond_2

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->o:I

    sub-int/2addr v0, v2

    .line 378
    :goto_1
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->m:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/yf/gattlib/slidingFragment/c;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 367
    :cond_2
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 369
    :cond_3
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 370
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 372
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->n:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/yf/gattlib/slidingFragment/c;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 374
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 376
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->o:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 383
    iget-boolean v1, p0, Lcom/yf/gattlib/slidingFragment/c;->j:Z

    if-nez v1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 385
    :cond_0
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/c;->p:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 386
    iget-object v3, p0, Lcom/yf/gattlib/slidingFragment/c;->k:Landroid/graphics/Paint;

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v1, :cond_1

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 402
    :goto_1
    int-to-float v1, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/yf/gattlib/slidingFragment/c;->k:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 392
    :cond_1
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 395
    :cond_2
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 398
    int-to-float v1, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/yf/gattlib/slidingFragment/c;->k:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public a(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 340
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v2, :cond_2

    .line 341
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 341
    goto :goto_0

    .line 342
    :cond_2
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-ne v2, v0, :cond_3

    .line 343
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 344
    :cond_3
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 347
    goto :goto_0
.end method

.method public a(Landroid/view/View;IF)Z
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->a:I

    packed-switch v0, :pswitch_data_0

    .line 325
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 321
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yf/gattlib/slidingFragment/c;->b(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 297
    :goto_0
    return v0

    .line 293
    :cond_0
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 295
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 297
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 410
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/c;->q:Z

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    sget v1, Lcom/yf/ui/R$id;->selected_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    const-string v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 417
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 418
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v1, :cond_3

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 420
    sub-int v0, v1, v0

    .line 421
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getHeight()I

    move-result v2

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 422
    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/c;->r:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/c;->getSelectorTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 432
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 424
    :cond_3
    iget v1, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 426
    add-int/2addr v0, v1

    .line 427
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 428
    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/c;->r:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/yf/gattlib/slidingFragment/c;->getSelectorTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public b(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 351
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v2, :cond_2

    .line 352
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 352
    goto :goto_0

    .line 353
    :cond_2
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-ne v2, v0, :cond_3

    .line 354
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 355
    :cond_3
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 358
    goto :goto_0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 303
    iget v4, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-nez v4, :cond_2

    .line 304
    if-lt p2, v2, :cond_1

    iget v3, p0, Lcom/yf/gattlib/slidingFragment/c;->e:I

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 304
    goto :goto_0

    .line 305
    :cond_2
    iget v4, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-ne v4, v0, :cond_4

    .line 306
    if-gt p2, v3, :cond_3

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->e:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 307
    :cond_4
    iget v4, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 308
    if-lt p2, v2, :cond_5

    iget v4, p0, Lcom/yf/gattlib/slidingFragment/c;->e:I

    add-int/2addr v2, v4

    if-le p2, v2, :cond_0

    :cond_5
    if-gt p2, v3, :cond_6

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->e:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 311
    goto :goto_0
.end method

.method public b(Landroid/view/View;IF)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_3

    .line 331
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    .line 336
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 331
    goto :goto_0

    .line 332
    :cond_3
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    if-ne v2, v3, :cond_5

    if-ne p2, v3, :cond_5

    .line 334
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 336
    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->g:Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->g:Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;

    iget-object v1, p0, Lcom/yf/gattlib/slidingFragment/c;->b:Lcom/yf/gattlib/slidingFragment/a;

    invoke-virtual {v1}, Lcom/yf/gattlib/slidingFragment/a;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;->a(Landroid/graphics/Canvas;F)V

    .line 126
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    return-object v0
.end method

.method public getMarginThreshold()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->e:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/yf/gattlib/slidingFragment/c;->l:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/c;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 134
    sub-int v0, p4, p2

    .line 135
    sub-int v1, p5, p3

    .line 136
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    iget v3, p0, Lcom/yf/gattlib/slidingFragment/c;->f:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 137
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    iget v3, p0, Lcom/yf/gattlib/slidingFragment/c;->f:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-static {v3, p1}, Lcom/yf/gattlib/slidingFragment/c;->getDefaultSize(II)I

    move-result v0

    .line 144
    invoke-static {v3, p2}, Lcom/yf/gattlib/slidingFragment/c;->getDefaultSize(II)I

    move-result v1

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/yf/gattlib/slidingFragment/c;->setMeasuredDimension(II)V

    .line 146
    iget v2, p0, Lcom/yf/gattlib/slidingFragment/c;->f:I

    sub-int/2addr v0, v2

    invoke-static {p1, v3, v0}, Lcom/yf/gattlib/slidingFragment/c;->getChildMeasureSpec(III)I

    move-result v0

    .line 148
    invoke-static {p2, v3, v1}, Lcom/yf/gattlib/slidingFragment/c;->getChildMeasureSpec(III)I

    move-result v1

    .line 150
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 151
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 153
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/yf/gattlib/slidingFragment/c;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 107
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->g:Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->invalidate()V

    .line 109
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/c;->g:Lcom/yf/gattlib/slidingFragment/SlidingMenu$a;

    .line 52
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/yf/gattlib/slidingFragment/c;->h:Z

    .line 102
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/c;->removeView(Landroid/view/View;)V

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/c;->addView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public setCustomViewAbove(Lcom/yf/gattlib/slidingFragment/a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/c;->b:Lcom/yf/gattlib/slidingFragment/a;

    .line 48
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2

    .prologue
    .line 206
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    iput p1, p0, Lcom/yf/gattlib/slidingFragment/c;->p:F

    .line 210
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/yf/gattlib/slidingFragment/c;->j:Z

    .line 203
    return-void
.end method

.method public setMarginThreshold(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/yf/gattlib/slidingFragment/c;->e:I

    .line 61
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 165
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_2
    iput p1, p0, Lcom/yf/gattlib/slidingFragment/c;->i:I

    .line 172
    return-void
.end method

.method public setScrollScale(F)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/yf/gattlib/slidingFragment/c;->l:F

    .line 180
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/c;->removeView(Landroid/view/View;)V

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/slidingFragment/c;->addView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/c;->n:Landroid/graphics/drawable/Drawable;

    .line 193
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->invalidate()V

    .line 194
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    sget v1, Lcom/yf/ui/R$id;->selected_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 444
    iput-object v2, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    .line 446
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 447
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    .line 448
    iget-object v0, p0, Lcom/yf/gattlib/slidingFragment/c;->s:Landroid/view/View;

    sget v1, Lcom/yf/ui/R$id;->selected_view:I

    const-string v2, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 449
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->invalidate()V

    .line 451
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/c;->r:Landroid/graphics/Bitmap;

    .line 461
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->refreshDrawableState()V

    .line 462
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/yf/gattlib/slidingFragment/c;->q:Z

    .line 439
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yf/gattlib/slidingFragment/c;->m:Landroid/graphics/drawable/Drawable;

    .line 188
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->invalidate()V

    .line 189
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/yf/gattlib/slidingFragment/c;->o:I

    .line 198
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->invalidate()V

    .line 199
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0

    .prologue
    .line 315
    iput p1, p0, Lcom/yf/gattlib/slidingFragment/c;->a:I

    .line 316
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/yf/gattlib/slidingFragment/c;->f:I

    .line 56
    invoke-virtual {p0}, Lcom/yf/gattlib/slidingFragment/c;->requestLayout()V

    .line 57
    return-void
.end method
