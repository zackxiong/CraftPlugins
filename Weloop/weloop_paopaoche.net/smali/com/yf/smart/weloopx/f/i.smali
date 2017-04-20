.class Lcom/yf/smart/weloopx/f/i;
.super Lcom/b/a/d/a/d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/d/a/d",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/smart/weloopx/f/h$a;

.field final synthetic c:Lcom/yf/smart/weloopx/f/h;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/f/h;Ljava/lang/String;Lcom/yf/smart/weloopx/f/h$a;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yf/smart/weloopx/f/i;->c:Lcom/yf/smart/weloopx/f/h;

    iput-object p2, p0, Lcom/yf/smart/weloopx/f/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yf/smart/weloopx/f/i;->b:Lcom/yf/smart/weloopx/f/h$a;

    invoke-direct {p0}, Lcom/b/a/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJZ)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/i;->c:Lcom/yf/smart/weloopx/f/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/f/h;->a(Lcom/yf/smart/weloopx/f/h;Z)Z

    .line 152
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/i;->b:Lcom/yf/smart/weloopx/f/h$a;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/f/h$a;->b()V

    .line 153
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/e",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/i;->c:Lcom/yf/smart/weloopx/f/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/f/h;->a(Lcom/yf/smart/weloopx/f/h;Z)Z

    .line 133
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yf/smart/weloopx/f/i;->c:Lcom/yf/smart/weloopx/f/h;

    invoke-static {v2}, Lcom/yf/smart/weloopx/f/h;->a(Lcom/yf/smart/weloopx/f/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e0a\u4f20\u6fc0\u6d3b\u65f6\u95f4\u8fd4\u56de = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/yf/smart/weloopx/data/models/UploadActivationResponseModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/UploadActivationResponseModel;

    .line 137
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/f/i;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 138
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/yf/smart/weloopx/data/models/UploadActivationResponseModel;->flag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Y"

    iget-object v2, v0, Lcom/yf/smart/weloopx/data/models/UploadActivationResponseModel;->flag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/f/i;->b:Lcom/yf/smart/weloopx/f/h$a;

    invoke-interface {v1}, Lcom/yf/smart/weloopx/f/h$a;->a()V

    .line 143
    :cond_1
    iget-wide v0, v0, Lcom/yf/smart/weloopx/data/models/UploadActivationResponseModel;->activateTime:J

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yf/smart/weloopx/f/i;->c:Lcom/yf/smart/weloopx/f/h;

    invoke-static {v3}, Lcom/yf/smart/weloopx/f/h;->a(Lcom/yf/smart/weloopx/f/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5728 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v4, v0, v6

    invoke-static {v4, v5}, Lcom/yf/gattlib/p/b;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5f00\u59cb\u6fc0\u6d3b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u5728 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/b;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f00\u59cb\u6fc0\u6d3b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 147
    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yf/smart/weloopx/f/i;->c:Lcom/yf/smart/weloopx/f/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/f/h;->a(Lcom/yf/smart/weloopx/f/h;Z)Z

    .line 124
    return-void
.end method
