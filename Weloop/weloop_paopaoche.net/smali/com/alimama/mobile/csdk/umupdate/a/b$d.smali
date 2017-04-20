.class public final enum Lcom/alimama/mobile/csdk/umupdate/a/b$d;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alimama/mobile/csdk/umupdate/a/b$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

.field public static final enum b:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

.field public static final enum c:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

.field private static final synthetic d:[Lcom/alimama/mobile/csdk/umupdate/a/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->a:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    .line 289
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/alimama/mobile/csdk/umupdate/a/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->b:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    .line 293
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/alimama/mobile/csdk/umupdate/a/b$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->c:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    .line 281
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->a:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->b:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->c:Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->d:[Lcom/alimama/mobile/csdk/umupdate/a/b$d;

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
    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/a/b$d;
    .locals 1

    .prologue
    .line 281
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    return-object v0
.end method

.method public static values()[Lcom/alimama/mobile/csdk/umupdate/a/b$d;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/b$d;->d:[Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    invoke-virtual {v0}, [Lcom/alimama/mobile/csdk/umupdate/a/b$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alimama/mobile/csdk/umupdate/a/b$d;

    return-object v0
.end method
