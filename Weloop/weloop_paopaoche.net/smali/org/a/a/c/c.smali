.class public Lorg/a/a/c/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static b:Lorg/a/a/c/b;

.field static c:Ljava/lang/Class;


# instance fields
.field a:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/a/a/c/a;

    invoke-direct {v0}, Lorg/a/a/c/a;-><init>()V

    sput-object v0, Lorg/a/a/c/c;->b:Lorg/a/a/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/a/a/c/c;->a:Ljava/util/Hashtable;

    .line 39
    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 52
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

.method public static a(Lorg/a/a/d/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Rendering class: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "], Rendered class: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lorg/a/a/c/c;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.a.a.c.b"

    invoke-static {v0}, Lorg/a/a/c/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/a/a/c/c;->c:Ljava/lang/Class;

    :goto_0
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lorg/a/a/b/k;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/c/b;

    .line 54
    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not instantiate renderer ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->b(Ljava/lang/String;)V

    .line 65
    :goto_1
    return-void

    .line 50
    :cond_0
    sget-object v0, Lorg/a/a/c/c;->c:Ljava/lang/Class;

    goto :goto_0

    .line 59
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/a/a/b/g;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 60
    invoke-interface {p0, v1, v0}, Lorg/a/a/d/m;->a(Ljava/lang/Class;Lorg/a/a/c/b;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/a/a/c/c;->a(Ljava/lang/Class;)Lorg/a/a/c/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/a/a/c/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Lorg/a/a/c/b;
    .locals 1

    .prologue
    .line 147
    .line 148
    :goto_0
    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Lorg/a/a/c/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/c/b;

    .line 151
    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_1
    return-object v0

    .line 154
    :cond_1
    invoke-virtual {p0, p1}, Lorg/a/a/c/c;->b(Ljava/lang/Class;)Lorg/a/a/c/b;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lorg/a/a/c/c;->b:Lorg/a/a/c/b;

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/a/a/c/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 188
    return-void
.end method

.method public a(Ljava/lang/Class;Lorg/a/a/c/b;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/a/a/c/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method b(Ljava/lang/Class;)Lorg/a/a/c/b;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lorg/a/a/c/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/c/b;

    .line 165
    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-object v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 169
    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 170
    aget-object v1, v2, v0

    invoke-virtual {p0, v1}, Lorg/a/a/c/c;->b(Ljava/lang/Class;)Lorg/a/a/c/b;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 172
    goto :goto_0

    .line 169
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
