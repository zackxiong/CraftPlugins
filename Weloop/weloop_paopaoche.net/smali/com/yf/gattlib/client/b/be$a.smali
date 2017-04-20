.class Lcom/yf/gattlib/client/b/be$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/b/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/yf/gattlib/client/b/be;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/yf/gattlib/client/b/be;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/client/b/be;-><init>(Lcom/yf/gattlib/client/b/bf;)V

    sput-object v0, Lcom/yf/gattlib/client/b/be$a;->a:Lcom/yf/gattlib/client/b/be;

    return-void
.end method
