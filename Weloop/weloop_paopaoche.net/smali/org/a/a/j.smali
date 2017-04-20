.class public Lorg/a/a/j;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lorg/a/a/d/n;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    sput-object v3, Lorg/a/a/j;->a:Ljava/lang/Object;

    .line 78
    new-instance v0, Lorg/a/a/g;

    new-instance v1, Lorg/a/a/d/o;

    sget-object v2, Lorg/a/a/i;->f:Lorg/a/a/i;

    invoke-direct {v1, v2}, Lorg/a/a/d/o;-><init>(Lorg/a/a/i;)V

    invoke-direct {v0, v1}, Lorg/a/a/g;-><init>(Lorg/a/a/k;)V

    .line 79
    new-instance v1, Lorg/a/a/d/c;

    invoke-direct {v1, v0}, Lorg/a/a/d/c;-><init>(Lorg/a/a/d/i;)V

    sput-object v1, Lorg/a/a/j;->b:Lorg/a/a/d/n;

    .line 82
    const-string v0, "log4j.defaultInitOverride"

    invoke-static {v0, v3}, Lorg/a/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    :cond_0
    const-string v0, "log4j.configuration"

    invoke-static {v0, v3}, Lorg/a/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v0, "log4j.configuratorClass"

    invoke-static {v0, v3}, Lorg/a/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    if-nez v1, :cond_3

    .line 103
    const-string v0, "log4j.xml"

    invoke-static {v0}, Lorg/a/a/b/g;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 104
    if-nez v0, :cond_1

    .line 105
    const-string v0, "log4j.properties"

    invoke-static {v0}, Lorg/a/a/b/g;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 120
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 121
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Using URL ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "] for automatic log4j configuration."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lorg/a/a/j;->a()Lorg/a/a/d/i;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/a/a/b/k;->a(Ljava/net/URL;Ljava/lang/String;Lorg/a/a/d/i;)V

    .line 128
    :cond_2
    :goto_1
    return-void

    .line 109
    :cond_3
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v1}, Lorg/a/a/b/g;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find resource: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a()Lorg/a/a/d/i;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lorg/a/a/j;->b:Lorg/a/a/d/n;

    invoke-interface {v0}, Lorg/a/a/d/n;->a()Lorg/a/a/d/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/a/a/k;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lorg/a/a/j;->b:Lorg/a/a/d/n;

    invoke-interface {v0}, Lorg/a/a/d/n;->a()Lorg/a/a/d/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/a/a/d/i;->a(Ljava/lang/String;)Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lorg/a/a/k;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lorg/a/a/j;->b:Lorg/a/a/d/n;

    invoke-interface {v0}, Lorg/a/a/d/n;->a()Lorg/a/a/d/i;

    move-result-object v0

    invoke-interface {v0}, Lorg/a/a/d/i;->d()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method
