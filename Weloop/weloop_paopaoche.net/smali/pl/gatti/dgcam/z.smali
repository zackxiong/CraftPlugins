.class public Lpl/gatti/dgcam/z;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Landroid/hardware/Camera$AutoFocusCallback;

.field private b:Landroid/media/MediaRecorder;

.field private c:Z

.field private d:Landroid/app/Activity;

.field private e:Lpl/gatti/dgcam/a;

.field private f:Ljava/io/File;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Intent;

.field private i:Lpl/gatti/dgcam/y;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lpl/gatti/dgcam/a;)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lpl/gatti/dgcam/aa;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/aa;-><init>(Lpl/gatti/dgcam/z;)V

    iput-object v0, p0, Lpl/gatti/dgcam/z;->a:Landroid/hardware/Camera$AutoFocusCallback;

    .line 33
    iput-object p1, p0, Lpl/gatti/dgcam/z;->d:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lpl/gatti/dgcam/z;->e:Lpl/gatti/dgcam/a;

    .line 35
    new-instance v0, Lpl/gatti/dgcam/y;

    invoke-direct {v0}, Lpl/gatti/dgcam/y;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/z;->i:Lpl/gatti/dgcam/y;

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/z;->f:Ljava/io/File;

    .line 37
    iget-object v0, p0, Lpl/gatti/dgcam/z;->i:Lpl/gatti/dgcam/y;

    invoke-virtual {v0}, Lpl/gatti/dgcam/y;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/z;->g:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lpl/gatti/dgcam/z;->f:Ljava/io/File;

    iget-object v2, p0, Lpl/gatti/dgcam/z;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic a(Lpl/gatti/dgcam/z;)Ljava/io/File;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lpl/gatti/dgcam/z;->f:Ljava/io/File;

    return-object v0
.end method

.method private a(Landroid/hardware/Camera;Ljava/lang/String;Landroid/hardware/Camera$Size;I)Z
    .locals 4

    .prologue
    .line 101
    :try_start_0
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 2.1"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lpl/gatti/dgcam/z;->e:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 105
    const-string v1, "RecordVideoManager"

    const-string v2, "start record 2.2"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/hardware/Camera;->unlock()V

    .line 107
    const-string v1, "RecordVideoManager"

    const-string v2, "start record 2.3"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 109
    const-string v1, "RecordVideoManager"

    const-string v2, "start record 2.4"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 111
    iget-object v1, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 112
    iget-object v1, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 113
    const-string v1, "RecordVideoManager"

    const-string v2, "start record 2.5"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 115
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 2.6"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 118
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 2.7"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 120
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 2.8"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/gatti/dgcam/z;->c:Z

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lpl/gatti/dgcam/z;->h:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 2.10"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Lpl/gatti/dgcam/z;->c:Z

    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "RecordVideoManager"

    const-string v2, "start record 2.9"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lpl/gatti/dgcam/z;Landroid/hardware/Camera;Ljava/lang/String;Landroid/hardware/Camera$Size;I)Z
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lpl/gatti/dgcam/z;->a(Landroid/hardware/Camera;Ljava/lang/String;Landroid/hardware/Camera$Size;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lpl/gatti/dgcam/z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lpl/gatti/dgcam/z;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lpl/gatti/dgcam/z;)Lpl/gatti/dgcam/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lpl/gatti/dgcam/z;->e:Lpl/gatti/dgcam/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 0.1"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    .line 47
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 0.2"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lpl/gatti/dgcam/z;->e:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->f()Landroid/hardware/Camera;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 50
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 52
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    const-string v1, "RecordVideoManager"

    const-string v2, "start record 0.3"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lpl/gatti/dgcam/z;->a:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 58
    const-string v0, "RecordVideoManager"

    const-string v1, "start record 0.4"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/gatti/dgcam/z;->c:Z

    .line 77
    iget-boolean v0, p0, Lpl/gatti/dgcam/z;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 79
    iget-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 81
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/gatti/dgcam/z;->c:Z

    .line 85
    iget-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 90
    iput-object v2, p0, Lpl/gatti/dgcam/z;->b:Landroid/media/MediaRecorder;

    .line 92
    iget-object v0, p0, Lpl/gatti/dgcam/z;->h:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lpl/gatti/dgcam/z;->d:Landroid/app/Activity;

    iget-object v1, p0, Lpl/gatti/dgcam/z;->h:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    iput-object v2, p0, Lpl/gatti/dgcam/z;->h:Landroid/content/Intent;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lpl/gatti/dgcam/z;->c:Z

    return v0
.end method
