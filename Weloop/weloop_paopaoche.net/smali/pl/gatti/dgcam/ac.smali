.class public Lpl/gatti/dgcam/ac;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Landroid/hardware/Camera$AutoFocusCallback;

.field b:Landroid/hardware/Camera$AutoFocusCallback;

.field private d:Landroid/app/Activity;

.field private e:Lpl/gatti/dgcam/a;

.field private f:Z

.field private g:Ljava/io/File;

.field private h:Ljava/lang/String;

.field private i:Lpl/gatti/dgcam/y;

.field private j:Lpl/gatti/dgcam/ab;

.field private k:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lpl/gatti/dgcam/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/gatti/dgcam/ac;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lpl/gatti/dgcam/a;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/gatti/dgcam/ac;->f:Z

    .line 73
    new-instance v0, Lpl/gatti/dgcam/ad;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/ad;-><init>(Lpl/gatti/dgcam/ac;)V

    iput-object v0, p0, Lpl/gatti/dgcam/ac;->a:Landroid/hardware/Camera$AutoFocusCallback;

    .line 98
    new-instance v0, Lpl/gatti/dgcam/ag;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/ag;-><init>(Lpl/gatti/dgcam/ac;)V

    iput-object v0, p0, Lpl/gatti/dgcam/ac;->b:Landroid/hardware/Camera$AutoFocusCallback;

    .line 118
    new-instance v0, Lpl/gatti/dgcam/ah;

    invoke-direct {v0, p0}, Lpl/gatti/dgcam/ah;-><init>(Lpl/gatti/dgcam/ac;)V

    iput-object v0, p0, Lpl/gatti/dgcam/ac;->k:Landroid/hardware/Camera$PictureCallback;

    .line 38
    iput-object p1, p0, Lpl/gatti/dgcam/ac;->d:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Lpl/gatti/dgcam/ac;->e:Lpl/gatti/dgcam/a;

    .line 40
    new-instance v0, Lpl/gatti/dgcam/y;

    invoke-direct {v0}, Lpl/gatti/dgcam/y;-><init>()V

    iput-object v0, p0, Lpl/gatti/dgcam/ac;->i:Lpl/gatti/dgcam/y;

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/ac;->g:Ljava/io/File;

    .line 42
    iget-object v0, p0, Lpl/gatti/dgcam/ac;->i:Lpl/gatti/dgcam/y;

    invoke-virtual {v0}, Lpl/gatti/dgcam/y;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/gatti/dgcam/ac;->h:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lpl/gatti/dgcam/ac;->g:Ljava/io/File;

    iget-object v2, p0, Lpl/gatti/dgcam/ac;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic a(Lpl/gatti/dgcam/ac;)Lpl/gatti/dgcam/ab;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lpl/gatti/dgcam/ac;->j:Lpl/gatti/dgcam/ab;

    return-object v0
.end method

.method static synthetic a(Lpl/gatti/dgcam/ac;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lpl/gatti/dgcam/ac;->f:Z

    return p1
.end method

.method static synthetic b(Lpl/gatti/dgcam/ac;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lpl/gatti/dgcam/ac;->k:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic c(Lpl/gatti/dgcam/ac;)Ljava/io/File;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lpl/gatti/dgcam/ac;->g:Ljava/io/File;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lpl/gatti/dgcam/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lpl/gatti/dgcam/ac;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lpl/gatti/dgcam/ac;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lpl/gatti/dgcam/ac;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lpl/gatti/dgcam/ac;->d:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lpl/gatti/dgcam/ac;->e:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->f()Landroid/hardware/Camera;

    move-result-object v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lpl/gatti/dgcam/ac;->b:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lpl/gatti/dgcam/ac;->e:Lpl/gatti/dgcam/a;

    invoke-virtual {v0}, Lpl/gatti/dgcam/a;->f()Landroid/hardware/Camera;

    move-result-object v0

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 57
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_2

    .line 58
    const-string v2, "on"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 64
    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 67
    :cond_0
    iget-boolean v1, p0, Lpl/gatti/dgcam/ac;->f:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lpl/gatti/dgcam/ac;->k:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lpl/gatti/dgcam/ac;->f:Z

    .line 69
    iget-object v1, p0, Lpl/gatti/dgcam/ac;->a:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 71
    :cond_1
    return-void

    .line 59
    :cond_2
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_3

    .line 60
    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lpl/gatti/dgcam/ab;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lpl/gatti/dgcam/ac;->j:Lpl/gatti/dgcam/ab;

    .line 51
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lpl/gatti/dgcam/ac;->f:Z

    return v0
.end method
