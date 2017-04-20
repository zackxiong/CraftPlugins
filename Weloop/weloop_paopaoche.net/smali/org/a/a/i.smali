.class public Lorg/a/a/i;
.super Lorg/a/a/o;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lorg/a/a/i;

.field public static final b:Lorg/a/a/i;

.field public static final c:Lorg/a/a/i;

.field public static final d:Lorg/a/a/i;

.field public static final e:Lorg/a/a/i;

.field public static final f:Lorg/a/a/i;

.field public static final g:Lorg/a/a/i;

.field public static final h:Lorg/a/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x7

    .line 50
    new-instance v0, Lorg/a/a/i;

    const v1, 0x7fffffff

    const-string v2, "OFF"

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/i;->a:Lorg/a/a/i;

    .line 56
    new-instance v0, Lorg/a/a/i;

    const v1, 0xc350

    const-string v2, "FATAL"

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/i;->b:Lorg/a/a/i;

    .line 61
    new-instance v0, Lorg/a/a/i;

    const v1, 0x9c40

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/i;->c:Lorg/a/a/i;

    .line 66
    new-instance v0, Lorg/a/a/i;

    const/16 v1, 0x7530

    const-string v2, "WARN"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/i;->d:Lorg/a/a/i;

    .line 72
    new-instance v0, Lorg/a/a/i;

    const/16 v1, 0x4e20

    const-string v2, "INFO"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/i;->e:Lorg/a/a/i;

    .line 78
    new-instance v0, Lorg/a/a/i;

    const/16 v1, 0x2710

    const-string v2, "DEBUG"

    invoke-direct {v0, v1, v2, v4}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/i;->f:Lorg/a/a/i;

    .line 85
    new-instance v0, Lorg/a/a/i;

    const/16 v1, 0x1388

    const-string v2, "TRACE"

    invoke-direct {v0, v1, v2, v4}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/i;->g:Lorg/a/a/i;

    .line 91
    new-instance v0, Lorg/a/a/i;

    const/high16 v1, -0x80000000

    const-string v2, "ALL"

    invoke-direct {v0, v1, v2, v4}, Lorg/a/a/i;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/a/a/i;->h:Lorg/a/a/i;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/o;-><init>(ILjava/lang/String;I)V

    .line 104
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/a/a/i;)Lorg/a/a/i;
    .locals 2

    .prologue
    .line 156
    if-nez p0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-object p1

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lorg/a/a/i;->h:Lorg/a/a/i;

    goto :goto_0

    .line 162
    :cond_2
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Lorg/a/a/i;->f:Lorg/a/a/i;

    goto :goto_0

    .line 163
    :cond_3
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lorg/a/a/i;->e:Lorg/a/a/i;

    goto :goto_0

    .line 164
    :cond_4
    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Lorg/a/a/i;->d:Lorg/a/a/i;

    goto :goto_0

    .line 165
    :cond_5
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p1, Lorg/a/a/i;->c:Lorg/a/a/i;

    goto :goto_0

    .line 166
    :cond_6
    const-string v1, "FATAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p1, Lorg/a/a/i;->b:Lorg/a/a/i;

    goto :goto_0

    .line 167
    :cond_7
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object p1, Lorg/a/a/i;->a:Lorg/a/a/i;

    goto :goto_0

    .line 168
    :cond_8
    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/a/a/i;->g:Lorg/a/a/i;

    goto :goto_0
.end method
