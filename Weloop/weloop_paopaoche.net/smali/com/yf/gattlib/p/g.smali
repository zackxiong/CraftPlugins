.class public final Lcom/yf/gattlib/p/g;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/p/g$1;,
        Lcom/yf/gattlib/p/g$b;,
        Lcom/yf/gattlib/p/g$a;,
        Lcom/yf/gattlib/p/g$f;,
        Lcom/yf/gattlib/p/g$c;,
        Lcom/yf/gattlib/p/g$e;,
        Lcom/yf/gattlib/p/g$d;,
        Lcom/yf/gattlib/p/g$g;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    sput v4, Lcom/yf/gattlib/p/g;->a:I

    .line 23
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/yf/gattlib/p/g;->b:Z

    .line 24
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/yf/gattlib/p/g;->c:Z

    .line 25
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x4

    if-gt v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/yf/gattlib/p/g;->d:Z

    .line 26
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x5

    if-gt v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/yf/gattlib/p/g;->e:Z

    .line 27
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    if-gt v0, v4, :cond_4

    :goto_4
    sput-boolean v1, Lcom/yf/gattlib/p/g;->f:Z

    return-void

    :cond_0
    move v0, v2

    .line 23
    goto :goto_0

    :cond_1
    move v0, v2

    .line 24
    goto :goto_1

    :cond_2
    move v0, v2

    .line 25
    goto :goto_2

    :cond_3
    move v0, v2

    .line 26
    goto :goto_3

    :cond_4
    move v1, v2

    .line 27
    goto :goto_4
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 131
    if-nez p0, :cond_0

    .line 132
    const-string v0, "null"

    .line 140
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    array-length v3, p0

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-byte v4, p0, v0

    .line 137
    const-string v5, "%02x,"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/yf/gattlib/p/g;->d:Z

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    sput p0, Lcom/yf/gattlib/p/g;->a:I

    .line 31
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/yf/gattlib/p/g;->b:Z

    .line 32
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/yf/gattlib/p/g;->c:Z

    .line 33
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x4

    if-gt v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/yf/gattlib/p/g;->d:Z

    .line 34
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x5

    if-gt v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/yf/gattlib/p/g;->e:Z

    .line 35
    sget v0, Lcom/yf/gattlib/p/g;->a:I

    const/4 v3, 0x6

    if-gt v0, v3, :cond_4

    :goto_4
    sput-boolean v1, Lcom/yf/gattlib/p/g;->f:Z

    .line 36
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    :cond_1
    move v0, v2

    .line 32
    goto :goto_1

    :cond_2
    move v0, v2

    .line 33
    goto :goto_2

    :cond_3
    move v0, v2

    .line 34
    goto :goto_3

    :cond_4
    move v1, v2

    .line 35
    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const-string v0, "yuzaixin"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/yf/gattlib/p/g;->c:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/yf/gattlib/p/g;->c:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/yf/gattlib/p/g;->c:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :cond_0
    return-void
.end method

.method public static b()Lcom/yf/gattlib/p/g$d;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/yf/gattlib/p/g$g;->a()Lcom/yf/gattlib/p/g$d;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/yf/gattlib/p/g;->f:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "yuzaixin"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/yf/gattlib/p/g;->d:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method public static c()Lcom/yf/gattlib/p/g$d;
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/yf/gattlib/p/g$f;->a()Lcom/yf/gattlib/p/g$d;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/yf/gattlib/p/g;->f:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "yuzaixin"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/yf/gattlib/p/g;->f:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/yf/gattlib/p/g;->d:Z

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/yf/gattlib/p/g;->e:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method
