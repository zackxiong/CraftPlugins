.class public Lcom/alimama/mobile/csdk/umupdate/b/d$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final k:Ljava/util/Random;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->k:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->l:I

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->m:Ljava/lang/String;

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->n:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a:Ljava/util/List;

    .line 146
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    .line 147
    return-void
.end method

.method private c()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/mobile/b;->b()Lcom/alimama/mobile/csdk/umupdate/a/a;

    move-result-object v2

    .line 275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    :try_start_0
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 279
    const-string v3, "slot_id"

    iget-object v4, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v4, v4, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :goto_0
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    invoke-virtual {v3}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    const-string v4, "tcost"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    const-string v3, "tabids"

    iget-object v4, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->i:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_1
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->E:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 297
    const-string v3, "tabid"

    iget-object v4, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v4, v4, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->E:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_2
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 301
    const-string v3, "spvnums"

    iget-object v4, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->j:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_3
    const-string v3, "sdk_version"

    sget-object v4, Lcom/alimama/mobile/csdk/umupdate/a/i;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v3, "protocol_version"

    sget-object v4, Lcom/alimama/mobile/csdk/umupdate/a/i;->c:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v3, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v3, "device_model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_8

    .line 311
    :try_start_1
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->m:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 312
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 314
    array-length v5, v3

    :goto_1
    if-ge v0, v5, :cond_7

    aget-object v6, v3, v0

    .line 315
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 316
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 317
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->A:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 281
    const-string v3, "app_key"

    iget-object v4, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v4, v4, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->A:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :cond_6
    :try_start_3
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/i;->e:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Both APPKEY and SLOTID are empty, please specify either one. Request aborted."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 284
    const/4 v0, 0x0

    .line 415
    :goto_2
    return-object v0

    .line 320
    :cond_7
    :try_start_4
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 323
    :catch_1
    move-exception v0

    .line 327
    :cond_8
    :try_start_5
    invoke-interface {v2}, Lcom/alimama/mobile/csdk/umupdate/a/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 329
    const-string v3, "mc"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_9
    const-string v0, "carrier"

    invoke-interface {v2}, Lcom/alimama/mobile/csdk/umupdate/a/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    if-eqz v0, :cond_a

    .line 335
    const-string v0, "module"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_a
    const-string v0, "os_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "os"

    const-string v3, "android"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "rid"

    sget-object v3, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->k:Ljava/util/Random;

    const/16 v4, 0x7fff

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-interface {v2}, Lcom/alimama/mobile/csdk/umupdate/a/a;->l()[Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string v3, "access"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v3, "access_subtype"

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 355
    const-string v0, "sid"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->I:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_b
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 359
    const-string v0, "psid"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->J:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_c
    const-string v0, "device_id"

    invoke-interface {v2}, Lcom/alimama/mobile/csdk/umupdate/a/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v0, "idmd5"

    invoke-interface {v2}, Lcom/alimama/mobile/csdk/umupdate/a/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alimama/mobile/csdk/umupdate/a/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 365
    :try_start_6
    invoke-interface {v2}, Lcom/alimama/mobile/csdk/umupdate/a/a;->m()Landroid/location/Location;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_d

    .line 367
    const-string v3, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v3, "lng"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v3, "gps_type"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v3, "gpst"

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v3, "gps_accuracy"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 377
    :cond_d
    :goto_4
    :try_start_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 378
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 380
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 381
    const-string v4, "date"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v3, "time"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v0, "timezone"

    invoke-interface {v2}, Lcom/alimama/mobile/csdk/umupdate/a/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v0, "orientation"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v3, "promoter"

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->d:Ljava/lang/String;

    :goto_5
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v0, "category"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v0, "action_type"

    iget v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v0, "action_index"

    iget v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v0, "layout_type"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget v3, v3, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->C:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v0, "page_level"

    iget v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/i;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MUNION_CHANNEL"

    invoke-interface {v2, v0}, Lcom/alimama/mobile/csdk/umupdate/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 403
    const-string v2, "channel"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_e
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->l:I

    if-eqz v0, :cond_f

    .line 406
    const-string v0, "display_style"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_f
    const-string v0, "page_content_type"

    iget v2, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->A:Ljava/lang/String;

    :goto_7
    move-object v0, v1

    .line 415
    goto/16 :goto_2

    .line 388
    :cond_10
    const-string v0, ""

    goto :goto_5

    .line 400
    :cond_11
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/a/i;->d:Ljava/lang/String;

    goto :goto_6

    .line 410
    :cond_12
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    .line 373
    :catch_2
    move-exception v0

    goto/16 :goto_4
.end method


# virtual methods
.method public a(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->f:I

    .line 163
    return-object p0
.end method

.method public varargs a([Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)Lcom/alimama/mobile/csdk/umupdate/b/d$a;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 187
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 188
    iget-object v4, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    .line 195
    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 196
    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->m:Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set promoter act_pams to report act_params. ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    :goto_2
    if-ge v1, v2, :cond_2

    .line 211
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->b:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 200
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->m:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set slot act_pams to report act_params. ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/alimama/mobile/csdk/umupdate/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->d:Ljava/lang/String;

    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->e:Ljava/lang/String;

    .line 219
    :cond_3
    return-object p0
.end method

.method public a()Lcom/alimama/mobile/csdk/umupdate/b/d;
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b()Ljava/util/Map;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/alimama/mobile/csdk/umupdate/b/d;

    invoke-direct {v1, v0}, Lcom/alimama/mobile/csdk/umupdate/b/d;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public b(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->g:I

    .line 168
    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->b()Lcom/alimama/mobile/csdk/umupdate/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alimama/mobile/csdk/umupdate/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->c:Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->c()Ljava/util/Map;

    move-result-object v0

    .line 231
    return-object v0

    .line 228
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method public c(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->h:I

    .line 173
    return-object p0
.end method
