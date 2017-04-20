.class Lcom/yf/lib/squareup/otto/c;
.super Ljava/lang/ThreadLocal;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/concurrent/ConcurrentLinkedQueue",
        "<",
        "Lcom/yf/lib/squareup/otto/b$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/lib/squareup/otto/b;


# direct methods
.method constructor <init>(Lcom/yf/lib/squareup/otto/b;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/yf/lib/squareup/otto/c;->a:Lcom/yf/lib/squareup/otto/b;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/yf/lib/squareup/otto/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/yf/lib/squareup/otto/c;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method
