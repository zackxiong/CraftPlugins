.class Lcom/yf/smart/weloopx/c/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/c;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/c;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 129
    const-string v0, "CustomInitializer test, Runnable checkUserInfo"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/c;->b(Lcom/yf/smart/weloopx/c/c;)I

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 133
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v2}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;)Lcom/yf/gattlib/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/f/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v6, v7}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 188
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yf/smart/weloopx/b/c;->e(Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/UserData;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v2

    if-gtz v2, :cond_3

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v6, v7}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    goto :goto_0

    .line 148
    :cond_3
    const-string v2, "CustomInitializer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->w()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->v()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->x()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->w()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v2

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->v()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->x()I

    move-result v0

    if-ne v2, v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/e;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v6, v7}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    goto/16 :goto_0

    .line 157
    :cond_4
    new-instance v0, Lcom/yf/gattlib/client/b/aq;

    new-instance v2, Lcom/yf/smart/weloopx/c/f;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/c/f;-><init>(Lcom/yf/smart/weloopx/c/e;)V

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getWeight()I

    move-result v3

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getStature()I

    move-result v4

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/models/UserData;->getCalorieValue()I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/yf/gattlib/client/b/aq;-><init>(Lcom/yf/gattlib/client/b/aq$a;III)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/aq;->g()Lcom/yf/gattlib/client/b/e;

    goto/16 :goto_0
.end method
