.class public final enum Lcom/yf/smart/weloopx/d/c;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yf/smart/weloopx/d/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yf/smart/weloopx/d/c;

.field public static final enum b:Lcom/yf/smart/weloopx/d/c;

.field public static final enum c:Lcom/yf/smart/weloopx/d/c;

.field public static final enum d:Lcom/yf/smart/weloopx/d/c;

.field public static final enum e:Lcom/yf/smart/weloopx/d/c;

.field public static final enum f:Lcom/yf/smart/weloopx/d/c;

.field private static final synthetic g:[Lcom/yf/smart/weloopx/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/yf/smart/weloopx/d/c;

    const-string v1, "on_app_create"

    invoke-direct {v0, v1, v3}, Lcom/yf/smart/weloopx/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/d/c;->a:Lcom/yf/smart/weloopx/d/c;

    .line 8
    new-instance v0, Lcom/yf/smart/weloopx/d/c;

    const-string v1, "activity_register_start"

    invoke-direct {v0, v1, v4}, Lcom/yf/smart/weloopx/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/d/c;->b:Lcom/yf/smart/weloopx/d/c;

    .line 9
    new-instance v0, Lcom/yf/smart/weloopx/d/c;

    const-string v1, "activity_main_tab_fragment"

    invoke-direct {v0, v1, v5}, Lcom/yf/smart/weloopx/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/d/c;->c:Lcom/yf/smart/weloopx/d/c;

    .line 10
    new-instance v0, Lcom/yf/smart/weloopx/d/c;

    const-string v1, "activity_statistics_tab_fragment"

    invoke-direct {v0, v1, v6}, Lcom/yf/smart/weloopx/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/d/c;->d:Lcom/yf/smart/weloopx/d/c;

    .line 11
    new-instance v0, Lcom/yf/smart/weloopx/d/c;

    const-string v1, "upload_original_start"

    invoke-direct {v0, v1, v7}, Lcom/yf/smart/weloopx/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/d/c;->e:Lcom/yf/smart/weloopx/d/c;

    .line 12
    new-instance v0, Lcom/yf/smart/weloopx/d/c;

    const-string v1, "download_statistics"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yf/smart/weloopx/d/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/smart/weloopx/d/c;->f:Lcom/yf/smart/weloopx/d/c;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yf/smart/weloopx/d/c;

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->a:Lcom/yf/smart/weloopx/d/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->b:Lcom/yf/smart/weloopx/d/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->c:Lcom/yf/smart/weloopx/d/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->d:Lcom/yf/smart/weloopx/d/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yf/smart/weloopx/d/c;->e:Lcom/yf/smart/weloopx/d/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yf/smart/weloopx/d/c;->f:Lcom/yf/smart/weloopx/d/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yf/smart/weloopx/d/c;->g:[Lcom/yf/smart/weloopx/d/c;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yf/smart/weloopx/d/c;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/yf/smart/weloopx/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/d/c;

    return-object v0
.end method

.method public static values()[Lcom/yf/smart/weloopx/d/c;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/yf/smart/weloopx/d/c;->g:[Lcom/yf/smart/weloopx/d/c;

    invoke-virtual {v0}, [Lcom/yf/smart/weloopx/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yf/smart/weloopx/d/c;

    return-object v0
.end method
