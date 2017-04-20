.class public Lpl/gatti/dgcam/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/hardware/Camera;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/gatti/dgcam/a;->f:Z

    .line 49
    invoke-static {}, Lcom/c/a/a/a;->a()I

    move-result v0

    iput v0, p0, Lpl/gatti/dgcam/a;->c:I

    .line 51
    iput-object p1, p0, Lpl/gatti/dgcam/a;->a:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/hardware/Camera;)I
    .locals 4

    .prologue
    .line 209
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 210
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 212
    invoke-static {p0}, Lpl/gatti/dgcam/ai;->a(Landroid/content/Context;)I

    move-result v1

    .line 214
    add-int/lit8 v1, v1, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    .line 216
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 217
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 222
    :goto_0
    return v0

    .line 219
    :cond_0
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lpl/gatti/dgcam/a;->b()V

    .line 59
    :cond_0
    :try_start_0
    iget v0, p0, Lpl/gatti/dgcam/a;->d:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lpl/gatti/dgcam/a;->c:I

    rem-int v0, p1, v0

    iput v0, p0, Lpl/gatti/dgcam/a;->d:I

    .line 78
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;II)V
    .locals 7

    .prologue
    const/16 v5, 0x190

    const/4 v0, 0x1

    .line 97
    iput p2, p0, Lpl/gatti/dgcam/a;->g:I

    .line 98
    iput p3, p0, Lpl/gatti/dgcam/a;->h:I

    .line 99
    iget-object v1, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    :try_start_0
    iget-object v1, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    .line 108
    :goto_1
    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    .line 114
    new-instance v2, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1, v5, v5}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 115
    iget-object v1, p0, Lpl/gatti/dgcam/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_3

    move v1, v0

    .line 117
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 118
    if-nez v1, :cond_4

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, v6, :cond_4

    :cond_2
    :goto_4
    move-object v2, v0

    .line 123
    goto :goto_3

    .line 105
    :catch_0
    move-exception v1

    .line 106
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_1

    .line 115
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 120
    :cond_4
    if-eqz v1, :cond_5

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-le v5, v6, :cond_2

    :cond_5
    move-object v0, v2

    goto :goto_4

    .line 124
    :cond_6
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    iget v1, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 125
    const/16 v0, 0x100

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 126
    const/16 v0, 0x55

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 127
    iget-object v0, p0, Lpl/gatti/dgcam/a;->a:Landroid/app/Activity;

    iget v1, p0, Lpl/gatti/dgcam/a;->d:I

    iget-object v2, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-static {v0, v1, v2}, Lpl/gatti/dgcam/a;->a(Landroid/app/Activity;ILandroid/hardware/Camera;)I

    move-result v0

    .line 128
    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 130
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 131
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 133
    iget-object v0, p0, Lpl/gatti/dgcam/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpl/gatti/dgcam/ai;->b(Landroid/content/Context;)I

    move-result v0

    .line 134
    iget v1, p0, Lpl/gatti/dgcam/a;->d:I

    iget-object v2, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-static {v1, v2, v0}, Lcom/c/a/a/a;->a(ILandroid/hardware/Camera;I)I

    move-result v0

    iput v0, p0, Lpl/gatti/dgcam/a;->e:I

    .line 136
    invoke-virtual {p0, p1}, Lpl/gatti/dgcam/a;->a(Landroid/view/SurfaceHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lpl/gatti/dgcam/a;->d()V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/SurfaceHolder;)Z
    .locals 1

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    :try_start_0
    iget-object v1, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    .line 70
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lpl/gatti/dgcam/a;->e()V

    .line 82
    if-gez p1, :cond_0

    .line 83
    iget v0, p0, Lpl/gatti/dgcam/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lpl/gatti/dgcam/a;->c:I

    rem-int p1, v0, v1

    .line 85
    :cond_0
    iget v0, p0, Lpl/gatti/dgcam/a;->c:I

    rem-int v0, p1, v0

    iput v0, p0, Lpl/gatti/dgcam/a;->d:I

    .line 86
    invoke-virtual {p0}, Lpl/gatti/dgcam/a;->a()V

    .line 87
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lpl/gatti/dgcam/a;->d:I

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lpl/gatti/dgcam/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    iget v0, p0, Lpl/gatti/dgcam/a;->h:I

    if-lez v0, :cond_1

    .line 156
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 157
    iget v1, p0, Lpl/gatti/dgcam/a;->h:I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    if-eq v1, v2, :cond_1

    .line 158
    iget v1, p0, Lpl/gatti/dgcam/a;->g:I

    iget v2, p0, Lpl/gatti/dgcam/a;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 161
    :cond_1
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/gatti/dgcam/a;->f:Z

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lpl/gatti/dgcam/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/gatti/dgcam/a;->f:Z

    .line 168
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 170
    :cond_0
    return-void
.end method

.method public f()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lpl/gatti/dgcam/a;->b:Landroid/hardware/Camera;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lpl/gatti/dgcam/a;->d:I

    invoke-static {v0}, Lcom/c/a/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lpl/gatti/dgcam/a;->e:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lpl/gatti/dgcam/a;->e:I

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lpl/gatti/dgcam/a;->f:Z

    return v0
.end method
