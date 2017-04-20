.class public Lorg/a/a/b/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:Ljava/lang/Class;

.field static b:Ljava/lang/Class;

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    sput-boolean v4, Lorg/a/a/b/g;->c:Z

    .line 38
    sput-boolean v3, Lorg/a/a/b/g;->d:Z

    .line 41
    const-string v0, "java.version"

    invoke-static {v0, v5}, Lorg/a/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 45
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 46
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 47
    sput-boolean v3, Lorg/a/a/b/g;->c:Z

    .line 50
    :cond_0
    const-string v0, "log4j.ignoreTCL"

    invoke-static {v0, v5}, Lorg/a/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-static {v0, v4}, Lorg/a/a/b/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/a/a/b/g;->d:Z

    .line 54
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .prologue
    .line 87
    .line 91
    :try_start_0
    sget-boolean v0, Lorg/a/a/b/g;->c:Z

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lorg/a/a/b/g;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Trying to find ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] using context classloader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    sget-object v0, Lorg/a/a/b/g;->a:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "org.a.a.b.g"

    invoke-static {v0}, Lorg/a/a/b/g;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/a/a/b/g;->a:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Trying to find ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " class loader."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 122
    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Trying to find ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] using ClassLoader.getSystemResource()."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_3
    :try_start_1
    sget-object v0, Lorg/a/a/b/g;->a:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "Caught Exception while in Loader.getResource. This may be innocuous."

    invoke-static {v1, v0}, Lorg/a/a/b/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lorg/a/a/b/g;->c:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lorg/a/a/b/g;->c:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/a/a/b/g;->d:Z

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 173
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/a/a/b/g;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 178
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private static b()Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 148
    :try_start_0
    sget-object v1, Lorg/a/a/b/g;->b:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Thread"

    invoke-static {v1}, Lorg/a/a/b/g;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/a/a/b/g;->b:Ljava/lang/Class;

    :goto_0
    const-string v2, "getContextClassLoader"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :goto_1
    return-object v0

    .line 148
    :cond_0
    :try_start_1
    sget-object v1, Lorg/a/a/b/g;->b:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 105
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
