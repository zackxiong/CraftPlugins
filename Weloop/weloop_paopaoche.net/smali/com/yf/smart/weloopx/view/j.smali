.class Lcom/yf/smart/weloopx/view/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/yf/smart/weloopx/view/h;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/h;FJFFFF)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/j;->g:Lcom/yf/smart/weloopx/view/h;

    iput p2, p0, Lcom/yf/smart/weloopx/view/j;->a:F

    iput-wide p3, p0, Lcom/yf/smart/weloopx/view/j;->b:J

    iput p5, p0, Lcom/yf/smart/weloopx/view/j;->c:F

    iput p6, p0, Lcom/yf/smart/weloopx/view/j;->d:F

    iput p7, p0, Lcom/yf/smart/weloopx/view/j;->e:F

    iput p8, p0, Lcom/yf/smart/weloopx/view/j;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 327
    iget v2, p0, Lcom/yf/smart/weloopx/view/j;->a:F

    iget-wide v4, p0, Lcom/yf/smart/weloopx/view/j;->b:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 328
    iget v1, p0, Lcom/yf/smart/weloopx/view/j;->c:F

    iget v2, p0, Lcom/yf/smart/weloopx/view/j;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 329
    iget-object v2, p0, Lcom/yf/smart/weloopx/view/j;->g:Lcom/yf/smart/weloopx/view/h;

    iget v3, p0, Lcom/yf/smart/weloopx/view/j;->e:F

    iget v4, p0, Lcom/yf/smart/weloopx/view/j;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/yf/smart/weloopx/view/h;->a(FFF)V

    .line 331
    iget v1, p0, Lcom/yf/smart/weloopx/view/j;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/j;->g:Lcom/yf/smart/weloopx/view/h;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/h;->m:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    :cond_0
    return-void
.end method
