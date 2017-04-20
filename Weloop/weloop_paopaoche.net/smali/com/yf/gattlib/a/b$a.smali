.class Lcom/yf/gattlib/a/b$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/yf/gattlib/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yf/gattlib/a/b;

    invoke-direct {v0}, Lcom/yf/gattlib/a/b;-><init>()V

    sput-object v0, Lcom/yf/gattlib/a/b$a;->a:Lcom/yf/gattlib/a/b;

    return-void
.end method

.method static synthetic a()Lcom/yf/gattlib/a/b;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/yf/gattlib/a/b$a;->a:Lcom/yf/gattlib/a/b;

    return-object v0
.end method
