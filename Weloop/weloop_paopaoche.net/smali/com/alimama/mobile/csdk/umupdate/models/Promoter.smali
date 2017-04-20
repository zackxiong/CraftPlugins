.class public Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:[Ljava/lang/String;

.field public F:D

.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Ljava/lang/String;

.field public t:J

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->G:Ljava/lang/String;

    .line 288
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/c;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/models/c;-><init>()V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->w:I

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->x:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->y:Ljava/lang/String;

    .line 194
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->D:Z

    .line 392
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v1, ""

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    .line 177
    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->w:I

    .line 179
    const-string v1, ""

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->x:Ljava/lang/String;

    .line 181
    const-string v1, ""

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->y:Ljava/lang/String;

    .line 194
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->D:Z

    .line 247
    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->b:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->c:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->d:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->e:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->f:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->g:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->h:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->i:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->j:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->k:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->l:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->m:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->n:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->o:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->p:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->q:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->r:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->s:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->t:J

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->v:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->w:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->D:Z

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    new-array v1, v0, [Ljava/lang/String;

    .line 275
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 277
    if-lez v0, :cond_0

    .line 278
    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->E:[Ljava/lang/String;

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->x:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->z:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->A:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->B:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->C:Ljava/lang/String;

    .line 286
    :cond_1
    return-void

    .line 271
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->w:I

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->x:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->y:Ljava/lang/String;

    .line 194
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->D:Z

    .line 395
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a(Lorg/json/JSONObject;)V

    .line 396
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 484
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/json/JSONObject;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 486
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 500
    :goto_0
    return-object v0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const-string v1, "SecurityException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :catch_1
    move-exception v0

    .line 490
    const-string v1, "NoSuchMethodException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 491
    :catch_2
    move-exception v0

    .line 492
    const-string v1, "IllegalArgumentException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 493
    :catch_3
    move-exception v0

    .line 494
    const-string v1, "InstantiationException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 495
    :catch_4
    move-exception v0

    .line 496
    const-string v1, "IllegalAccessException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 497
    :catch_5
    move-exception v0

    .line 498
    const-string v1, "InvocationTargetException"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 399
    if-nez p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const-string v0, "promoter"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a:Ljava/lang/String;

    .line 405
    const-string v0, "category"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->b:I

    .line 406
    const-string v0, "content_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->c:I

    .line 407
    const-string v0, "display_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->d:I

    .line 410
    const-string v0, "img_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->f:I

    .line 413
    const-string v0, "img"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->e:Ljava/lang/String;

    .line 415
    const-string v0, "anim_in"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->g:I

    .line 417
    const-string v0, "landing_type"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->h:I

    .line 421
    const-string v0, "text_size"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->j:Ljava/lang/String;

    .line 422
    const-string v0, "text_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->k:Ljava/lang/String;

    .line 423
    const-string v0, "text_font"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->i:Ljava/lang/String;

    .line 425
    const-string v0, "title"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->l:Ljava/lang/String;

    .line 426
    const-string v0, "provider"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->m:Ljava/lang/String;

    .line 428
    const-string v0, "ad_words"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->n:Ljava/lang/String;

    .line 429
    const-string v0, "description"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->o:Ljava/lang/String;

    .line 432
    const-string v0, "filter"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->D:Z

    .line 435
    const-string v0, "icon"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->p:Ljava/lang/String;

    .line 437
    const-string v0, "url"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->q:Ljava/lang/String;

    .line 439
    const-string v0, "new"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->w:I

    .line 441
    const-string v0, "app_version_code"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->r:I

    .line 443
    const-string v0, "url_in_app"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->s:Ljava/lang/String;

    .line 445
    const-string v0, "size"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->t:J

    .line 447
    const-string v0, "app_package_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    .line 450
    const-string v0, "app_version_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->v:Ljava/lang/String;

    .line 453
    const-string v0, "act_pams"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->x:Ljava/lang/String;

    .line 457
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->z:Ljava/lang/String;

    .line 458
    const-string v0, "promoprice"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->A:Ljava/lang/String;

    .line 459
    const-string v0, "sell"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->B:I

    .line 460
    const-string v0, "bid"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->F:D

    .line 461
    const-string v0, "landing_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->C:Ljava/lang/String;

    .line 464
    :try_start_0
    const-string v0, "imgs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "imgs"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 468
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->E:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 471
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 432
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-wide v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->t:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->E:[Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->E:[Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return-void

    :cond_0
    move v0, v1

    .line 236
    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->E:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->E:[Ljava/lang/String;

    goto :goto_2
.end method
