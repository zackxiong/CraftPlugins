.class Lcom/yf/smart/weloopx/c/d;
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
    .line 106
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/d;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 109
    const-string v0, "CustomInitializer test, Runnable saveDeviceState"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/d;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;)Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/d;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;)Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/f/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/d;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v4, v5}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/c/d;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;)Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->q()Lcom/yf/gattlib/c/c;

    move-result-object v1

    .line 116
    const-string v2, "anti disturb time"

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->q()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;[B)V

    .line 117
    const-string v2, "wake up pattern"

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->k()B

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->r()I

    move-result v1

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->s()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/yf/smart/weloopx/c/a;->a(IIZ)V

    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/d;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v4, v5}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    goto :goto_0
.end method
