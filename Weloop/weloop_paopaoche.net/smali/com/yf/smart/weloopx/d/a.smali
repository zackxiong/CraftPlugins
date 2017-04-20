.class public Lcom/yf/smart/weloopx/d/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/yf/smart/weloopx/d/a;

.field private static final b:Ljava/util/UUID;

.field private static final c:Ljava/util/UUID;

.field private static final d:Ljava/util/UUID;


# instance fields
.field private e:Lcom/yf/gattlib/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "6E400001-B5A3-F393-E0A9-77656C6F6F70"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/d/a;->b:Ljava/util/UUID;

    .line 30
    const-string v0, "6E400002-B5A3-F393-E0A9-77656C6F6F70"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/d/a;->c:Ljava/util/UUID;

    .line 31
    const-string v0, "6E400003-B5A3-F393-E0A9-77656C6F6F70"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/d/a;->d:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/yf/gattlib/c/g;

    sget-object v1, Lcom/yf/smart/weloopx/d/a;->b:Ljava/util/UUID;

    sget-object v2, Lcom/yf/smart/weloopx/d/a;->c:Ljava/util/UUID;

    sget-object v3, Lcom/yf/smart/weloopx/d/a;->d:Ljava/util/UUID;

    invoke-direct {v0, v1, v2, v3}, Lcom/yf/gattlib/c/g;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/d/a;->e:Lcom/yf/gattlib/c/g;

    .line 27
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/yf/smart/weloopx/d/b;->a()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/d/a;->a:Lcom/yf/smart/weloopx/d/a;

    .line 21
    return-void
.end method

.method public static b()Lcom/yf/smart/weloopx/d/a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yf/smart/weloopx/d/a;->a:Lcom/yf/smart/weloopx/d/a;

    return-object v0
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/c/v;)Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/yf/smart/weloopx/c/v;->c:Lcom/yf/smart/weloopx/c/v;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yf/smart/weloopx/c/v;->d:Lcom/yf/smart/weloopx/c/v;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yf/smart/weloopx/c/v;->b:Lcom/yf/smart/weloopx/c/v;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yf/smart/weloopx/c/v;->e:Lcom/yf/smart/weloopx/c/v;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs a(Lcom/yf/smart/weloopx/d/c;I[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public d()Lcom/yf/gattlib/c/g;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/d/a;->e:Lcom/yf/gattlib/c/g;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "http://en.weloop.cn/weloop"

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://v3.weloop.cn/weloop"

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/d/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/firmware!getGJ.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    return-object v0
.end method
