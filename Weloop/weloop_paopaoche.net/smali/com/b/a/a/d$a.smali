.class Lcom/b/a/a/d$a;
.super Lcom/b/a/e/c;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/e/c",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/d;


# direct methods
.method private constructor <init>(Lcom/b/a/a/d;)V
    .locals 1

    .prologue
    .line 257
    iput-object p1, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-direct {p0}, Lcom/b/a/e/c;-><init>()V

    .line 258
    sget-object v0, Lcom/b/a/e/b;->a:Lcom/b/a/e/b;

    invoke-virtual {p0, v0}, Lcom/b/a/a/d$a;->a(Lcom/b/a/e/b;)V

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/d;Lcom/b/a/a/d$1;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/b/a/a/d$a;-><init>(Lcom/b/a/a/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 263
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-object p1

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-virtual {v0}, Lcom/b/a/a/d;->f()Lcom/b/a/a/b/b;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_0

    .line 267
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-virtual {v1}, Lcom/b/a/a/b/b;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 272
    :pswitch_1
    :try_start_1
    invoke-virtual {v1}, Lcom/b/a/a/b/b;->b()V

    goto :goto_0

    .line 275
    :pswitch_2
    invoke-virtual {v1}, Lcom/b/a/a/b/b;->f()V

    goto :goto_0

    .line 278
    :pswitch_3
    invoke-virtual {v1}, Lcom/b/a/a/b/b;->d()V

    .line 279
    invoke-virtual {v1}, Lcom/b/a/a/b/b;->g()V

    goto :goto_0

    .line 282
    :pswitch_4
    invoke-virtual {v1}, Lcom/b/a/a/b/b;->c()V

    goto :goto_0

    .line 285
    :pswitch_5
    invoke-virtual {v1}, Lcom/b/a/a/b/b;->d()V

    goto :goto_0

    .line 288
    :pswitch_6
    invoke-virtual {v1}, Lcom/b/a/a/b/b;->e()V

    goto :goto_0

    .line 291
    :pswitch_7
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 292
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/a/b/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :pswitch_8
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 296
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/a/b/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_9
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 300
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/a/b/b;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/b/a/a/d$a;->d([Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic c([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/b/a/a/d$a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected d([Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 313
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 320
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/a;->b()V

    goto :goto_0

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/a;->f()V

    goto :goto_0

    .line 326
    :pswitch_3
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/a;->g()V

    goto :goto_0

    .line 329
    :pswitch_4
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/a;->c()V

    goto :goto_0

    .line 332
    :pswitch_5
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/a;->d()V

    goto :goto_0

    .line 335
    :pswitch_6
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/b/a/a/a;->e()V

    goto :goto_0

    .line 338
    :pswitch_7
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/b/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :pswitch_8
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/b/a/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    :pswitch_9
    array-length v0, p1

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/b/a/a/d$a;->a:Lcom/b/a/a/d;

    invoke-static {v0}, Lcom/b/a/a/d;->a(Lcom/b/a/a/d;)Lcom/b/a/a/a;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/b/a/a/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
