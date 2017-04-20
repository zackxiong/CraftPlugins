.class Lcom/yf/smart/weloopx/android/ui/activities/ap;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:Z

.field final synthetic b:B

.field final synthetic c:I

.field final synthetic d:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;ZBI)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    iput-boolean p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->a:Z

    iput-byte p3, p0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->b:B

    iput p4, p0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1159
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ap;->d:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/aq;

    invoke-direct {v1, p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/aq;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/ap;II)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1178
    :cond_0
    return-void
.end method
