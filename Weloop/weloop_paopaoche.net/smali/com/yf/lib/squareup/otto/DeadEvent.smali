.class public Lcom/yf/lib/squareup/otto/DeadEvent;
.super Lcom/yf/lib/b/a;
.source "ProGuard"


# instance fields
.field public final event:Ljava/lang/Object;

.field public final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yf/lib/b/a;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yf/lib/squareup/otto/DeadEvent;->source:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/yf/lib/squareup/otto/DeadEvent;->event:Ljava/lang/Object;

    .line 43
    return-void
.end method
