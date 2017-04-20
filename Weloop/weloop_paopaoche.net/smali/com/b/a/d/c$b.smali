.class public final enum Lcom/b/a/d/c$b;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/d/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/d/c$b;

.field public static final enum b:Lcom/b/a/d/c$b;

.field public static final enum c:Lcom/b/a/d/c$b;

.field public static final enum d:Lcom/b/a/d/c$b;

.field public static final enum e:Lcom/b/a/d/c$b;

.field public static final enum f:Lcom/b/a/d/c$b;

.field private static final synthetic h:[Lcom/b/a/d/c$b;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    new-instance v0, Lcom/b/a/d/c$b;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v4, v4}, Lcom/b/a/d/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/d/c$b;->a:Lcom/b/a/d/c$b;

    new-instance v0, Lcom/b/a/d/c$b;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/b/a/d/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/d/c$b;->b:Lcom/b/a/d/c$b;

    new-instance v0, Lcom/b/a/d/c$b;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v6, v6}, Lcom/b/a/d/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/d/c$b;->c:Lcom/b/a/d/c$b;

    new-instance v0, Lcom/b/a/d/c$b;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v7, v7}, Lcom/b/a/d/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/d/c$b;->d:Lcom/b/a/d/c$b;

    new-instance v0, Lcom/b/a/d/c$b;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v8, v8}, Lcom/b/a/d/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/d/c$b;->e:Lcom/b/a/d/c$b;

    new-instance v0, Lcom/b/a/d/c$b;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/d/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/d/c$b;->f:Lcom/b/a/d/c$b;

    .line 312
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/b/a/d/c$b;

    sget-object v1, Lcom/b/a/d/c$b;->a:Lcom/b/a/d/c$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/d/c$b;->b:Lcom/b/a/d/c$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/d/c$b;->c:Lcom/b/a/d/c$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/d/c$b;->d:Lcom/b/a/d/c$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/d/c$b;->e:Lcom/b/a/d/c$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/d/c$b;->f:Lcom/b/a/d/c$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/d/c$b;->h:[Lcom/b/a/d/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/d/c$b;->g:I

    .line 317
    iput p3, p0, Lcom/b/a/d/c$b;->g:I

    .line 318
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/d/c$b;
    .locals 1

    .prologue
    .line 312
    const-class v0, Lcom/b/a/d/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/c$b;

    return-object v0
.end method

.method public static values()[Lcom/b/a/d/c$b;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/b/a/d/c$b;->h:[Lcom/b/a/d/c$b;

    invoke-virtual {v0}, [Lcom/b/a/d/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/d/c$b;

    return-object v0
.end method
