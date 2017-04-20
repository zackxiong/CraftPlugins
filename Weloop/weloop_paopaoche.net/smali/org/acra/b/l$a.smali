.class final enum Lorg/acra/b/l$a;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/acra/b/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/acra/b/l$a;

.field public static final enum b:Lorg/acra/b/l$a;

.field public static final enum c:Lorg/acra/b/l$a;

.field public static final enum d:Lorg/acra/b/l$a;

.field private static final synthetic e:[Lorg/acra/b/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/acra/b/l$a;

    const-string v1, "AVC"

    invoke-direct {v0, v1, v2}, Lorg/acra/b/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/b/l$a;->a:Lorg/acra/b/l$a;

    new-instance v0, Lorg/acra/b/l$a;

    const-string v1, "H263"

    invoke-direct {v0, v1, v3}, Lorg/acra/b/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/b/l$a;->b:Lorg/acra/b/l$a;

    new-instance v0, Lorg/acra/b/l$a;

    const-string v1, "MPEG4"

    invoke-direct {v0, v1, v4}, Lorg/acra/b/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/b/l$a;->c:Lorg/acra/b/l$a;

    new-instance v0, Lorg/acra/b/l$a;

    const-string v1, "AAC"

    invoke-direct {v0, v1, v5}, Lorg/acra/b/l$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/b/l$a;->d:Lorg/acra/b/l$a;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/acra/b/l$a;

    sget-object v1, Lorg/acra/b/l$a;->a:Lorg/acra/b/l$a;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/b/l$a;->b:Lorg/acra/b/l$a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/b/l$a;->c:Lorg/acra/b/l$a;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/b/l$a;->d:Lorg/acra/b/l$a;

    aput-object v1, v0, v5

    sput-object v0, Lorg/acra/b/l$a;->e:[Lorg/acra/b/l$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/b/l$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/acra/b/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/b/l$a;

    return-object v0
.end method

.method public static values()[Lorg/acra/b/l$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/acra/b/l$a;->e:[Lorg/acra/b/l$a;

    array-length v1, v0

    new-array v2, v1, [Lorg/acra/b/l$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
