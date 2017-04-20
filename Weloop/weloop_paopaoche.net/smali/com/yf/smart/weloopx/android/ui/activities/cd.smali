.class Lcom/yf/smart/weloopx/android/ui/activities/cd;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yf/gattlib/m/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/z$a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z$a;)V
    .locals 0

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cd;->a:Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/m/a/b;Lcom/yf/gattlib/m/a/b;)I
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cd;->a:Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    const/4 v0, -0x1

    .line 1815
    :goto_0
    return v0

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cd;->a:Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1813
    const/4 v0, 0x1

    goto :goto_0

    .line 1815
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1807
    check-cast p1, Lcom/yf/gattlib/m/a/b;

    check-cast p2, Lcom/yf/gattlib/m/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/cd;->a(Lcom/yf/gattlib/m/a/b;Lcom/yf/gattlib/m/a/b;)I

    move-result v0

    return v0
.end method
