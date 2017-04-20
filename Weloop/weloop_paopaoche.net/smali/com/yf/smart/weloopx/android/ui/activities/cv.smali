.class Lcom/yf/smart/weloopx/android/ui/activities/cv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 294
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->u(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)I

    .line 296
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v2, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;J)J

    .line 314
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v2, v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;J)J

    .line 300
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->v(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->w(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)I

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0, v6}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)I

    .line 304
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const v1, 0x7f0d00cb

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->x(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 307
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cv;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->x(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 310
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
