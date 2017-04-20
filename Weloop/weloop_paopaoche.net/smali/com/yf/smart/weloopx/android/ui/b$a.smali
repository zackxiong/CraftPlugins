.class Lcom/yf/smart/weloopx/android/ui/b$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/yf/smart/weloopx/android/ui/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/android/ui/b;-><init>(Lcom/yf/smart/weloopx/android/ui/c;)V

    sput-object v0, Lcom/yf/smart/weloopx/android/ui/b$a;->a:Lcom/yf/smart/weloopx/android/ui/b;

    return-void
.end method
