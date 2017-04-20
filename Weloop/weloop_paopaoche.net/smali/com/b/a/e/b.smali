.class public final enum Lcom/b/a/e/b;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/e/b;

.field public static final enum b:Lcom/b/a/e/b;

.field public static final enum c:Lcom/b/a/e/b;

.field public static final enum d:Lcom/b/a/e/b;

.field public static final enum e:Lcom/b/a/e/b;

.field public static final enum f:Lcom/b/a/e/b;

.field public static final enum g:Lcom/b/a/e/b;

.field private static final synthetic h:[Lcom/b/a/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/b/a/e/b;

    const-string v1, "UI_TOP"

    invoke-direct {v0, v1, v3}, Lcom/b/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/e/b;->a:Lcom/b/a/e/b;

    .line 10
    new-instance v0, Lcom/b/a/e/b;

    const-string v1, "UI_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/b/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/e/b;->b:Lcom/b/a/e/b;

    .line 11
    new-instance v0, Lcom/b/a/e/b;

    const-string v1, "UI_LOW"

    invoke-direct {v0, v1, v5}, Lcom/b/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/e/b;->c:Lcom/b/a/e/b;

    .line 12
    new-instance v0, Lcom/b/a/e/b;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v6}, Lcom/b/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/e/b;->d:Lcom/b/a/e/b;

    .line 13
    new-instance v0, Lcom/b/a/e/b;

    const-string v1, "BG_TOP"

    invoke-direct {v0, v1, v7}, Lcom/b/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/e/b;->e:Lcom/b/a/e/b;

    .line 14
    new-instance v0, Lcom/b/a/e/b;

    const-string v1, "BG_NORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/b/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/e/b;->f:Lcom/b/a/e/b;

    .line 15
    new-instance v0, Lcom/b/a/e/b;

    const-string v1, "BG_LOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/b/a/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/e/b;->g:Lcom/b/a/e/b;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/b/a/e/b;

    sget-object v1, Lcom/b/a/e/b;->a:Lcom/b/a/e/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/e/b;->b:Lcom/b/a/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/e/b;->c:Lcom/b/a/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/e/b;->d:Lcom/b/a/e/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/e/b;->e:Lcom/b/a/e/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/e/b;->f:Lcom/b/a/e/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/e/b;->g:Lcom/b/a/e/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/e/b;->h:[Lcom/b/a/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/e/b;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/b/a/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/e/b;

    return-object v0
.end method

.method public static values()[Lcom/b/a/e/b;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/b/a/e/b;->h:[Lcom/b/a/e/b;

    invoke-virtual {v0}, [Lcom/b/a/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/e/b;

    return-object v0
.end method
