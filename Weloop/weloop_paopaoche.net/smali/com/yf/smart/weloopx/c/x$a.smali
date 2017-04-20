.class Lcom/yf/smart/weloopx/c/x$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/yf/smart/weloopx/c/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/yf/smart/weloopx/c/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/c/x;-><init>(Lcom/yf/smart/weloopx/c/y;)V

    sput-object v0, Lcom/yf/smart/weloopx/c/x$a;->a:Lcom/yf/smart/weloopx/c/x;

    return-void
.end method

.method static synthetic a()Lcom/yf/smart/weloopx/c/x;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/yf/smart/weloopx/c/x$a;->a:Lcom/yf/smart/weloopx/c/x;

    return-object v0
.end method
