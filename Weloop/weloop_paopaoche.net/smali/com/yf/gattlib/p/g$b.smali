.class public Lcom/yf/gattlib/p/g$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/p/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/p/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/p/g$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Download/yfababab-file.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    new-instance v1, Lcom/yf/gattlib/p/g$c;

    invoke-direct {v1, v2}, Lcom/yf/gattlib/p/g$c;-><init>(Lcom/yf/gattlib/p/g$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Download/yfababab-logcat.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    new-instance v1, Lcom/yf/gattlib/p/g$e;

    invoke-direct {v1, v2}, Lcom/yf/gattlib/p/g$e;-><init>(Lcom/yf/gattlib/p/g$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/yf/gattlib/p/g$b;->c()V

    .line 312
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/p/g$d;

    .line 313
    invoke-interface {v0}, Lcom/yf/gattlib/p/g$d;->a()V

    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/p/g$d;

    .line 333
    invoke-interface {v0, p1}, Lcom/yf/gattlib/p/g$d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/p/g$d;

    .line 322
    invoke-interface {v0}, Lcom/yf/gattlib/p/g$d;->b()V

    goto :goto_1

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/p/g$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
