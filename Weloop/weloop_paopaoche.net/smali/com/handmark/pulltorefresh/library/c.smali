.class public final Lcom/handmark/pulltorefresh/library/c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handmark/pulltorefresh/library/c$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/handmark/pulltorefresh/library/e;IIIIIIFZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e",
            "<*>;IIIIIIFZ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 107
    sget-object v0, Lcom/handmark/pulltorefresh/library/c$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/e$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/e$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getScrollY()I

    move-result v0

    move v1, v0

    move v2, p3

    move v0, p4

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->i()Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getMode()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/e$b;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez p8, :cond_6

    if-eqz v2, :cond_6

    .line 129
    add-int/2addr v0, v2

    .line 132
    const-string v2, "OverscrollHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OverScroll. DeltaX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ScrollX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", DeltaY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ScrollY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NewY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ScrollRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CurrentScroll: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    rsub-int/lit8 v2, p6, 0x0

    if-ge v0, v2, :cond_2

    .line 140
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/e$b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    if-nez v1, :cond_0

    .line 144
    sget-object v2, Lcom/handmark/pulltorefresh/library/e$j;->f:Lcom/handmark/pulltorefresh/library/e$j;

    new-array v3, v6, [Z

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    .line 147
    :cond_0
    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p7

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->setHeaderScroll(I)V

    .line 173
    :cond_1
    :goto_1
    return-void

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getScrollX()I

    move-result v0

    move v1, v0

    move v2, p1

    move v0, p2

    .line 112
    goto/16 :goto_0

    .line 149
    :cond_2
    add-int v2, p5, p6

    if-le v0, v2, :cond_4

    .line 152
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/e$b;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    if-nez v1, :cond_3

    .line 156
    sget-object v2, Lcom/handmark/pulltorefresh/library/e$j;->f:Lcom/handmark/pulltorefresh/library/e$j;

    new-array v3, v6, [Z

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    .line 159
    :cond_3
    add-int/2addr v0, v1

    sub-int/2addr v0, p5

    int-to-float v0, v0

    mul-float/2addr v0, p7

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/e;->setHeaderScroll(I)V

    goto :goto_1

    .line 161
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, p6, :cond_5

    sub-int/2addr v0, p5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p6, :cond_1

    .line 164
    :cond_5
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    goto :goto_1

    .line 166
    :cond_6
    if-eqz p8, :cond_1

    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->f:Lcom/handmark/pulltorefresh/library/e$j;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e;->getState()Lcom/handmark/pulltorefresh/library/e$j;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 170
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/e;->a(Lcom/handmark/pulltorefresh/library/e$j;[Z)V

    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/handmark/pulltorefresh/library/e;IIIIIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e",
            "<*>;IIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/handmark/pulltorefresh/library/c;->a(Lcom/handmark/pulltorefresh/library/e;IIIIIIFZ)V

    .line 78
    return-void
.end method

.method public static a(Lcom/handmark/pulltorefresh/library/e;IIIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/e",
            "<*>;IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/c;->a(Lcom/handmark/pulltorefresh/library/e;IIIIIZ)V

    .line 54
    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
