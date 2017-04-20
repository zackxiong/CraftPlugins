.class public Lcom/yf/gattlib/client/b/z;
.super Lcom/yf/gattlib/client/b/ad;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ad;-><init>()V

    return-void
.end method

.method private a(Lcom/yf/gattlib/a/b;I)V
    .locals 10

    .prologue
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 74
    invoke-virtual {p1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "music player package"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/yf/gattlib/c/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicControlTransaction Choice music player pkg = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", eventCode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 78
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v4, 0x0

    invoke-direct {v9, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-wide v4, v2

    move v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 82
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v9, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v9, v4}, Lcom/yf/gattlib/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 85
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v4, 0x0

    invoke-direct {v9, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-wide v4, v2

    move v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 89
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/yf/gattlib/a/a;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/client/b/z;Lcom/yf/gattlib/a/b;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/client/b/z;->a(Lcom/yf/gattlib/a/b;I)V

    return-void
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 56
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 50
    :pswitch_0
    const/16 v0, 0x55

    goto :goto_0

    .line 52
    :pswitch_1
    const/16 v0, 0x57

    goto :goto_0

    .line 54
    :pswitch_2
    const/16 v0, 0x58

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/yf/gattlib/client/b/aa;

    invoke-direct {v0, p0, p1}, Lcom/yf/gattlib/client/b/aa;-><init>(Lcom/yf/gattlib/client/b/z;I)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/aa;->start()V

    .line 66
    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicControlTransaction value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 38
    invoke-direct {p0, v0}, Lcom/yf/gattlib/client/b/z;->b(I)I

    move-result v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicControlTransaction code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 40
    if-lez v0, :cond_0

    .line 41
    invoke-direct {p0, v0}, Lcom/yf/gattlib/client/b/z;->c(I)V

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/z;->b([B)[B

    .line 44
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/z;->i()V

    .line 45
    return-void
.end method

.method public a()[I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x50
        0x51
        0x52
    .end array-data
.end method
