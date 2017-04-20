.class Lcom/yf/gattlib/client/c$e;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Ljava/util/UUID;

.field b:Ljava/util/UUID;

.field final synthetic c:Lcom/yf/gattlib/client/c;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/client/c;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yf/gattlib/client/c$e;->c:Lcom/yf/gattlib/client/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/yf/gattlib/client/c$e;->a:Ljava/util/UUID;

    .line 80
    iput-object p3, p0, Lcom/yf/gattlib/client/c$e;->b:Ljava/util/UUID;

    .line 81
    return-void
.end method
