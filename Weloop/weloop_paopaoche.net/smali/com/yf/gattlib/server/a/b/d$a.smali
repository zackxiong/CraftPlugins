.class public Lcom/yf/gattlib/server/a/b/d$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/server/a/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/util/UUID;

.field public static final b:Ljava/util/UUID;

.field public static final c:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "9FBF120D-6301-42D9-8C58-25E699A21DBD"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/server/a/b/d$a;->a:Ljava/util/UUID;

    .line 10
    const-string v0, "69D1D8F3-45E1-49A8-9821-9BBDFDAAD9D9"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/server/a/b/d$a;->b:Ljava/util/UUID;

    .line 11
    const-string v0, "22EAC6E9-24D6-4BB5-BE44-B36ACE7C7BFB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/server/a/b/d$a;->c:Ljava/util/UUID;

    return-void
.end method
