.class public Lcom/yf/gattlib/p/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/yf/gattlib/p/o;

.field private static final b:Lcom/yf/gattlib/p/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/yf/gattlib/p/d;

    invoke-direct {v0}, Lcom/yf/gattlib/p/d;-><init>()V

    sput-object v0, Lcom/yf/gattlib/p/c;->b:Lcom/yf/gattlib/p/o;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/yf/gattlib/p/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string v0, "null"

    .line 66
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    :goto_1
    if-ge p1, p2, :cond_1

    .line 64
    const-string v1, "%02x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/yf/gattlib/p/o;)V
    .locals 0

    .prologue
    .line 10
    sput-object p0, Lcom/yf/gattlib/p/c;->a:Lcom/yf/gattlib/p/o;

    .line 11
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/yf/gattlib/p/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/yf/gattlib/p/c;->d()Lcom/yf/gattlib/p/o;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yf/gattlib/p/o;->a(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/yf/gattlib/p/c;->d()Lcom/yf/gattlib/p/o;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yf/gattlib/p/o;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/yf/gattlib/p/c;->d()Lcom/yf/gattlib/p/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/p/o;->a()Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/yf/gattlib/p/c;->d()Lcom/yf/gattlib/p/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/p/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/yf/gattlib/p/c;->d()Lcom/yf/gattlib/p/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/p/o;->c()V

    .line 100
    return-void
.end method

.method private static d()Lcom/yf/gattlib/p/o;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/yf/gattlib/p/c;->a:Lcom/yf/gattlib/p/o;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/yf/gattlib/p/c;->b:Lcom/yf/gattlib/p/o;

    .line 54
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yf/gattlib/p/c;->a:Lcom/yf/gattlib/p/o;

    goto :goto_0
.end method
