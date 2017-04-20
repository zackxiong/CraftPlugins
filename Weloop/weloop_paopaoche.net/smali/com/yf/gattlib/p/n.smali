.class public final Lcom/yf/gattlib/p/n;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/yf/gattlib/p/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/p/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BII)B
    .locals 2

    .prologue
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    if-ge p1, p2, :cond_0

    .line 8
    aget-byte v1, p0, p1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    .line 7
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    return v0
.end method

.method public static a([B)V
    .locals 2

    .prologue
    .line 14
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 15
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/yf/gattlib/p/n;->a([BII)B

    move-result v1

    .line 16
    aput-byte v1, p0, v0

    .line 17
    return-void
.end method

.method public static b([B)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 20
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 21
    invoke-static {p0, v0, v1}, Lcom/yf/gattlib/p/n;->a([BII)B

    move-result v2

    .line 22
    sget-object v3, Lcom/yf/gattlib/p/n;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checksum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
