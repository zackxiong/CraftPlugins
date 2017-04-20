.class public final enum Lcom/handmark/pulltorefresh/library/e$b;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/handmark/pulltorefresh/library/e$b;

.field public static final enum b:Lcom/handmark/pulltorefresh/library/e$b;

.field public static final enum c:Lcom/handmark/pulltorefresh/library/e$b;

.field public static final enum d:Lcom/handmark/pulltorefresh/library/e$b;

.field public static final enum e:Lcom/handmark/pulltorefresh/library/e$b;

.field public static f:Lcom/handmark/pulltorefresh/library/e$b;

.field public static g:Lcom/handmark/pulltorefresh/library/e$b;

.field private static final synthetic i:[Lcom/handmark/pulltorefresh/library/e$b;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1414
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$b;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2, v2}, Lcom/handmark/pulltorefresh/library/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$b;->a:Lcom/handmark/pulltorefresh/library/e$b;

    .line 1421
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$b;

    const-string v1, "PULL_FROM_START"

    invoke-direct {v0, v1, v3, v3}, Lcom/handmark/pulltorefresh/library/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    .line 1428
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$b;

    const-string v1, "PULL_FROM_END"

    invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    .line 1433
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$b;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    .line 1440
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$b;

    const-string v1, "MANUAL_REFRESH_ONLY"

    invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/e$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$b;->e:Lcom/handmark/pulltorefresh/library/e$b;

    .line 1409
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/e$b;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->a:Lcom/handmark/pulltorefresh/library/e$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$b;->e:Lcom/handmark/pulltorefresh/library/e$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$b;->i:[Lcom/handmark/pulltorefresh/library/e$b;

    .line 1445
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$b;->f:Lcom/handmark/pulltorefresh/library/e$b;

    .line 1450
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$b;->g:Lcom/handmark/pulltorefresh/library/e$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1479
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1480
    iput p3, p0, Lcom/handmark/pulltorefresh/library/e$b;->h:I

    .line 1481
    return-void
.end method

.method static a()Lcom/handmark/pulltorefresh/library/e$b;
    .locals 1

    .prologue
    .line 1473
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    return-object v0
.end method

.method static a(I)Lcom/handmark/pulltorefresh/library/e$b;
    .locals 5

    .prologue
    .line 1462
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$b;->values()[Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1463
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$b;->e()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 1469
    :goto_1
    return-object v0

    .line 1462
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1469
    :cond_1
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$b;->a()Lcom/handmark/pulltorefresh/library/e$b;

    move-result-object v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/e$b;
    .locals 1

    .prologue
    .line 1409
    const-class v0, Lcom/handmark/pulltorefresh/library/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/e$b;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/e$b;
    .locals 1

    .prologue
    .line 1409
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->i:[Lcom/handmark/pulltorefresh/library/e$b;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/e$b;

    return-object v0
.end method


# virtual methods
.method b()Z
    .locals 1

    .prologue
    .line 1487
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->a:Lcom/handmark/pulltorefresh/library/e$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->e:Lcom/handmark/pulltorefresh/library/e$b;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1494
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->b:Lcom/handmark/pulltorefresh/library/e$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1501
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->c:Lcom/handmark/pulltorefresh/library/e$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->d:Lcom/handmark/pulltorefresh/library/e$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/handmark/pulltorefresh/library/e$b;->e:Lcom/handmark/pulltorefresh/library/e$b;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()I
    .locals 1

    .prologue
    .line 1506
    iget v0, p0, Lcom/handmark/pulltorefresh/library/e$b;->h:I

    return v0
.end method
