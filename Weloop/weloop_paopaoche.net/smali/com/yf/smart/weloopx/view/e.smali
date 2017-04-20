.class Lcom/yf/smart/weloopx/view/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/d;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/d;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget-object v3, v0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget v0, v0, Lcom/yf/smart/weloopx/view/d;->d:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/yf/smart/weloopx/view/a;->a:Z

    .line 258
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget v0, v0, Lcom/yf/smart/weloopx/view/d;->d:I

    if-lez v0, :cond_1

    move v0, v2

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget v3, v3, Lcom/yf/smart/weloopx/view/d;->d:I

    if-ge v0, v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget-object v4, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget-object v4, v4, Lcom/yf/smart/weloopx/view/d;->c:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/yf/smart/weloopx/view/d;->a(Lcom/yf/smart/weloopx/view/d;Landroid/media/FaceDetector$Face;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/d;->a(Lcom/yf/smart/weloopx/view/d;)V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/CropImageView;->invalidate()V

    .line 266
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 267
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget-object v3, v0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/view/a;->b(Lcom/yf/smart/weloopx/view/a;)Lcom/yf/smart/weloopx/view/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g;

    iput-object v0, v3, Lcom/yf/smart/weloopx/view/a;->c:Lcom/yf/smart/weloopx/view/g;

    .line 268
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/d;->e:Lcom/yf/smart/weloopx/view/a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/view/a;->c:Lcom/yf/smart/weloopx/view/g;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/view/g;->a(Z)V

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/e;->a:Lcom/yf/smart/weloopx/view/d;

    iget v0, v0, Lcom/yf/smart/weloopx/view/d;->d:I

    if-le v0, v1, :cond_4

    .line 273
    :cond_4
    return-void
.end method
