.class Lcom/yf/smart/weloopx/c/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/bc$a;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/l;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/m;->a:Lcom/yf/smart/weloopx/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 331
    const-string v0, "CustomInitializer"

    const-string v1, "\u540c\u6b65\u5929\u6c14\u6210\u529f"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/m;->a:Lcom/yf/smart/weloopx/c/l;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 333
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 342
    const-string v0, "CustomInitializer"

    const-string v1, "\u540c\u6b65\u5929\u6c14\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/m;->a:Lcom/yf/smart/weloopx/c/l;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 344
    return-void
.end method
