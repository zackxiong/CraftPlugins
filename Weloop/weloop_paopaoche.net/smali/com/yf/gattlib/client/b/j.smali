.class public abstract Lcom/yf/gattlib/client/b/j;
.super Lcom/yf/gattlib/client/b/ad;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yf/gattlib/client/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ad;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method public varargs a([B[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/yf/gattlib/client/b/j;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/yf/gattlib/p/g;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 18
    const/16 v1, 0x45

    if-ne v0, v1, :cond_0

    .line 28
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/client/b/j;->a(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/yf/gattlib/client/b/j;->b([B)[B

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/j;->i()V

    .line 33
    return-void
.end method

.method public a()[I
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x45

    aput v2, v0, v1

    return-object v0
.end method
