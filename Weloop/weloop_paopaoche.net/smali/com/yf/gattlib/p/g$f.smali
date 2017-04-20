.class Lcom/yf/gattlib/p/g$f;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/p/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static final a:Lcom/yf/gattlib/p/g$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/yf/gattlib/p/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/p/g$a;-><init>(Lcom/yf/gattlib/p/g$1;)V

    sput-object v0, Lcom/yf/gattlib/p/g$f;->a:Lcom/yf/gattlib/p/g$d;

    return-void
.end method

.method static synthetic a()Lcom/yf/gattlib/p/g$d;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/yf/gattlib/p/g$f;->a:Lcom/yf/gattlib/p/g$d;

    return-object v0
.end method
