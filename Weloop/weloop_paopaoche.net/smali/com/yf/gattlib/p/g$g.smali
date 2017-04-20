.class Lcom/yf/gattlib/p/g$g;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/p/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static final a:Lcom/yf/gattlib/p/g$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/yf/gattlib/p/g$b;

    invoke-direct {v0}, Lcom/yf/gattlib/p/g$b;-><init>()V

    sput-object v0, Lcom/yf/gattlib/p/g$g;->a:Lcom/yf/gattlib/p/g$d;

    return-void
.end method

.method static synthetic a()Lcom/yf/gattlib/p/g$d;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/yf/gattlib/p/g$g;->a:Lcom/yf/gattlib/p/g$d;

    return-object v0
.end method
