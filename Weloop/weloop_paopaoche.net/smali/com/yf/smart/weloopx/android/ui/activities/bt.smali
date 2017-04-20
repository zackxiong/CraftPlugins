.class Lcom/yf/smart/weloopx/android/ui/activities/bt;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:B

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/bs;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/bs;B)V
    .locals 0

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iput-byte p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/bt;->a:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1983
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/bt;->b:Lcom/yf/smart/weloopx/android/ui/activities/bs;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/bs;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/bu;

    invoke-direct {v1, p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/bu;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/bt;II)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->n(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1999
    :cond_0
    return-void
.end method
