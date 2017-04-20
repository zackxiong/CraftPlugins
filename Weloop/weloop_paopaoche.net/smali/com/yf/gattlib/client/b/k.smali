.class public Lcom/yf/gattlib/client/b/k;
.super Lcom/yf/gattlib/client/b/ad;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/yf/gattlib/client/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/b/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yf/gattlib/client/b/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([B[Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-static {p1}, Lcom/yf/gattlib/client/j;->a([B)I

    move-result v0

    .line 20
    const/16 v1, 0x46

    if-ne v1, v0, :cond_0

    .line 21
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 22
    if-eqz v0, :cond_0

    .line 23
    sget-object v1, Lcom/yf/gattlib/client/b/k;->a:Ljava/lang/String;

    const-string v2, "forget phone"

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Lcom/yf/gattlib/server/android/f;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yf/gattlib/f/b;->a(Z)V

    .line 26
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/a/a;->f(Landroid/content/Intent;)V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/yf/gattlib/client/b/k;->i()V

    .line 30
    return-void
.end method

.method public a()[I
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x46

    aput v2, v0, v1

    return-object v0
.end method
