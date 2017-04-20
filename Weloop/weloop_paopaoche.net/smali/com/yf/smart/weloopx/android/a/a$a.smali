.class Lcom/yf/smart/weloopx/android/a/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/yf/smart/weloopx/android/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/yf/smart/weloopx/android/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/android/a/a;-><init>(Lcom/yf/smart/weloopx/android/a/b;)V

    sput-object v0, Lcom/yf/smart/weloopx/android/a/a$a;->a:Lcom/yf/smart/weloopx/android/a/a;

    return-void
.end method

.method static synthetic a()Lcom/yf/smart/weloopx/android/a/a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/yf/smart/weloopx/android/a/a$a;->a:Lcom/yf/smart/weloopx/android/a/a;

    return-object v0
.end method
