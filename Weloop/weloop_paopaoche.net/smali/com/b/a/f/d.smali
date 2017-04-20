.class public Lcom/b/a/f/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/f/d$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Lcom/b/a/f/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/b/a/f/d;->a:Ljava/lang/String;

    .line 37
    sput-boolean v1, Lcom/b/a/f/d;->b:Z

    .line 38
    sput-boolean v1, Lcom/b/a/f/d;->c:Z

    .line 39
    sput-boolean v1, Lcom/b/a/f/d;->d:Z

    .line 40
    sput-boolean v1, Lcom/b/a/f/d;->e:Z

    .line 41
    sput-boolean v1, Lcom/b/a/f/d;->f:Z

    .line 42
    sput-boolean v1, Lcom/b/a/f/d;->g:Z

    return-void
.end method

.method private static a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v0, "%s.%s(L:%d)"

    .line 46
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/b/a/f/d;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/b/a/f/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    sget-boolean v0, Lcom/b/a/f/d;->b:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/b/a/f/e;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/b/a/f/d;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/b/a/f/d;->h:Lcom/b/a/f/d$a;

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lcom/b/a/f/d;->h:Lcom/b/a/f/d$a;

    invoke-interface {v1, v0, p0}, Lcom/b/a/f/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 122
    sget-boolean v0, Lcom/b/a/f/d;->c:Z

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/b/a/f/e;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/b/a/f/d;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/b/a/f/d;->h:Lcom/b/a/f/d$a;

    if-eqz v1, :cond_1

    .line 127
    sget-object v1, Lcom/b/a/f/d;->h:Lcom/b/a/f/d$a;

    invoke-interface {v1, v0, p0, p1}, Lcom/b/a/f/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 206
    sget-boolean v0, Lcom/b/a/f/d;->f:Z

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {}, Lcom/b/a/f/e;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/b/a/f/d;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/b/a/f/d;->h:Lcom/b/a/f/d$a;

    if-eqz v1, :cond_1

    .line 211
    sget-object v1, Lcom/b/a/f/d;->h:Lcom/b/a/f/d$a;

    invoke-interface {v1, v0, p0}, Lcom/b/a/f/d$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    sget-boolean v0, Lcom/b/a/f/d;->c:Z

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/b/a/f/e;->a()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/b/a/f/d;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/b/a/f/d;->h:Lcom/b/a/f/d$a;

    if-eqz v1, :cond_1

    .line 115
    sget-object v1, Lcom/b/a/f/d;->h:Lcom/b/a/f/d$a;

    invoke-interface {v1, v0, p0}, Lcom/b/a/f/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
