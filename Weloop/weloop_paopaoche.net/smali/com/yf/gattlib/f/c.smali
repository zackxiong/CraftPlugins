.class Lcom/yf/gattlib/f/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/c$a;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/f/b;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/f/b;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/client/c;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceTimeWhenConnected is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1}, Lcom/yf/gattlib/f/b;->a(Lcom/yf/gattlib/f/b;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1}, Lcom/yf/gattlib/f/b;->b(Lcom/yf/gattlib/f/b;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/f/b;->a(Lcom/yf/gattlib/f/b;Z)Z

    .line 82
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->a(Lcom/yf/gattlib/f/b;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 83
    invoke-static {}, Lcom/yf/gattlib/p/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializing, device info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yf/gattlib/client/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-virtual {p1}, Lcom/yf/gattlib/client/c;->c()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yf/gattlib/f/b;->a(Lcom/yf/gattlib/f/b;J)J

    .line 88
    invoke-virtual {p1}, Lcom/yf/gattlib/client/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v4}, Lcom/yf/gattlib/f/b;->b(Lcom/yf/gattlib/f/b;Z)Z

    .line 91
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v4}, Lcom/yf/gattlib/f/b;->c(Lcom/yf/gattlib/f/b;Z)Z

    .line 92
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v4}, Lcom/yf/gattlib/f/b;->d(Lcom/yf/gattlib/f/b;Z)Z

    .line 93
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v4}, Lcom/yf/gattlib/f/b;->e(Lcom/yf/gattlib/f/b;Z)Z

    .line 94
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v4}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;Z)Z

    .line 95
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v4}, Lcom/yf/gattlib/f/b;->g(Lcom/yf/gattlib/f/b;Z)Z

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->c(Lcom/yf/gattlib/f/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->d(Lcom/yf/gattlib/f/b;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->d(Lcom/yf/gattlib/f/b;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0}, Lcom/yf/gattlib/f/b;->d(Lcom/yf/gattlib/f/b;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 143
    const-string v0, "GattInstance pop\u63893\u4e2a\u65e7\u534f\u8bae\u4e8b\u52a1"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v6, v7}, Lcom/yf/gattlib/f/b;->b(Lcom/yf/gattlib/f/b;J)V

    .line 146
    return-void

    .line 97
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 98
    const-string v1, "V 1.30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4

    .line 99
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v5}, Lcom/yf/gattlib/f/b;->b(Lcom/yf/gattlib/f/b;Z)Z

    .line 100
    const-string v1, "isProtocol_1_30 is true"

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 105
    :goto_1
    const-string v1, "V 1.32"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v5}, Lcom/yf/gattlib/f/b;->c(Lcom/yf/gattlib/f/b;Z)Z

    .line 107
    const-string v1, "isProtocol_1_32 is true"

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 112
    :goto_2
    const-string v1, "V 2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_6

    const-string v1, "V 3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    .line 113
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v5}, Lcom/yf/gattlib/f/b;->d(Lcom/yf/gattlib/f/b;Z)Z

    .line 114
    const-string v1, "isProtocol_2_0 is true"

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 119
    :goto_3
    const-string v1, "V 3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_7

    .line 120
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v5}, Lcom/yf/gattlib/f/b;->e(Lcom/yf/gattlib/f/b;Z)Z

    .line 121
    const-string v1, "isProtocol_3_0 is true"

    invoke-static {v1}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 126
    :goto_4
    const-string v1, "V 3.30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_8

    .line 127
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v5}, Lcom/yf/gattlib/f/b;->g(Lcom/yf/gattlib/f/b;Z)Z

    .line 128
    const-string v0, "isGreatThan_3_30 is true"

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v4}, Lcom/yf/gattlib/f/b;->b(Lcom/yf/gattlib/f/b;Z)Z

    goto :goto_1

    .line 109
    :cond_5
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v4}, Lcom/yf/gattlib/f/b;->c(Lcom/yf/gattlib/f/b;Z)Z

    goto :goto_2

    .line 116
    :cond_6
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v4}, Lcom/yf/gattlib/f/b;->d(Lcom/yf/gattlib/f/b;Z)Z

    goto :goto_3

    .line 123
    :cond_7
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v4}, Lcom/yf/gattlib/f/b;->e(Lcom/yf/gattlib/f/b;Z)Z

    goto :goto_4

    .line 130
    :cond_8
    iget-object v1, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v1, v4}, Lcom/yf/gattlib/f/b;->g(Lcom/yf/gattlib/f/b;Z)Z

    .line 131
    const-string v1, "V 3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v5}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;Z)Z

    goto/16 :goto_0

    .line 134
    :cond_9
    iget-object v0, p0, Lcom/yf/gattlib/f/c;->a:Lcom/yf/gattlib/f/b;

    invoke-static {v0, v4}, Lcom/yf/gattlib/f/b;->f(Lcom/yf/gattlib/f/b;Z)Z

    goto/16 :goto_0
.end method
