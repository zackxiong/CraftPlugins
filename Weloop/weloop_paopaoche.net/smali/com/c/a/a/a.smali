.class public Lcom/c/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public static a(ILandroid/hardware/Camera;I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 69
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 70
    invoke-static {p0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 72
    packed-switch p2, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 89
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 90
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 95
    :goto_1
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 98
    :cond_0
    return v0

    .line 77
    :pswitch_1
    const/16 v0, 0x5a

    .line 78
    goto :goto_0

    .line 80
    :pswitch_2
    const/16 v0, 0xb4

    .line 81
    goto :goto_0

    .line 83
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 92
    :cond_1
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 54
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 55
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
