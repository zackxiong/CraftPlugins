.class public final Lcom/tencent/b/a/a/g;
.super Lcom/tencent/b/a/a/d;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/b/a/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/tencent/b/a/w;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/b/a/a/d;-><init>(Landroid/content/Context;ILcom/tencent/b/a/w;)V

    iput-object v0, p0, Lcom/tencent/b/a/a/g;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/b/a/a/g;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/b/a/x;->a(Landroid/content/Context;)Lcom/tencent/b/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/b/a/x;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/b/a/a/g;->m:Ljava/lang/String;

    sget-object v0, Lcom/tencent/b/a/a/g;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/b/a/b/l;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/b/a/a/g;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/b/a/a/g;->n:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "op"

    sget-object v1, Lcom/tencent/b/a/a/g;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/b/a/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cn"

    iget-object v1, p0, Lcom/tencent/b/a/a/g;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/b/a/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sp"

    iget-object v1, p0, Lcom/tencent/b/a/a/g;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/tencent/b/a/a/e;
    .locals 1

    sget-object v0, Lcom/tencent/b/a/a/e;->h:Lcom/tencent/b/a/a/e;

    return-object v0
.end method
