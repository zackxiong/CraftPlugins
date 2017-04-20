.class Lcom/yf/lib/a/b$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/yf/lib/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/yf/lib/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/lib/a/b;-><init>(Lcom/yf/lib/a/b$1;)V

    sput-object v0, Lcom/yf/lib/a/b$a;->a:Lcom/yf/lib/a/b;

    return-void
.end method

.method static synthetic a()Lcom/yf/lib/a/b;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/yf/lib/a/b$a;->a:Lcom/yf/lib/a/b;

    return-object v0
.end method
