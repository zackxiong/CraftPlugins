.class Lcom/yf/gattlib/b/d$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/yf/gattlib/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yf/gattlib/b/d;

    invoke-direct {v0}, Lcom/yf/gattlib/b/d;-><init>()V

    sput-object v0, Lcom/yf/gattlib/b/d$a;->a:Lcom/yf/gattlib/b/d;

    return-void
.end method
