.class public Lcom/yf/smart/weloopx/c/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(IIZ)V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v0

    .line 27
    const-string v1, "hours of alarm"

    invoke-virtual {v0, v1, p0}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;I)V

    .line 28
    const-string v1, "minutes of alarm"

    invoke-virtual {v0, v1, p1}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;I)V

    .line 29
    const-string v1, "alarm is set"

    invoke-virtual {v0, v1, p2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 30
    return-void
.end method
