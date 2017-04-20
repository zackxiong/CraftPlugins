.class public Lcom/yf/gattlib/notification/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yf/gattlib/notification/c;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/yf/gattlib/notification/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/notification/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/yf/gattlib/notification/c;

    invoke-direct {v0}, Lcom/yf/gattlib/notification/c;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/notification/n;->b:Lcom/yf/gattlib/notification/c;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.oppo.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.duomi.android.sony"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.duomi.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "cn.kuwo.player"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.spotify.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.android.bbkmusic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.ting.mp3.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.ting.mp3.oemc.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.baidu.music.pad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.kugou.android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.lenovo.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    const-string v1, "com.netease.cloudmusic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 44
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->c:Ljava/util/Set;

    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    invoke-virtual {v1}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-object p1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/notification/n;->b:Lcom/yf/gattlib/notification/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/notification/c;->a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;

    move-result-object v2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/yf/gattlib/notification/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filter data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v1, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {v2}, Lcom/yf/gattlib/notification/e;->a(Lcom/yf/gattlib/notification/e;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.yf.gattlib.oppo.music.metachanged"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    .line 53
    const-string v0, ""

    .line 54
    iget-object v1, v2, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v4, v1, Lcom/yf/gattlib/notification/NotificationContent;->c:Ljava/lang/String;

    .line 55
    iget-object v1, v2, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v1, v1, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 56
    array-length v1, v5

    const/4 v6, 0x2

    if-lt v1, v6, :cond_3

    .line 57
    const/4 v0, 0x1

    aget-object v1, v5, v0

    .line 58
    aget-object v0, v5, v7

    .line 63
    :goto_1
    const-string v5, "artist"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    const-string v1, "album"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    :cond_1
    const-string v0, "track"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v0, "origninal package"

    iget-object v1, v2, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    invoke-virtual {v1}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yf/gattlib/a/a;->b(Landroid/content/Intent;)V

    .line 74
    :cond_2
    sget-object p1, Lcom/yf/gattlib/notification/e;->a:Lcom/yf/gattlib/notification/e;

    goto :goto_0

    .line 60
    :cond_3
    aget-object v1, v5, v7

    goto :goto_1
.end method
