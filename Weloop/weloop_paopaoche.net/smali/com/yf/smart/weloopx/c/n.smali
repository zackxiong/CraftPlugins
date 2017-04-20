.class public final Lcom/yf/smart/weloopx/c/n;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/yf/smart/weloopx/c/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/c/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/yf/gattlib/client/b/be;->a()Lcom/yf/gattlib/client/b/be;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/yf/smart/weloopx/c/o;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/c/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 56
    new-instance v1, Lcom/yf/smart/weloopx/c/p;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/c/p;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 70
    new-instance v1, Lcom/yf/smart/weloopx/c/q;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/c/q;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 90
    new-instance v1, Lcom/yf/smart/weloopx/c/r;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/c/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/be;->a(Lcom/yf/gattlib/client/b/e;)V

    .line 106
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yf/smart/weloopx/c/n;->a:Ljava/lang/String;

    return-object v0
.end method
