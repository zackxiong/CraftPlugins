.class public final Lcom/tencent/b/a/t;
.super Ljava/lang/Object;


# static fields
.field private static A:I

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field private static F:I

.field private static G:I

.field private static H:J

.field private static I:J

.field private static volatile J:Ljava/lang/String;

.field private static K:I

.field private static volatile L:I

.field private static M:I

.field private static N:I

.field private static O:Z

.field private static P:I

.field private static Q:Z

.field private static R:Ljava/lang/String;

.field private static S:Z

.field private static T:Lcom/tencent/b/a/j;

.field static a:Lcom/tencent/b/a/i;

.field static b:Lcom/tencent/b/a/i;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:Z

.field static h:I

.field static i:J

.field static j:Z

.field public static k:Z

.field static volatile l:Ljava/lang/String;

.field static m:Z

.field static n:I

.field static o:J

.field static p:I

.field private static q:Lcom/tencent/b/a/b/b;

.field private static r:Lcom/tencent/b/a/u;

.field private static s:Z

.field private static t:Z

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x64

    const/16 v5, 0x1e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/b/a/b/l;->c()Lcom/tencent/b/a/b/b;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v0, Lcom/tencent/b/a/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/b/a/i;-><init>(I)V

    sput-object v0, Lcom/tencent/b/a/t;->a:Lcom/tencent/b/a/i;

    new-instance v0, Lcom/tencent/b/a/i;

    invoke-direct {v0, v3}, Lcom/tencent/b/a/i;-><init>(I)V

    sput-object v0, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    sget-object v0, Lcom/tencent/b/a/u;->d:Lcom/tencent/b/a/u;

    sput-object v0, Lcom/tencent/b/a/t;->r:Lcom/tencent/b/a/u;

    sput-boolean v2, Lcom/tencent/b/a/t;->s:Z

    sput-boolean v3, Lcom/tencent/b/a/t;->t:Z

    const/16 v0, 0x7530

    sput v0, Lcom/tencent/b/a/t;->u:I

    const v0, 0x186a0

    sput v0, Lcom/tencent/b/a/t;->v:I

    sput v5, Lcom/tencent/b/a/t;->w:I

    const/16 v0, 0xa

    sput v0, Lcom/tencent/b/a/t;->x:I

    sput v6, Lcom/tencent/b/a/t;->y:I

    sput v5, Lcom/tencent/b/a/t;->z:I

    sput v3, Lcom/tencent/b/a/t;->A:I

    const-string v0, "__HIBERNATE__"

    sput-object v0, Lcom/tencent/b/a/t;->c:Ljava/lang/String;

    const-string v0, "__HIBERNATE__TIME"

    sput-object v0, Lcom/tencent/b/a/t;->d:Ljava/lang/String;

    const-string v0, "__MTA_KILL__"

    sput-object v0, Lcom/tencent/b/a/t;->e:Ljava/lang/String;

    sput-object v4, Lcom/tencent/b/a/t;->B:Ljava/lang/String;

    const-string v0, "mta_channel"

    sput-object v0, Lcom/tencent/b/a/t;->E:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/b/a/t;->f:Ljava/lang/String;

    const/16 v0, 0xb4

    sput v0, Lcom/tencent/b/a/t;->F:I

    sput-boolean v2, Lcom/tencent/b/a/t;->g:Z

    sput v6, Lcom/tencent/b/a/t;->h:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/tencent/b/a/t;->i:J

    const/16 v0, 0x400

    sput v0, Lcom/tencent/b/a/t;->G:I

    sput-boolean v3, Lcom/tencent/b/a/t;->j:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/b/a/t;->H:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/tencent/b/a/t;->I:J

    sput-boolean v3, Lcom/tencent/b/a/t;->k:Z

    const-string v0, "pingma.qq.com:80"

    sput-object v0, Lcom/tencent/b/a/t;->l:Ljava/lang/String;

    const-string v0, "http://pingma.qq.com:80/mstat/report"

    sput-object v0, Lcom/tencent/b/a/t;->J:Ljava/lang/String;

    sput v2, Lcom/tencent/b/a/t;->K:I

    sput v2, Lcom/tencent/b/a/t;->L:I

    const/16 v0, 0x14

    sput v0, Lcom/tencent/b/a/t;->M:I

    sput v2, Lcom/tencent/b/a/t;->N:I

    sput-boolean v2, Lcom/tencent/b/a/t;->O:Z

    const/16 v0, 0x1000

    sput v0, Lcom/tencent/b/a/t;->P:I

    sput-boolean v2, Lcom/tencent/b/a/t;->Q:Z

    sput-object v4, Lcom/tencent/b/a/t;->R:Ljava/lang/String;

    sput-boolean v2, Lcom/tencent/b/a/t;->S:Z

    sput-object v4, Lcom/tencent/b/a/t;->T:Lcom/tencent/b/a/j;

    sput-boolean v3, Lcom/tencent/b/a/t;->m:Z

    sput v2, Lcom/tencent/b/a/t;->n:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/tencent/b/a/t;->o:J

    const/16 v0, 0x200

    sput v0, Lcom/tencent/b/a/t;->p:I

    return-void
