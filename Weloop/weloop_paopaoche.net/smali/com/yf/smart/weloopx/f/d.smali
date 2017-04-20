.class public Lcom/yf/smart/weloopx/f/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/f/d$a;,
        Lcom/yf/smart/weloopx/f/d$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yf/smart/weloopx/g/j;

.field private c:Lcom/yf/smart/weloopx/data/f;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "TrajectoryNetUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/f/d;->a:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/yf/smart/weloopx/f/d;->d:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/yf/smart/weloopx/g/j;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/g/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/f/d;->b:Lcom/yf/smart/weloopx/g/j;

    .line 68
    new-instance v0, Lcom/yf/smart/weloopx/data/f;

    invoke-direct {v0, p1}, Lcom/yf/smart/weloopx/data/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/f/d;->c:Lcom/yf/smart/weloopx/data/f;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/f/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    const-string v0, ""

    .line 129
    iget-object v1, p0, Lcom/yf/smart/weloopx/f/d;->c:Lcom/yf/smart/weloopx/data/f;

    invoke-virtual {v1, p1}, Lcom/yf/smart/weloopx/data/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/smart/weloopx/f/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Date =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is location info num  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/LocationModel;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LOCATION_INFO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 133
    goto :goto_0

    .line 134
    :cond_0
    return-object v1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/f/d;)Lcom/yf/smart/weloopx/g/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/d;->b:Lcom/yf/smart/weloopx/g/j;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/f/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/d;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yf/smart/weloopx/f/d$a;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/f/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downloadTrajectoryInfo param date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is cur date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 140
    const-string v0, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "indexcount"

    if-eqz p3, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "happenDate"

    invoke-virtual {v1, v0, p2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download location track "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 145
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 146
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->n()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/f/f;

    invoke-direct {v4, p0, p1}, Lcom/yf/smart/weloopx/f/f;-><init>(Lcom/yf/smart/weloopx/f/d;Lcom/yf/smart/weloopx/f/d$a;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 197
    return-void

    .line 141
    :cond_0
    const-string v0, "6"

    goto :goto_0
.end method

.method public a(Lcom/yf/smart/weloopx/f/d$b;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 75
    invoke-direct {p0, p2}, Lcom/yf/smart/weloopx/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/f/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " By date =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " query location info  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/b/a/d/d;

    invoke-direct {v1}, Lcom/b/a/d/d;-><init>()V

    .line 78
    const-string v2, "accessToken"

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "happenDate"

    invoke-virtual {v1, v0, p2}, Lcom/b/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload location track, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0}, Lcom/b/a/b;-><init>()V

    .line 84
    sget-object v2, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    invoke-static {}, Lcom/yf/smart/weloopx/f/m;->a()Lcom/yf/smart/weloopx/f/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/f/m;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yf/smart/weloopx/f/e;

    invoke-direct {v4, p0, p1, p2}, Lcom/yf/smart/weloopx/f/e;-><init>(Lcom/yf/smart/weloopx/f/d;Lcom/yf/smart/weloopx/f/d$b;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/b/a/b;->a(Lcom/b/a/d/b/c$a;Ljava/lang/String;Lcom/b/a/d/d;Lcom/b/a/d/a/d;)Lcom/b/a/d/c;

    .line 124
    return-void
.end method
