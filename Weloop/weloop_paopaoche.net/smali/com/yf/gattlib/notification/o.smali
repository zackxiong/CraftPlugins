.class public Lcom/yf/gattlib/notification/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/yf/gattlib/notification/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/notification/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    .line 99
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.google.android.inputmethod.pinyin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.wandoujia.phoenix2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.policydm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.tencent.android.qqdownloader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.providers.downloads"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.oppo.usbselection"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.providers.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.nero.android.htc.sync"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.sonymobile.runtimeskinning.core"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.qihoo.appstore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.tencent.qqpimsecure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.baidu.security"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.wcnsettings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.vivo.dream.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.bbkmusic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.hiapk.marketpho"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "cn.kuwo.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.sohu.inputmethod.sogou"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.meizu.media.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.iqoo.secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.xunlei.downloadprovider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.osp.app.signin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.incallui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.kenai.battery"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.qihoo360.mobilesafe_meizu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    const-string v1, "com.google.android.dialer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0}, Lcom/yf/gattlib/notification/o;->c()V

    .line 133
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    new-instance v1, Lcom/yf/gattlib/notification/p;

    invoke-direct {v1, p0}, Lcom/yf/gattlib/notification/p;-><init>(Lcom/yf/gattlib/notification/o;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yf.gattlib.intent.action.ACTION_UPDATE_WHITE_APP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 141
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/notification/o;->d:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Lcom/yf/gattlib/db/InitialState;->obtianInitailState()Lcom/yf/gattlib/db/InitialState;

    move-result-object v1

    .line 85
    iget-boolean v0, v1, Lcom/yf/gattlib/db/InitialState;->isInitialled:Z

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/notification/o;->b()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 90
    invoke-static {v4}, Lcom/yf/gattlib/db/WhiteApp;->addWhiteApp(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/yf/gattlib/db/InitialState;->isInitialled:Z

    .line 94
    invoke-virtual {v1}, Lcom/yf/gattlib/db/InitialState;->save()I

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/gattlib/notification/o;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yf/gattlib/notification/o;->c()V

    return-void
.end method

.method private static b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x33

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.yf.smart.weloopx.coros"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.yf.foreign.coros"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.yf.foreign.goclever"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.yf.foreign.weloop"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.immomo.momo"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.tencent.WBlog"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.jiayuan"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.lectek.android.ecp"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.dianping.v1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.yx"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.duowan.mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "im.yixin"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.zhihu.android"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.xiaomi.channel"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "net.iaround"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "me.papa"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "jp.naver.line.android"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "cn.tianya.light"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.changba"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.em.mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.alibaba.android.babylon"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.baidu.tieba"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.bilin.huijiao.activity"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "cn.com.fetion"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.qzone"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.renren.mobile.android"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.tencent.androidqqmail"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.sina.free.sm.pro"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "cn.cj.pe"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.yahoolitemail"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.netease.mobimail"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.baidu.news"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.tencent.news"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.sina.news"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.netease.nr"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.ifeng.news2"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.ss.android.article.news"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.peopleClients.views"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.sohu.newsclient"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "qsbk.app"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "cn.com.sina.sports"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "com.yf.smart.weloopx.dist"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "com.yf.smart.weloopx.beta"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.yf.smart.weloopx.alpha"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.kpbird.nlsexample"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 146
    sget-object v0, Lcom/yf/gattlib/notification/o;->a:Ljava/lang/String;

    const-string v1, "loadWhiteApps"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/yf/gattlib/notification/o;->a()V

    .line 148
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 149
    invoke-static {}, Lcom/yf/gattlib/db/WhiteApp;->obtainAllWhiteApp()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/db/WhiteApp;

    .line 151
    iget-object v0, v0, Lcom/yf/gattlib/db/WhiteApp;->pkg:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_0
    iput-object v1, p0, Lcom/yf/gattlib/notification/o;->c:Ljava/util/Set;

    .line 154
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p1, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    .line 167
    invoke-virtual {v0}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/yf/gattlib/notification/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object p1

    .line 173
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/notification/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    sget-object p1, Lcom/yf/gattlib/notification/e;->a:Lcom/yf/gattlib/notification/e;

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    sget-object p1, Lcom/yf/gattlib/notification/e;->a:Lcom/yf/gattlib/notification/e;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    invoke-static {p1}, Lcom/yf/gattlib/h/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/notification/o;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
