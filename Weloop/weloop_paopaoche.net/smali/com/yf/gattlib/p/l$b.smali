.class Lcom/yf/gattlib/p/l$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/p/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/yf/gattlib/p/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/yf/gattlib/p/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/p/l;-><init>(Lcom/yf/gattlib/p/m;)V

    sput-object v0, Lcom/yf/gattlib/p/l$b;->a:Lcom/yf/gattlib/p/l;

    return-void
.end method

.method static synthetic a()Lcom/yf/gattlib/p/l;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yf/gattlib/p/l$b;->a:Lcom/yf/gattlib/p/l;

    return-object v0
.end method
