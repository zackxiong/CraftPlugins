.class Lcom/yf/smart/weloopx/android/ui/activities/am;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/a/c;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/al;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/al;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1106
    invoke-static {p1}, Lcom/yf/gattlib/client/b/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/am;->a:Lcom/yf/smart/weloopx/android/ui/activities/al;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/al;->a:Lcom/yf/smart/weloopx/android/ui/activities/z;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/an;

    invoke-direct {v1, p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/an;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/am;II)V

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->h(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V

    .line 1125
    :cond_0
    return-void
.end method
