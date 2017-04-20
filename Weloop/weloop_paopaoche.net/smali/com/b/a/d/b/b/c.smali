.class public final enum Lcom/b/a/d/b/b/c;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/d/b/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/d/b/b/c;

.field public static final enum b:Lcom/b/a/d/b/b/c;

.field private static final synthetic c:[Lcom/b/a/d/b/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/b/a/d/b/b/c;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/b/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/d/b/b/c;->a:Lcom/b/a/d/b/b/c;

    .line 30
    new-instance v0, Lcom/b/a/d/b/b/c;

    const-string v1, "BROWSER_COMPATIBLE"

    invoke-direct {v0, v1, v3}, Lcom/b/a/d/b/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/d/b/b/c;->b:Lcom/b/a/d/b/b/c;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/b/a/d/b/b/c;

    sget-object v1, Lcom/b/a/d/b/b/c;->a:Lcom/b/a/d/b/b/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/d/b/b/c;->b:Lcom/b/a/d/b/b/c;

    aput-object v1, v0, v3

    sput-object v0, Lcom/b/a/d/b/b/c;->c:[Lcom/b/a/d/b/b/c;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/d/b/b/c;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/b/a/d/b/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/b/b/c;

    return-object v0
.end method

.method public static values()[Lcom/b/a/d/b/b/c;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/b/a/d/b/b/c;->c:[Lcom/b/a/d/b/b/c;

    invoke-virtual {v0}, [Lcom/b/a/d/b/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/d/b/b/c;

    return-object v0
.end method
