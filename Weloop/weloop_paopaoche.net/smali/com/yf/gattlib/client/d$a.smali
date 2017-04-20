.class Lcom/yf/gattlib/client/d$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/yf/gattlib/client/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/yf/gattlib/client/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/d;-><init>(Lcom/yf/gattlib/client/d$1;)V

    sput-object v0, Lcom/yf/gattlib/client/d$a;->a:Lcom/yf/gattlib/client/d;

    return-void
.end method
