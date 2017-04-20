.class Lcom/yf/lib/squareup/otto/b$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/squareup/otto/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/yf/lib/squareup/otto/e;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/yf/lib/squareup/otto/e;)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/yf/lib/squareup/otto/b$a;->a:Ljava/lang/Object;

    .line 479
    iput-object p2, p0, Lcom/yf/lib/squareup/otto/b$a;->b:Lcom/yf/lib/squareup/otto/e;

    .line 480
    return-void
.end method
