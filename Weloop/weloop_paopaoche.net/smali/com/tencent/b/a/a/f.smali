.class public final Lcom/tencent/b/a/a/f;
.super Lcom/tencent/b/a/a/d;


# static fields
.field public static final a:Lcom/tencent/b/a/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/b/a/w;

    invoke-direct {v0}, Lcom/tencent/b/a/w;-><init>()V

    sput-object v0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/b/a/w;

    const-string v1, "A9VH9B8L4GX4"

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/b/a/w;

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/b/a/a/d;-><init>(Landroid/content/Context;ILcom/tencent/b/a/w;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "actky"

    iget-object v1, p0, Lcom/tencent/b/a/a/f;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/b/a/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/b/a/b/r;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/tencent/b/a/a/e;
    .locals 1

    sget-object v0, Lcom/tencent/b/a/a/e;->i:Lcom/tencent/b/a/a/e;

    return-object v0
.end method
