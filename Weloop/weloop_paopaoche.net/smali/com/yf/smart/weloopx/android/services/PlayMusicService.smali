.class public Lcom/yf/smart/weloopx/android/services/PlayMusicService;
.super Landroid/app/Service;
.source "ProGuard"


# instance fields
.field private a:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()Landroid/media/MediaPlayer;
    .locals 7

    .prologue
    .line 42
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 49
    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 51
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 52
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 61
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    .line 63
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 70
    :cond_1
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 23
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->b()Z

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 86
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 77
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 80
    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/PlayMusicService;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
