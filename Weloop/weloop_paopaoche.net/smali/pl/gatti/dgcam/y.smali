.class public Lpl/gatti/dgcam/y;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    const-string v0, "/DCIM/Camera/"

    .line 16
    invoke-static {}, Lcom/yf/gattlib/c/f;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const-string v1, "DCIM/Camera"

    const-string v2, "\u76f8\u673a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/c/f;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    const-string v1, "DCIM/Camera"

    const-string v2, "Camera"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_1
    invoke-static {}, Lcom/yf/gattlib/c/f;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    const-string v1, "Camera/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_2
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    const-string v0, "/DCIM/Camera/"

    .line 30
    invoke-static {}, Lcom/yf/gattlib/c/f;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "DCIM/Camera"

    const-string v2, "\u76f8\u673a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/c/f;->s()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/yf/gattlib/c/f;->y()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/yf/gattlib/c/f;->t()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/yf/gattlib/c/f;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    :cond_1
    const-string v1, "Camera"

    const-string v2, "Video"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_2
    return-object v0
.end method
