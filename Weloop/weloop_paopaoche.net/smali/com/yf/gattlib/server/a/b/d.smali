.class public Lcom/yf/gattlib/server/a/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/server/a/b/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "7905F431-B5CE-4E99-A40F-4B1E122D00D0"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/server/a/b/d;->a:Ljava/util/UUID;

    return-void
.end method
