.class Lcom/yf/smart/weloopx/g/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/aj$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/g/a;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/g/a;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/a;->a(Lcom/yf/smart/weloopx/g/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6enaozhong\u5f00\u59cb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/a;->a(Lcom/yf/smart/weloopx/g/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8bbe\u7f6enaozhong\u8d85\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->d:Z

    .line 54
    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 55
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 56
    iget-object v1, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/a;->b(Lcom/yf/smart/weloopx/g/a;)Lcom/yf/gattlib/client/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/d;->d([B)V

    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/a;->c(Lcom/yf/smart/weloopx/g/a;)Lcom/yf/smart/weloopx/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/a;->i()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-static {v1}, Lcom/yf/smart/weloopx/g/a;->a(Lcom/yf/smart/weloopx/g/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u8bbe\u7f6enaozhong\u7ed3\u675f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/a;->d(Lcom/yf/smart/weloopx/g/a;)Lcom/yf/smart/weloopx/g/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/a;->d(Lcom/yf/smart/weloopx/g/a;)Lcom/yf/smart/weloopx/g/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/smart/weloopx/g/a$a;->d()V

    .line 62
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yf/smart/weloopx/g/b;->a:Lcom/yf/smart/weloopx/g/a;

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/a;->a(Lcom/yf/smart/weloopx/g/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u95f9\u949f\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
