.class public final Lcom/yf/gattlib/h/h;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lcom/yf/gattlib/h/g;

.field private e:Landroid/media/AudioManager;

.field private f:Ljava/lang/Runnable;

.field private g:Lcom/yf/gattlib/h/f;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/yf/gattlib/h/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/h/h;->a:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v4, p0, Lcom/yf/gattlib/h/h;->b:Z

    .line 31
    iput-boolean v4, p0, Lcom/yf/gattlib/h/h;->c:Z

    .line 35
    new-instance v0, Lcom/yf/gattlib/h/f;

    invoke-direct {v0}, Lcom/yf/gattlib/h/f;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/h/h;->g:Lcom/yf/gattlib/h/f;

    .line 75
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.android.music"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.music.metachanged"

    aput-object v3, v2, v4

    const-string v3, "com.android.music.playstatechanged"

    aput-object v3, v2, v5

    const-string v3, "com.android.music.playbackcomplete"

    aput-object v3, v2, v6

    const-string v3, "com.android.music.queuechanged"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.lenovo.music"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.lenovo.music.metachanged"

    aput-object v3, v2, v4

    const-string v3, "com.lenovo.music.playstatechanged"

    aput-object v3, v2, v5

    const-string v3, "com.lenovo.music.playbackcomplete"

    aput-object v3, v2, v6

    const-string v3, "com.lenovo.music.queuechanged"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.htc.music"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.htc.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "fm.last.android"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "fm.last.android.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.sec.android.app.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.nullsoft.winamp"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.nullsoft.winamp.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.amazon.mp3"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.amazon.mp3.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.miui.player"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.miui.player.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.real"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.real.IMP.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.sonyericsson.music"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.sonyericsson.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.rdio.android"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.rdio.android.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.samsung.sec.android"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.samsung.sec.android.MusicPlayer.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.andrew.apollo"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.andrew.apollo.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.kugou.android"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.kugou.android.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.ting.mp3.android"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.ting.mp3.playinfo_changed"

    aput-object v3, v2, v4

    const-string v3, "com.ting.mp3.playing_state_changed"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.ting.mp3.oemc.android"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.ting.mp3.playinfo_changed"

    aput-object v3, v2, v4

    const-string v3, "com.ting.mp3.playing_state_changed"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.baidu.music.pad"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.ting.mp3.playinfo_changed"

    aput-object v3, v2, v4

    const-string v3, "com.ting.mp3.playing_state_changed"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.android.music.metachanged"

    aput-object v3, v2, v4

    const-string v3, "com.tencent.qqmusic.ACTION_META_CHANGED.QQMusicPhone"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.google.android.music"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.android.musicfx"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.vivo.dream.music"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.android.bbkmusic"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.duomi.android"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "fm.xiami.main"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.oppo.music"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.oppo.music.service.meta_changed"

    aput-object v3, v2, v4

    const-string v3, "com.oppo.music.service.playstate_changed"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.oppo.music"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.yf.gattlib.oppo.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.lge.music"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.lge.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.duomi.android.sony"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.yf.gattlib.oppo.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.duomi.android"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.yf.gattlib.oppo.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.spotify.music"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.yf.gattlib.oppo.music.metachanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    const-string v1, "com.android.mediacenter"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "com.android.mediacenter.playstatechanged"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Lcom/yf/gattlib/h/i;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/h/i;-><init>(Lcom/yf/gattlib/h/h;)V

    iput-object v0, p0, Lcom/yf/gattlib/h/h;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/h/h;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/h/h;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yf/gattlib/h/h;->f:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Lcom/yf/gattlib/h/g;)V
    .locals 2

    .prologue
    .line 199
    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/yf/gattlib/h/h;->b()Z
    :try_end_0
    .catch Lcom/yf/gattlib/e/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/yf/gattlib/h/h;->d:Lcom/yf/gattlib/h/g;

    invoke-virtual {p1, v1}, Lcom/yf/gattlib/h/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/yf/gattlib/h/h;->c:Z

    if-ne v0, v1, :cond_0

    .line 213
    :goto_1
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    const/4 v0, 0x0

    .line 204
    invoke-virtual {v1}, Lcom/yf/gattlib/e/i;->printStackTrace()V

    goto :goto_0

    .line 209
    :cond_0
    iput-boolean v0, p0, Lcom/yf/gattlib/h/h;->c:Z

    .line 210
    iput-object p1, p0, Lcom/yf/gattlib/h/h;->d:Lcom/yf/gattlib/h/g;

    .line 211
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->g:Lcom/yf/gattlib/h/f;

    iget-object v1, p0, Lcom/yf/gattlib/h/h;->d:Lcom/yf/gattlib/h/g;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/h/f;->a(Lcom/yf/gattlib/h/g;)V

    .line 212
    new-instance v0, Lcom/yf/gattlib/client/b/ax;

    invoke-direct {v0}, Lcom/yf/gattlib/client/b/ax;-><init>()V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/ax;->f()Lcom/yf/gattlib/client/b/e;

    goto :goto_1
.end method

.method static synthetic a(Lcom/yf/gattlib/h/h;Lcom/yf/gattlib/h/g;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yf/gattlib/h/h;->a(Lcom/yf/gattlib/h/g;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yf/gattlib/h/h;)Lcom/yf/gattlib/h/f;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->g:Lcom/yf/gattlib/h/f;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yf/gattlib/h/h;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yf/gattlib/h/g;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->d:Lcom/yf/gattlib/h/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/h/h;->d:Lcom/yf/gattlib/h/g;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->g:Lcom/yf/gattlib/h/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/h/f;->a()Lcom/yf/gattlib/h/g;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 44
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    sget-object v0, Lcom/yf/gattlib/h/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 46
    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 47
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/h/h;->b:Z

    .line 52
    return-void
.end method

.method public a(Landroid/media/AudioManager;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yf/gattlib/h/h;->e:Landroid/media/AudioManager;

    .line 64
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/yf/gattlib/h/h;->b:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/h/h;->b:Z

    .line 60
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->e:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/yf/gattlib/e/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/h/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " audio manager is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/h/h;->e:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method
