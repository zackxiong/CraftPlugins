.class public final enum Lcom/yf/smart/weloopx/android/services/a;
.super Ljava/lang/Enum;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yf/smart/weloopx/android/services/a;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yf/smart/weloopx/android/services/a;

.field public static final enum b:Lcom/yf/smart/weloopx/android/services/a;

.field public static final enum c:Lcom/yf/smart/weloopx/android/services/a;

.field private static final synthetic e:[Lcom/yf/smart/weloopx/android/services/a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/yf/smart/weloopx/android/services/a;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3, v3}, Lcom/yf/smart/weloopx/android/services/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yf/smart/weloopx/android/services/a;->a:Lcom/yf/smart/weloopx/android/services/a;

    .line 10
    new-instance v0, Lcom/yf/smart/weloopx/android/services/a;

    const-string v1, "run"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/yf/smart/weloopx/android/services/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yf/smart/weloopx/android/services/a;->b:Lcom/yf/smart/weloopx/android/services/a;

    .line 11
    new-instance v0, Lcom/yf/smart/weloopx/android/services/a;

    const-string v1, "car"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v5, v2}, Lcom/yf/smart/weloopx/android/services/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yf/smart/weloopx/android/services/a;->c:Lcom/yf/smart/weloopx/android/services/a;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yf/smart/weloopx/android/services/a;

    sget-object v1, Lcom/yf/smart/weloopx/android/services/a;->a:Lcom/yf/smart/weloopx/android/services/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yf/smart/weloopx/android/services/a;->b:Lcom/yf/smart/weloopx/android/services/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yf/smart/weloopx/android/services/a;->c:Lcom/yf/smart/weloopx/android/services/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yf/smart/weloopx/android/services/a;->e:[Lcom/yf/smart/weloopx/android/services/a;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/yf/smart/weloopx/android/services/a;->d:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yf/smart/weloopx/android/services/a;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yf/smart/weloopx/android/services/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/services/a;

    return-object v0
.end method

.method public static values()[Lcom/yf/smart/weloopx/android/services/a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yf/smart/weloopx/android/services/a;->e:[Lcom/yf/smart/weloopx/android/services/a;

    invoke-virtual {v0}, [Lcom/yf/smart/weloopx/android/services/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yf/smart/weloopx/android/services/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/yf/smart/weloopx/android/services/a;->d:I

    return v0
.end method
