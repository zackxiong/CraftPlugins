.class Lcom/yf/gattlib/client/f$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/yf/gattlib/client/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/yf/gattlib/client/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/f;-><init>(Lcom/yf/gattlib/client/g;)V

    sput-object v0, Lcom/yf/gattlib/client/f$a;->a:Lcom/yf/gattlib/client/f;

    return-void
.end method

.method static synthetic a()Lcom/yf/gattlib/client/f;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/yf/gattlib/client/f$a;->a:Lcom/yf/gattlib/client/f;

    return-object v0
.end method
