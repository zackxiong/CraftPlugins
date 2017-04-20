.class public final enum Lcom/yf/smart/weloopx/view/g$a;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yf/smart/weloopx/view/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yf/smart/weloopx/view/g$a;

.field public static final enum b:Lcom/yf/smart/weloopx/view/g$a;

.field public static final enum c:Lcom/yf/smart/weloopx/view/g$a;

.field private static final synthetic d:[Lcom/yf/smart/weloopx/view/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    new-instance v0, Lcom/yf/smart/weloopx/view/g$a;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/view/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/view/g$a;->a:Lcom/yf/smart/weloopx/view/g$a;

    new-instance v0, Lcom/yf/smart/weloopx/view/g$a;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/yf/smart/weloopx/view/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/view/g$a;->b:Lcom/yf/smart/weloopx/view/g$a;

    new-instance v0, Lcom/yf/smart/weloopx/view/g$a;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/yf/smart/weloopx/view/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/view/g$a;->c:Lcom/yf/smart/weloopx/view/g$a;

    .line 332
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yf/smart/weloopx/view/g$a;

    sget-object v1, Lcom/yf/smart/weloopx/view/g$a;->a:Lcom/yf/smart/weloopx/view/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yf/smart/weloopx/view/g$a;->b:Lcom/yf/smart/weloopx/view/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yf/smart/weloopx/view/g$a;->c:Lcom/yf/smart/weloopx/view/g$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yf/smart/weloopx/view/g$a;->d:[Lcom/yf/smart/weloopx/view/g$a;

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
    .line 332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yf/smart/weloopx/view/g$a;
    .locals 1

    .prologue
    .line 332
    const-class v0, Lcom/yf/smart/weloopx/view/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/view/g$a;

    return-object v0
.end method

.method public static values()[Lcom/yf/smart/weloopx/view/g$a;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/yf/smart/weloopx/view/g$a;->d:[Lcom/yf/smart/weloopx/view/g$a;

    invoke-virtual {v0}, [Lcom/yf/smart/weloopx/view/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yf/smart/weloopx/view/g$a;

    return-object v0
.end method
