.class Lcom/yf/gattlib/client/dfu/b$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/dfu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/yf/gattlib/client/dfu/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/yf/gattlib/client/dfu/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/dfu/b;-><init>(Lcom/yf/gattlib/client/dfu/c;)V

    sput-object v0, Lcom/yf/gattlib/client/dfu/b$a;->a:Lcom/yf/gattlib/client/dfu/b;

    return-void
.end method

.method static synthetic a()Lcom/yf/gattlib/client/dfu/b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/yf/gattlib/client/dfu/b$a;->a:Lcom/yf/gattlib/client/dfu/b;

    return-object v0
.end method
