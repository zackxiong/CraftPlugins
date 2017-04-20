.class Lcom/yf/smart/weloopx/c/l;
.super Lcom/yf/smart/weloopx/b/b/i;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/c/k;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/c/k;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/b;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 357
    invoke-super {p0, p1, p2}, Lcom/yf/smart/weloopx/b/b/i;->a(Lcom/b/a/c/b;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 359
    return-void
.end method

.method public a(Lcom/b/a/d/e;)V
    .locals 4
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
    const-wide/16 v2, 0x0

    .line 319
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const-string v0, "CustomInitializer"

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    .line 352
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/smart/weloopx/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 326
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v2, v0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    iget-object v0, p1, Lcom/b/a/d/e;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-class v3, Lcom/yf/smart/weloopx/data/WeatherResult;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/WeatherResult;

    iput-object v0, v2, Lcom/yf/smart/weloopx/c/c;->a:Lcom/yf/smart/weloopx/data/WeatherResult;

    .line 327
    const-string v0, "CustomInitializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5929\u6c14 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v2, v2, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    iget-object v2, v2, Lcom/yf/smart/weloopx/c/c;->a:Lcom/yf/smart/weloopx/data/WeatherResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/WeatherResult;->getWeather()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6e29\u5ea6 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v2, v2, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    iget-object v2, v2, Lcom/yf/smart/weloopx/c/c;->a:Lcom/yf/smart/weloopx/data/WeatherResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/WeatherResult;->getTemperature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/yf/gattlib/client/b/bc;

    iget-object v1, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v1, v1, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v1}, Lcom/yf/smart/weloopx/c/c;->h(Lcom/yf/smart/weloopx/c/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v2, v2, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    iget-object v2, v2, Lcom/yf/smart/weloopx/c/c;->a:Lcom/yf/smart/weloopx/data/WeatherResult;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/data/WeatherResult;->getTemperature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    new-instance v3, Lcom/yf/smart/weloopx/c/m;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/c/m;-><init>(Lcom/yf/smart/weloopx/c/l;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/yf/gattlib/client/b/bc;-><init>(Ljava/lang/String;BLcom/yf/gattlib/client/b/bc$a;)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/bc;->g()Lcom/yf/gattlib/client/b/e;

    goto :goto_0

    .line 348
    :cond_1
    const-string v0, "CustomInitializer"

    const-string v1, "\u6ca1\u6709\u627e\u5230\u5bf9\u5e94\u57ce\u5e02\u7684\u5929\u6c14"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/yf/smart/weloopx/c/l;->a:Lcom/yf/smart/weloopx/c/k;

    iget-object v0, v0, Lcom/yf/smart/weloopx/c/k;->a:Lcom/yf/smart/weloopx/c/c;

    invoke-static {v0, v2, v3}, Lcom/yf/smart/weloopx/c/c;->a(Lcom/yf/smart/weloopx/c/c;J)V

    goto/16 :goto_0
.end method
