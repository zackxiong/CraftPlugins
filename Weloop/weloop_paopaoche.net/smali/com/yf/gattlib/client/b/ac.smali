.class public Lcom/yf/gattlib/client/b/ac;
.super Lcom/yf/gattlib/client/b/ad;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/yf/gattlib/client/b/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/ac;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    .line 34
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 35
    sget-object v1, Lcom/yf/gattlib/client/b/ac;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/16 v1, 0x70

    if-ne v0, v1, :cond_1

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.gattlib.intent.action_start_sleep"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/ac;->b([B)[B

    .line 44
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/ac;->i()V

    .line 45
    return-void

    .line 39
    :cond_1
    const/16 v1, 0x71

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yf.gattlib.intent.action_end_sleep"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->c(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a()[I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x70
        0x71
    .end array-data
.end method