.end method

.method public static a()Lcom/tencent/b/a/u;
    .locals 1

    sget-object v0, Lcom/tencent/b/a/t;->r:Lcom/tencent/b/a/u;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/tencent/b/a/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    sget-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/tencent/b/a/b/l;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v2, "AppKey can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->d(Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    iget-object v0, v0, Lcom/tencent/b/a/i;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t find custom key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->c(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(J)V
    .locals 2

    invoke-static {}, Lcom/tencent/b/a/l;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/b/a/t;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/tencent/b/a/b/q;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/b/a/t;->a(Z)V

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "MTA is disable for current SDK version"

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/tencent/b/a/i;)V
    .locals 3

    iget v0, p1, Lcom/tencent/b/a/i;->a:I

    sget-object v1, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    iget v1, v1, Lcom/tencent/b/a/i;->a:I

    if-ne v0, v1, :cond_1

    sput-object p1, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    iget-object v0, p1, Lcom/tencent/b/a/i;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    iget-object v0, v0, Lcom/tencent/b/a/i;->b:Lorg/json/JSONObject;

    const-string v1, "iplist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/b/a/x;->a(Landroid/content/Context;)Lcom/tencent/b/a/x;

    move-result-object v0

    sget-object v1, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    iget-object v1, v1, Lcom/tencent/b/a/i;->b:Lorg/json/JSONObject;

    const-string v2, "iplist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/x;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/tencent/b/a/i;->a:I

    sget-object v1, Lcom/tencent/b/a/t;->a:Lcom/tencent/b/a/i;

    iget v1, v1, Lcom/tencent/b/a/i;->a:I

    if-ne v0, v1, :cond_0

    sput-object p1, Lcom/tencent/b/a/t;->a:Lcom/tencent/b/a/i;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/b/a/i;Lorg/json/JSONObject;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "v"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iget v0, p1, Lcom/tencent/b/a/i;->d:I

    if-eq v0, v5, :cond_16

    move v0, v1

    :goto_1
    iput v5, p1, Lcom/tencent/b/a/i;->d:I

    move v3, v0

    goto :goto_0

    :cond_1
    const-string v5, "c"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, "c"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, p1, Lcom/tencent/b/a/i;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/b/a/b/b;->b(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "m"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/b/a/i;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/b/a/b/b;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    if-ne v3, v1, :cond_5

    :try_start_2
    invoke-static {}, Lcom/tencent/b/a/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/b/a/ai;->a(Landroid/content/Context;)Lcom/tencent/b/a/ai;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/ai;->a(Lcom/tencent/b/a/i;)V

    :cond_4
    iget v0, p1, Lcom/tencent/b/a/i;->a:I

    sget-object v3, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    iget v3, v3, Lcom/tencent/b/a/i;->a:I

    if-ne v0, v3, :cond_5

    iget-object v0, p1, Lcom/tencent/b/a/i;->b:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;)V

    iget-object v3, p1, Lcom/tencent/b/a/i;->b:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    :goto_3
    invoke-static {p0, p1}, Lcom/tencent/b/a/t;->a(Landroid/content/Context;Lcom/tencent/b/a/i;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-static {}, Lcom/tencent/b/a/l;->a()Landroid/content/Context;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    :try_start_4
    sget-object v0, Lcom/tencent/b/a/t;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/b/a/b/l;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    :goto_4
    :try_start_5
    sget-object v0, Lcom/tencent/b/a/t;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/b/a/t;->s:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hibernateVer:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current version:2.0.3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/b/a/b/b;->g(Ljava/lang/Object;)V

    :cond_8
    invoke-static {v0}, Lcom/tencent/b/a/b/l;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "2.0.3"

    invoke-static {v2}, Lcom/tencent/b/a/b/l;->b(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_5

    invoke-static {v0, v1}, Lcom/tencent/b/a/t;->a(J)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "__HIBERNATE__ not found."

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->g(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :cond_9
    :try_start_7
    const-string v0, "sm"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "sm"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_13

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_5
    if-lez v0, :cond_b

    sget-boolean v6, Lcom/tencent/b/a/t;->s:Z

    if-eqz v6, :cond_a

    sget-object v6, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "match sleepTime:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    add-long/2addr v6, v8

    sget-object v0, Lcom/tencent/b/a/t;->d:Ljava/lang/String;

    invoke-static {v4, v0, v6, v7}, Lcom/tencent/b/a/b/q;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/b/a/t;->a(Z)V

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v6, "MTA is disable for current SDK version"

    invoke-virtual {v0, v6}, Lcom/tencent/b/a/b/b;->b(Ljava/lang/Object;)V

    :cond_b
    const-string v0, "sv"

    const-string v6, "2.0.3"

    invoke-static {v5, v0, v6}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v2, "match sdk version:2.0.3"

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :goto_6
    const-string v2, "md"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5, v2, v6}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "match MODEL:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :cond_c
    const-string v2, "av"

    invoke-static {v4}, Lcom/tencent/b/a/b/l;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "match app version:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/b/a/b/l;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :cond_d
    const-string v2, "mf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "match MANUFACTURER:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :cond_e
    const-string v2, "osv"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "match android SDK version:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :cond_f
    const-string v2, "ov"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "match android SDK version:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :cond_10
    const-string v2, "ui"

    invoke-static {v4}, Lcom/tencent/b/a/ai;->a(Landroid/content/Context;)Lcom/tencent/b/a/ai;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/tencent/b/a/ai;->b(Landroid/content/Context;)Lcom/tencent/b/a/b/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/b/a/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "match imei:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/b/a/ai;->a(Landroid/content/Context;)Lcom/tencent/b/a/ai;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/tencent/b/a/ai;->b(Landroid/content/Context;)Lcom/tencent/b/a/b/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/b/a/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :cond_11
    const-string v2, "mid"

    invoke-static {v4}, Lcom/tencent/b/a/t;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/tencent/b/a/t;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "match mid:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/b/a/t;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :cond_12
    if-eqz v0, :cond_7

    const-string v0, "2.0.3"

    invoke-static {v0}, Lcom/tencent/b/a/b/l;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/b/a/t;->a(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    :catch_3
    move-exception v0

    :try_start_8
    sget-object v1, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/b/a/b/b;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :cond_13
    :try_start_9
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_15

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    move-result v0

    goto/16 :goto_5

    :cond_14
    move v0, v2

    goto/16 :goto_6

    :cond_15
    move v0, v2

    goto/16 :goto_5

    :cond_16
    move v0, v3

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_1

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "ctx in StatConfig.setAppKey() is null"

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "appkey in StatConfig.setAppKey() is null or exceed 256 bytes"

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "_mta_ky_tag_"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/b/a/b/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/b/a/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    :cond_4
    invoke-static {p1}, Lcom/tencent/b/a/t;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0}, Lcom/tencent/b/a/b/l;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/b/a/t;->d(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/b/a/b/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_mta_ky_tag_"

    invoke-static {p0, v1, v0}, Lcom/tencent/b/a/b/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    iget v2, v2, Lcom/tencent/b/a/i;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/tencent/b/a/t;->b:Lcom/tencent/b/a/i;

    invoke-static {p0, v2, v0}, Lcom/tencent/b/a/t;->a(Landroid/content/Context;Lcom/tencent/b/a/i;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/b/a/b/b;->b(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/b/a/t;->a:Lcom/tencent/b/a/i;

    iget v2, v2, Lcom/tencent/b/a/i;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/tencent/b/a/t;->a:Lcom/tencent/b/a/i;

    invoke-static {p0, v2, v0}, Lcom/tencent/b/a/t;->a(Landroid/content/Context;Lcom/tencent/b/a/i;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v2, "rs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/b/a/u;->a(I)Lcom/tencent/b/a/u;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/tencent/b/a/t;->r:Lcom/tencent/b/a/u;

    sget-boolean v2, Lcom/tencent/b/a/t;->s:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Change to ReportStrategy:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/b/a/u;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/b/a/b/b;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lcom/tencent/b/a/u;)V
    .locals 3

    sput-object p0, Lcom/tencent/b/a/t;->r:Lcom/tencent/b/a/u;

    sget-object v0, Lcom/tencent/b/a/u;->f:Lcom/tencent/b/a/u;

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/b/a/v;->c:J

    :cond_0
    sget-boolean v0, Lcom/tencent/b/a/t;->s:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change to statSendStrategy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->g(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "rs"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/b/a/u;->a(I)Lcom/tencent/b/a/u;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/b/a/t;->a(Lcom/tencent/b/a/u;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/tencent/b/a/t;->s:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "rs not found."

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 2

    sput-boolean p0, Lcom/tencent/b/a/t;->t:Z

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "!!!!!!MTA StatService has been disabled!!!!!!"

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/b/a/b/l;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/b/a/b/l;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/tencent/b/a/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/b/a/t;->E:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/tencent/b/a/b/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/tencent/b/a/b/l;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v2, "installChannel can not be null or empty, please read Developer\'s Guide first!"

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/b/b;->c(Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/tencent/b/a/t;->D:Ljava/lang/String;

    sget-object v0, Lcom/tencent/b/a/t;->E:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/tencent/b/a/b/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "the length of installChannel can not exceed the range of 128 bytes."

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->d(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/tencent/b/a/t;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/b/a/t;->s:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mta.acc.qq"

    sget-object v1, Lcom/tencent/b/a/t;->f:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/b/a/b/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "statReportUrl cannot be null or empty."

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->d(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput-object p0, Lcom/tencent/b/a/t;->J:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    sget-object v1, Lcom/tencent/b/a/t;->J:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/t;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v0, Lcom/tencent/b/a/t;->s:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/b/a/t;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/b/a/t;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    invoke-virtual {v1, v0}, Lcom/tencent/b/a/b/b;->c(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/b/a/t;->t:Z

    return v0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->u:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/tencent/b/a/t;->q:Lcom/tencent/b/a/b/b;

    const-string v1, "Context for getCustomUid is null."

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/b/a/t;->R:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "MTA_CUSTOM_UID"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/b/a/b/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/t;->R:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/tencent/b/a/t;->R:Ljava/lang/String;

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    if-nez v2, :cond_2

    sput-object p0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/t;->C:Ljava/lang/String;

    move v0, v1

    goto :goto_0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->y:I

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/a/a/a/a/g;->a(Landroid/content/Context;)Lcom/tencent/a/a/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/a/g;->a()Lcom/tencent/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->z:I

    return v0
.end method

.method public static g()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->x:I

    return v0
.end method

.method public static h()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->A:I

    return v0
.end method

.method static i()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->w:I

    return v0
.end method

.method public static j()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->v:I

    return v0
.end method

.method public static k()V
    .locals 1

    const/16 v0, 0x3c

    sput v0, Lcom/tencent/b/a/t;->F:I

    return-void
.end method

.method public static l()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->F:I

    return v0
.end method

.method public static m()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/b/a/t;->j:Z

    return-void
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/b/a/t;->k:Z

    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/b/a/t;->J:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized p()V
    .locals 2

    const-class v0, Lcom/tencent/b/a/t;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/tencent/b/a/t;->L:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static q()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->M:I

    return v0
.end method

.method static r()V
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->N:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/b/a/t;->N:I

    return-void
.end method

.method static s()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/b/a/t;->N:I

    return-void
.end method

.method static t()I
    .locals 1

    sget v0, Lcom/tencent/b/a/t;->N:I

    return v0
.end method

.method public static u()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/b/a/t;->Q:Z

    return v0
.end method

.method public static v()Lcom/tencent/b/a/j;
    .locals 1

    sget-object v0, Lcom/tencent/b/a/t;->T:Lcom/tencent/b/a/j;

    return-object v0
.end method
