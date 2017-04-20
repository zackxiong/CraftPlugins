.class public final Lcom/yf/lib/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Lcom/yf/lib/squareup/otto/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/yf/lib/squareup/otto/b;

    sget-object v1, Lcom/yf/lib/squareup/otto/k;->a:Lcom/yf/lib/squareup/otto/k;

    const-string v2, "weloop"

    invoke-direct {v0, v1, v2}, Lcom/yf/lib/squareup/otto/b;-><init>(Lcom/yf/lib/squareup/otto/k;Ljava/lang/String;)V

    sput-object v0, Lcom/yf/lib/a/a;->a:Lcom/yf/lib/squareup/otto/b;

    return-void
.end method

.method public static final a()Lcom/yf/lib/squareup/otto/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yf/lib/a/a;->a:Lcom/yf/lib/squareup/otto/b;

    return-object v0
.end method
