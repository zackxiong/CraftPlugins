.class public Lcom/yf/gattlib/client/b/bc;
.super Lcom/yf/gattlib/client/b/e;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/b/bc$b;,
        Lcom/yf/gattlib/client/b/bc$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/yf/gattlib/client/b/bc$a;

.field public b:[B

.field c:Landroid/os/Handler;

.field private e:B

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:B

.field private i:I

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/yf/gattlib/client/b/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/bc;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLcom/yf/gattlib/client/b/bc$a;)V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 27
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/e;-><init>()V

    .line 23
    const-string v0, "syncWeather"

    invoke-static {v0}, Lcom/yf/gattlib/p/j;->a(Ljava/lang/String;)Lcom/yf/gattlib/p/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bc;->c:Landroid/os/Handler;

    .line 24
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/yf/gattlib/client/b/bc;->i:I

    .line 110
    new-instance v0, Lcom/yf/gattlib/client/b/bd;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/b/bd;-><init>(Lcom/yf/gattlib/client/b/bc;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bc;->j:Ljava/lang/Runnable;

    .line 28
    iput-object p3, p0, Lcom/yf/gattlib/client/b/bc;->a:Lcom/yf/gattlib/client/b/bc$a;

    .line 29
    iput-object p1, p0, Lcom/yf/gattlib/client/b/bc;->f:Ljava/lang/String;

    .line 30
    iput-byte p2, p0, Lcom/yf/gattlib/client/b/bc;->e:B

    .line 31
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bc;->b:[B

    .line 32
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 33
    iget-object v1, p0, Lcom/yf/gattlib/client/b/bc;->b:[B

    aput-byte p2, v1, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bc;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yf/gattlib/client/b/bc;->a(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/yf/gattlib/client/b/bc;->h:B

    .line 36
    const-string v0, "yonghong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/yf/gattlib/client/b/bc;->h:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bc;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/b/bc;->g:[B

    .line 39
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bc;->g:[B

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;)B
    .locals 5

    .prologue
    .line 100
    invoke-static {}, Lcom/yf/gattlib/client/b/bc$b;->values()[Lcom/yf/gattlib/client/b/bc$b;

    move-result-object v1

    .line 102
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 103
    invoke-static {v3}, Lcom/yf/gattlib/client/b/bc$b;->a(Lcom/yf/gattlib/client/b/bc$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-static {v3}, Lcom/yf/gattlib/client/b/bc$b;->b(Lcom/yf/gattlib/client/b/bc$b;)B

    move-result v0

    .line 107
    :goto_1
    return v0

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bc;->p()V

    .line 120
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bc;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bc;->j:Ljava/lang/Runnable;

    iget v2, p0, Lcom/yf/gattlib/client/b/bc;->i:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bc;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/gattlib/client/b/bc;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bc;->p()V

    .line 45
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bc;->a:Lcom/yf/gattlib/client/b/bc$a;

    invoke-interface {v0}, Lcom/yf/gattlib/client/b/bc$a;->a()V

    .line 46
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/bc;->i()V

    .line 48
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/bc;->e()V

    .line 53
    iget-object v0, p0, Lcom/yf/gattlib/client/b/bc;->g:[B

    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/bc;->a([B)V

    .line 54
    return-void
.end method

.method public c()[B
    .locals 2

    .prologue
    .line 58
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    const/16 v1, -0x5b

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    iget-byte v1, p0, Lcom/yf/gattlib/client/b/bc;->h:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63
    iget-byte v1, p0, Lcom/yf/gattlib/client/b/bc;->h:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    iget-object v1, p0, Lcom/yf/gattlib/client/b/bc;->b:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, 0x2710

    return-wide v0
.end method
