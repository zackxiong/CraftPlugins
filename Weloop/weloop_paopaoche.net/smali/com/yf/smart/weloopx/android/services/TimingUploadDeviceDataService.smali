.class public Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;
.super Landroid/app/Service;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/yf/smart/weloopx/g/d;

.field private d:Lcom/yf/smart/weloopx/data/j;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private final h:Ljava/util/Timer;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    const-string v0, "TimingUploadDeviceDataService"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->a:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->f:Ljava/lang/String;

    .line 67
    const v0, 0x36ee80

    iput v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->g:I

    .line 68
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->h:Ljava/util/Timer;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->i:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/yf/smart/weloopx/android/services/l;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/services/l;-><init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_AUTO_SYNC_DATA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "TimingUploadDeviceDataService \u7ed3\u675f\u540c\u6b65\u7684service"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->stopSelf()V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->c:Lcom/yf/smart/weloopx/g/d;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/g/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string v0, "TimingUploadDeviceDataService \u5904\u4e8e\u524d\u53f0\uff0c\u4e0d\u6267\u884c\u540c\u6b65\u6570\u636e"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimingUploadDeviceDataService \u73b0\u5728\u7684\u65f6\u95f4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 116
    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 120
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    const-string v0, "TimingUploadDeviceDataService \u8bbe\u5907\u6ca1\u6709\u8fde\u63a5\uff0c\u4e0d\u540c\u6b65"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_3
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-nez v0, :cond_4

    .line 126
    const-string v0, "TimingUploadDeviceDataService \u8bbe\u5907\u6ca1\u6709\u521d\u59cb\u5316\uff0c\u4e0d\u540c\u6b65"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "TimingUploadDeviceDataService 1. \u5f00\u59cb\u540c\u6b65\u6570\u636esyncData"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->f:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->k()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b:Z

    .line 134
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e:Ljava/lang/String;

    .line 138
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimingUploadDeviceDataService 2. deviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u662f\u5426\u662ftomy2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 139
    const/16 v0, 0x80

    .line 140
    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b:Z

    if-eqz v1, :cond_6

    .line 141
    const-string v0, "V 4.02"

    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 142
    const/16 v0, 0x40

    .line 147
    :cond_6
    :goto_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/services/m;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/services/m;-><init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/yf/smart/weloopx/b/b;->a(ILcom/yf/gattlib/client/b/p$a;Z)V

    goto/16 :goto_0

    .line 144
    :cond_7
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->a()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 463
    const v0, 0x7f0702b4

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b:Z

    if-nez v0, :cond_0

    .line 199
    const-string v0, "TimingUploadDeviceDataService 5.1 \u4e0d\u662f\u5c0f\u9ed12\uff0c\u5f00\u59cb\u4e0a\u4f20\u6570\u636e"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->c()Z

    .line 211
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->i:Landroid/os/Handler;

    new-instance v1, Lcom/yf/smart/weloopx/android/services/n;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/services/n;-><init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b()V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 467
    const v0, 0x7f0702b5

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->d()V

    return-void
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->c:Lcom/yf/smart/weloopx/g/d;

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/g/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const-string v1, "TimingUploadDeviceDataService \u65e0\u7f51\u7edc\uff0c\u4e0d\u4e0a\u4f20"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 307
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->d()Lcom/yf/smart/weloopx/data/models/OriginalData;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getData()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e()V

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->f()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v2, Lcom/yf/smart/weloopx/data/models/BongUploadParams;

    invoke-direct {v2}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;-><init>()V

    .line 232
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setAccessToken(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setDeviceId(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setMac(Ljava/lang/String;)V

    .line 235
    iput-object v0, v2, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->runinfo:Ljava/lang/String;

    .line 236
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setDeviceData([B)V

    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    const v4, 0x36ee80

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/data/models/BongUploadParams;->setTimeZone(F)V

    .line 239
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/android/services/o;

    invoke-direct {v4, p0, v1, v0}, Lcom/yf/smart/weloopx/android/services/o;-><init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;Lcom/yf/smart/weloopx/data/models/OriginalData;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/yf/smart/weloopx/b/a;->a(Lcom/yf/smart/weloopx/data/models/BongUploadParams;Lcom/yf/smart/weloopx/b/b/b;)V

    .line 307
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Lcom/yf/gattlib/client/b/r;

    new-instance v1, Lcom/yf/smart/weloopx/android/services/p;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/services/p;-><init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/r;-><init>(Lcom/yf/gattlib/client/b/p$a;)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/r;->f()Lcom/yf/gattlib/client/b/e;

    .line 370
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->f:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 374
    new-instance v0, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;-><init>()V

    .line 376
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/yf/gattlib/p/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setHappenDate(Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setAccessToken(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setDeviceId(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setMac(Ljava/lang/String;)V

    .line 383
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setAdditionalDays(I)V

    .line 384
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0x36ee80

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->setTimeZone(F)V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimingUploadDeviceDataService HappenDate, accessToken, deviceId, mac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getHappenDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getAdditionalDays()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/BongDownloadParams;->getTimeZone()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/yf/smart/weloopx/b/a;->a()Lcom/yf/smart/weloopx/b/a;

    move-result-object v1

    new-instance v2, Lcom/yf/smart/weloopx/android/services/q;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/services/q;-><init>(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)V

    invoke-virtual {v1, v0, v2}, Lcom/yf/smart/weloopx/b/a;->a(Lcom/yf/smart/weloopx/data/models/BongDownloadParams;Lcom/yf/smart/weloopx/b/b/l;)V

    .line 423
    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;)Lcom/yf/smart/weloopx/data/j;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->d:Lcom/yf/smart/weloopx/data/j;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 8

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->b:Z

    if-nez v0, :cond_0

    .line 430
    const-string v0, "TimingUploadDeviceDataService \u7ec4\u88c5\u8dd1\u6b65\u6570\u636e\u7684\u65f6\u5019\uff0c\u4e0d\u662f\u5c0f\u9ed12"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 431
    const-string v0, ""

    .line 459
    :goto_0
    return-object v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->d:Lcom/yf/smart/weloopx/data/j;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/j;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 435
    :cond_1
    const-string v0, "TimingUploadDeviceDataService \u83b7\u5f97\u8dd1\u6b65\u6570\u636e\u662f\u7a7a\u7684"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 436
    const-string v0, ""

    goto :goto_0

    .line 438
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/client/b/b/b;

    .line 440
    iget v3, v0, Lcom/yf/gattlib/client/b/b/b;->a:I

    .line 441
    iget v4, v0, Lcom/yf/gattlib/client/b/b/b;->b:I

    .line 442
    iget v5, v0, Lcom/yf/gattlib/client/b/b/b;->c:I

    .line 443
    iget v0, v0, Lcom/yf/gattlib/client/b/b/b;->d:I

    .line 445
    const-string v6, "2014-01-01 00:00:00"

    invoke-static {v6}, Lcom/yf/gattlib/p/b;->b(Ljava/lang/String;)I

    move-result v6

    .line 446
    add-int v7, v6, v3

    invoke-static {v7}, Lcom/yf/gattlib/p/b;->b(I)Ljava/lang/String;

    move-result-object v7

    .line 447
    add-int/2addr v3, v6

    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/yf/gattlib/p/b;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 458
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimingUploadDeviceDataService \u7ec4\u88c5\u5c06\u8981\u4e0a\u4f20\u7684\u8dd1\u6b65\u4fe1\u606f = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "TimingUploadDeviceDataService onDestroy"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/services/TimingUploadDeviceDataService;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 477
    return-void
.end method
