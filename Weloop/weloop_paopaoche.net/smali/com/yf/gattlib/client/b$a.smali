.class Lcom/yf/gattlib/client/b$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/yf/gattlib/client/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/yf/gattlib/client/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b;-><init>(Lcom/yf/gattlib/client/b$1;)V

    sput-object v0, Lcom/yf/gattlib/client/b$a;->a:Lcom/yf/gattlib/client/b;

    return-void
.end method
