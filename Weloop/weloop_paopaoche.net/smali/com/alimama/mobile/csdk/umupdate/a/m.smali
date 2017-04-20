.class public Lcom/alimama/mobile/csdk/umupdate/a/m;
.super Lcom/alimama/mobile/csdk/umupdate/a/b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alimama/mobile/csdk/umupdate/a/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# static fields
.field static final e:Ljava/lang/String;


# instance fields
.field f:Lcom/alimama/mobile/csdk/umupdate/models/d;

.field private final g:Lcom/alimama/mobile/b$a;

.field private final h:I

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/a/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/a/m;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alimama/mobile/csdk/umupdate/models/d;Lcom/alimama/mobile/b$a;IZ)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->g:Lcom/alimama/mobile/b$a;

    .line 90
    iput p3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->h:I

    .line 91
    iput-boolean p4, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->i:Z

    .line 92
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    .line 93
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    if-eqz p1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a(Lorg/json/JSONObject;)V

    .line 207
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->a()Lcom/alimama/mobile/csdk/umupdate/models/e;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/e;->b()I

    move-result v1

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->x:I

    if-eq v1, v2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v1

    iget v1, v1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->x:I

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/models/e;->a(I)V

    .line 212
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    const-class v1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->O:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a(Ljava/util/Collection;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ZZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->a()Lcom/alimama/mobile/csdk/umupdate/models/e;

    move-result-object v0

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->p:I

    int-to-long v2, v2

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/alimama/mobile/csdk/umupdate/models/e;->a(ZJZ)Lorg/json/JSONObject;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 230
    :cond_1
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 230
    goto :goto_0
.end method

.method private a([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 159
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 160
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)Ljava/util/Map;

    move-result-object v3

    .line 162
    if-nez v3, :cond_0

    move-object v0, v4

    .line 200
    :goto_0
    return-object v0

    .line 166
    :cond_0
    const-string v0, "sid"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    const-string v0, "sid"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 169
    :goto_1
    new-instance v6, Lcom/alimama/mobile/csdk/umupdate/b/b;

    invoke-direct {v6}, Lcom/alimama/mobile/csdk/umupdate/b/b;-><init>()V

    .line 170
    new-instance v7, Lcom/alimama/mobile/csdk/umupdate/b/e;

    invoke-direct {v7, v3}, Lcom/alimama/mobile/csdk/umupdate/b/e;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6, v7}, Lcom/alimama/mobile/csdk/umupdate/b/b;->a(Lcom/alimama/mobile/csdk/umupdate/b/e;)Lcom/alimama/mobile/csdk/umupdate/b/f;

    move-result-object v6

    .line 172
    if-eqz p1, :cond_1

    .line 173
    if-nez v6, :cond_4

    move v3, v2

    :goto_2
    aput v3, p1, v2

    .line 175
    :cond_1
    if-eqz v6, :cond_2

    iget-object v3, v6, Lcom/alimama/mobile/csdk/umupdate/b/f;->b:Lorg/json/JSONObject;

    if-nez v3, :cond_5

    :cond_2
    move-object v0, v4

    .line 176
    goto :goto_0

    :cond_3
    move v0, v2

    .line 167
    goto :goto_1

    .line 173
    :cond_4
    iget v3, v6, Lcom/alimama/mobile/csdk/umupdate/b/f;->a:I

    goto :goto_2

    .line 178
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   requestLive get resStr: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v6, Lcom/alimama/mobile/csdk/umupdate/b/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v7}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :try_start_0
    iget-object v3, v6, Lcom/alimama/mobile/csdk/umupdate/b/f;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    .line 183
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_8

    .line 184
    :cond_6
    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->a()Lcom/alimama/mobile/csdk/umupdate/models/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/e;->a()V

    move-object v0, v4

    .line 186
    goto :goto_0

    :cond_7
    move-object v0, v4

    .line 188
    goto :goto_0

    .line 192
    :cond_8
    iget-boolean v7, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->i:Z

    if-eqz v7, :cond_9

    iget v7, v6, Lcom/alimama/mobile/csdk/umupdate/b/f;->a:I

    if-ne v7, v1, :cond_9

    .line 193
    iget-object v7, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v7}, Lcom/alimama/mobile/csdk/umupdate/models/d;->a()Lcom/alimama/mobile/csdk/umupdate/models/e;

    move-result-object v7

    iget-object v6, v6, Lcom/alimama/mobile/csdk/umupdate/b/f;->b:Lorg/json/JSONObject;

    invoke-virtual {v7, v0, v6}, Lcom/alimama/mobile/csdk/umupdate/models/e;->a(ZLorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    move-object v0, v3

    .line 196
    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    sget-object v3, Lcom/alimama/mobile/csdk/umupdate/a/m;->e:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  request from network error:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    aput-object v0, v6, v1

    invoke-static {v3, v6}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    .line 200
    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method private a(Ljava/util/Collection;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">(",
            "Ljava/util/Collection;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get promoters use class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :try_start_0
    const-string v0, "promoters"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "promoters"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v2

    .line 398
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 399
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 400
    invoke-static {v0, p2}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    move-result-object v0

    .line 401
    iput-object p4, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->y:Ljava/lang/String;

    .line 402
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 405
    :cond_0
    const-string v0, "failed requesting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_1
    :goto_1
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string v1, ""

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 418
    if-nez p1, :cond_1

    move v1, v2

    .line 444
    :cond_0
    :goto_0
    return v1

    .line 421
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v1, v2

    :goto_1
    if-ltz v3, :cond_2

    .line 423
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    .line 424
    iget-object v5, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v5}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v5

    iget-boolean v5, v5, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->m:Z

    .line 425
    if-eqz v0, :cond_3

    iget-boolean v6, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->D:Z

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alimama/mobile/b;->b()Lcom/alimama/mobile/csdk/umupdate/a/a;

    move-result-object v5

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    invoke-interface {v5, v0}, Lcom/alimama/mobile/csdk/umupdate/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    sget-object v5, Lcom/alimama/mobile/csdk/umupdate/a/i;->e:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installed: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->l:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ". Remove from the list."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    .line 431
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->w:I

    if-ne v0, v9, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 422
    :goto_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 436
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 437
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V

    invoke-virtual {v0, v8}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->c(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v3

    new-array v0, v2, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    invoke-virtual {v3, v0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a([Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a()Lcom/alimama/mobile/csdk/umupdate/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d;->a()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected varargs a([Ljava/lang/Void;)Landroid/os/Message;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 104
    if-eqz v3, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 108
    :cond_0
    new-array v4, v1, [I

    .line 109
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->h:I

    if-ne v0, v1, :cond_4

    .line 110
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a(ZZ)Ljava/util/List;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 112
    aput v1, v4, v2

    .line 113
    const-string v5, "get data from local-cache."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_1
    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v1

    .line 127
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 128
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    aget v0, v4, v2

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 130
    return-object v1

    :cond_2
    move v0, v2

    .line 110
    goto :goto_0

    .line 115
    :cond_3
    aput v2, v4, v2

    .line 116
    const-string v5, "get data from local-cache.but has no data."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_4
    invoke-direct {p0, v4}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a([I)Ljava/util/List;

    move-result-object v0

    .line 120
    const-string v5, "get data from live."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a([Ljava/lang/Void;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 235
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 236
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->b()Lcom/alimama/mobile/csdk/umupdate/a/a;

    move-result-object v3

    .line 239
    const-string v0, "sdk_version"

    sget-object v4, Lcom/alimama/mobile/csdk/umupdate/a/i;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "sdk_channel"

    sget-object v4, Lcom/alimama/mobile/csdk/umupdate/a/i;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "protocol_version"

    sget-object v4, Lcom/alimama/mobile/csdk/umupdate/a/i;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "MUNION_CHANNEL"

    invoke-interface {v3, v0}, Lcom/alimama/mobile/csdk/umupdate/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 246
    const-string v4, "channel"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    const-string v0, "device_id"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "idmd5"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alimama/mobile/csdk/umupdate/a/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "device_model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "os"

    const-string v4, "android"

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    const-string v4, "mc"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_1
    const-string v0, "os_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "locale"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "language"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "timezone"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "resolution"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->l()[Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v4, "access"

    aget-object v5, v0, v2

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v4, "access_subtype"

    aget-object v0, v0, v8

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "carrier"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->m()Landroid/location/Location;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    const-string v4, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v4, "lng"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v4, "gps_type"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v4, "gpst"

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v4, "gps_accuracy"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_2
    const-string v0, "cpu"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 287
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    .line 289
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v8

    .line 290
    const-string v5, "date"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v4, "time"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "brand"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "timezone"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "apnm"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "apvn"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "apvc"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "adnm"

    invoke-interface {v3}, Lcom/alimama/mobile/csdk/umupdate/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 304
    const-string v0, "slot_id"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :goto_1
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    const-string v0, "promoter"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->F:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_3
    const-string v0, "layout_type"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    iget v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->C:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/a/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v3, "keywords"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 325
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->O:Ljava/lang/String;

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 328
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 329
    array-length v5, v3

    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_9

    aget-object v2, v3, v0

    .line 330
    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 331
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 332
    const/4 v6, 0x0

    aget-object v6, v2, v6

    const/4 v7, 0x1

    aget-object v2, v2, v7

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 243
    :cond_6
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/i;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    :cond_7
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 306
    const-string v0, "app_key"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->A:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 308
    :cond_8
    const-string v0, "Both APPKEY and SLOTID are empty, please specify either one. Request aborted."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const/4 v0, 0x0

    .line 390
    :goto_3
    return-object v0

    .line 335
    :cond_9
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 338
    :catch_0
    move-exception v0

    .line 342
    :cond_a
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 343
    const-string v0, "url_params"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->N:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_b
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 347
    const-string v0, "tags"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->G:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_c
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->B:I

    if-eq v0, v8, :cond_d

    .line 352
    const-string v0, "autofill"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_d
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 356
    const-string v0, "sid"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->I:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_e
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 360
    const-string v0, "psid"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->J:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_f
    const-string v0, "req_desc"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->K:Lcom/alimama/mobile/csdk/umupdate/models/j;

    if-nez v0, :cond_12

    const-string v0, ""

    .line 368
    :goto_5
    const-string v2, "resource_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->L:Lcom/alimama/mobile/csdk/umupdate/models/o;

    if-eqz v0, :cond_10

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->L:Lcom/alimama/mobile/csdk/umupdate/models/o;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ""

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v2, "template"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_10
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->H:I

    if-lez v0, :cond_11

    .line 376
    const-string v0, "landing_type"

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object v0, v1

    .line 390
    goto/16 :goto_3

    .line 367
    :cond_12
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v0

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->K:Lcom/alimama/mobile/csdk/umupdate/models/j;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/j;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 371
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->M:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b;->a()V

    .line 98
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->g:Lcom/alimama/mobile/b$a;

    if-eqz v0, :cond_1

    .line 136
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 141
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->m:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a(Ljava/util/List;)I

    move-result v1

    .line 143
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    if-lez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    .line 145
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    iget v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    sub-int v1, v3, v1

    .line 146
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v3

    if-lez v1, :cond_2

    :goto_0
    iput v1, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new tips has changed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ===> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->f:Lcom/alimama/mobile/csdk/umupdate/models/d;

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/models/d;->b()Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    move-result-object v2

    iget v2, v2, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->g:Lcom/alimama/mobile/b$a;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v0}, Lcom/alimama/mobile/b$a;->a(ILjava/util/List;)V

    .line 155
    :cond_1
    :goto_1
    return-void

    .line 146
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/m;->g:Lcom/alimama/mobile/b$a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/alimama/mobile/b$a;->a(ILjava/util/List;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Landroid/os/Message;

    invoke-virtual {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/a/m;->a(Landroid/os/Message;)V

    return-void
.end method
