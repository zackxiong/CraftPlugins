.class final Lcom/handmark/pulltorefresh/library/e$i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/handmark/pulltorefresh/library/e;

.field private final b:Landroid/view/animation/Interpolator;

.field private final c:I

.field private final d:I

.field private final e:J

.field private f:Lcom/handmark/pulltorefresh/library/e$g;

.field private g:Z

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/e;IIJLcom/handmark/pulltorefresh/library/e$g;)V
    .locals 2

    .prologue
    .line 1681
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/e$i;->a:Lcom/handmark/pulltorefresh/library/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->g:Z

    .line 1677
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->h:J

    .line 1678
    const/4 v0, -0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->i:I

    .line 1682
    iput p2, p0, Lcom/handmark/pulltorefresh/library/e$i;->d:I

    .line 1683
    iput p3, p0, Lcom/handmark/pulltorefresh/library/e$i;->c:I

    .line 1684
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/e;->b(Lcom/handmark/pulltorefresh/library/e;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->b:Landroid/view/animation/Interpolator;

    .line 1685
    iput-wide p4, p0, Lcom/handmark/pulltorefresh/library/e$i;->e:J

    .line 1686
    iput-object p6, p0, Lcom/handmark/pulltorefresh/library/e$i;->f:Lcom/handmark/pulltorefresh/library/e$g;

    .line 1687
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->g:Z

    .line 1728
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->a:Lcom/handmark/pulltorefresh/library/e;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/e;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1729
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1696
    iget-wide v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->h:J

    .line 1717
    :goto_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->g:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->c:I

    iget v1, p0, Lcom/handmark/pulltorefresh/library/e$i;->i:I

    if-eq v0, v1, :cond_2

    .line 1718
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->a:Lcom/handmark/pulltorefresh/library/e;

    invoke-static {v0, p0}, Lcom/handmark/pulltorefresh/library/a/g;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1724
    :cond_0
    :goto_1
    return-void

    .line 1705
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/handmark/pulltorefresh/library/e$i;->h:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/handmark/pulltorefresh/library/e$i;->e:J

    div-long/2addr v0, v2

    .line 1707
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1709
    iget v2, p0, Lcom/handmark/pulltorefresh/library/e$i;->d:I

    iget v3, p0, Lcom/handmark/pulltorefresh/library/e$i;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/e$i;->b:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1712
    iget v1, p0, Lcom/handmark/pulltorefresh/library/e$i;->d:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->i:I

    .line 1713
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->a:Lcom/handmark/pulltorefresh/library/e;

    iget v1, p0, Lcom/handmark/pulltorefresh/library/e$i;->i:I

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/e;->setHeaderScroll(I)V

    goto :goto_0

    .line 1720
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->f:Lcom/handmark/pulltorefresh/library/e$g;

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/e$i;->f:Lcom/handmark/pulltorefresh/library/e$g;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/e$g;->a()V

    goto :goto_1
.end method
