.class public final enum Lcom/b/a/d/b/c$a;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/d/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/d/b/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/d/b/c$a;

.field public static final enum b:Lcom/b/a/d/b/c$a;

.field public static final enum c:Lcom/b/a/d/b/c$a;

.field public static final enum d:Lcom/b/a/d/b/c$a;

.field public static final enum e:Lcom/b/a/d/b/c$a;

.field public static final enum f:Lcom/b/a/d/b/c$a;

.field public static final enum g:Lcom/b/a/d/b/c$a;

.field public static final enum h:Lcom/b/a/d/b/c$a;

.field public static final enum i:Lcom/b/a/d/b/c$a;

.field public static final enum j:Lcom/b/a/d/b/c$a;

.field private static final synthetic l:[Lcom/b/a/d/b/c$a;


# instance fields
.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v4, v2}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->a:Lcom/b/a/d/b/c$a;

    .line 191
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v5, v2}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    .line 192
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v6, v2}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->c:Lcom/b/a/d/b/c$a;

    .line 193
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    invoke-direct {v0, v1, v7, v2}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->d:Lcom/b/a/d/b/c$a;

    .line 194
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "MOVE"

    const-string v2, "MOVE"

    invoke-direct {v0, v1, v8, v2}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->e:Lcom/b/a/d/b/c$a;

    .line 195
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "COPY"

    const/4 v2, 0x5

    const-string v3, "COPY"

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->f:Lcom/b/a/d/b/c$a;

    .line 196
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "DELETE"

    const/4 v2, 0x6

    const-string v3, "DELETE"

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->g:Lcom/b/a/d/b/c$a;

    .line 197
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "OPTIONS"

    const/4 v2, 0x7

    const-string v3, "OPTIONS"

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->h:Lcom/b/a/d/b/c$a;

    .line 198
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "TRACE"

    const/16 v2, 0x8

    const-string v3, "TRACE"

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->i:Lcom/b/a/d/b/c$a;

    .line 199
    new-instance v0, Lcom/b/a/d/b/c$a;

    const-string v1, "CONNECT"

    const/16 v2, 0x9

    const-string v3, "CONNECT"

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/d/b/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/d/b/c$a;->j:Lcom/b/a/d/b/c$a;

    .line 189
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/b/a/d/b/c$a;

    sget-object v1, Lcom/b/a/d/b/c$a;->a:Lcom/b/a/d/b/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/d/b/c$a;->b:Lcom/b/a/d/b/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/d/b/c$a;->c:Lcom/b/a/d/b/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/d/b/c$a;->d:Lcom/b/a/d/b/c$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/d/b/c$a;->e:Lcom/b/a/d/b/c$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/d/b/c$a;->f:Lcom/b/a/d/b/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/d/b/c$a;->g:Lcom/b/a/d/b/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/b/a/d/b/c$a;->h:Lcom/b/a/d/b/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/b/a/d/b/c$a;->i:Lcom/b/a/d/b/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/b/a/d/b/c$a;->j:Lcom/b/a/d/b/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/d/b/c$a;->l:[Lcom/b/a/d/b/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    iput-object p3, p0, Lcom/b/a/d/b/c$a;->k:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/d/b/c$a;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/b/a/d/b/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/c$a;

    return-object v0
.end method

.method public static values()[Lcom/b/a/d/b/c$a;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/b/a/d/b/c$a;->l:[Lcom/b/a/d/b/c$a;

    invoke-virtual {v0}, [Lcom/b/a/d/b/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/d/b/c$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/b/a/d/b/c$a;->k:Ljava/lang/String;

    return-object v0
.end method
