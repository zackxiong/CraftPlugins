.class interface abstract Lcom/yf/lib/squareup/otto/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/yf/lib/squareup/otto/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yf/lib/squareup/otto/h;

    invoke-direct {v0}, Lcom/yf/lib/squareup/otto/h;-><init>()V

    sput-object v0, Lcom/yf/lib/squareup/otto/g;->a:Lcom/yf/lib/squareup/otto/g;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/yf/lib/squareup/otto/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/yf/lib/squareup/otto/e;",
            ">;>;"
        }
    .end annotation
.end method
