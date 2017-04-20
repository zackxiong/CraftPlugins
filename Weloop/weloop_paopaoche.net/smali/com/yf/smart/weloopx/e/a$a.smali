.class Lcom/yf/smart/weloopx/e/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lorg/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/yf/smart/weloopx/e/a;->d()Lorg/a/a/k;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/e/a$a;->a:Lorg/a/a/k;

    return-void
.end method

.method static synthetic a()Lorg/a/a/k;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/yf/smart/weloopx/e/a$a;->a:Lorg/a/a/k;

    return-object v0
.end method
