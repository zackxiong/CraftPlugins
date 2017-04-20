.class Lcom/yf/gattlib/client/c$d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/client/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field final synthetic j:Lcom/yf/gattlib/client/c;


# direct methods
.method private constructor <init>(Lcom/yf/gattlib/client/c;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yf/gattlib/client/c$d;->j:Lcom/yf/gattlib/client/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/client/c;Lcom/yf/gattlib/client/c$1;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/c$d;-><init>(Lcom/yf/gattlib/client/c;)V

    return-void
.end method
