.class Lcom/yf/gattlib/client/c$c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/yf/gattlib/client/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/yf/gattlib/client/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/c;-><init>(Lcom/yf/gattlib/client/c$1;)V

    sput-object v0, Lcom/yf/gattlib/client/c$c;->a:Lcom/yf/gattlib/client/c;

    return-void
.end method
