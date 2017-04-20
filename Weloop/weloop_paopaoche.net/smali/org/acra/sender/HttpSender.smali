.class public Lorg/acra/sender/HttpSender;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lorg/acra/sender/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/sender/HttpSender$Method;,
        Lorg/acra/sender/HttpSender$Type;
    }
.end annotation


# static fields
.field private static synthetic e:[I

.field private static synthetic f:[I


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/acra/sender/HttpSender$Method;

.field private final d:Lorg/acra/sender/HttpSender$Type;


# direct methods
.method public constructor <init>(Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/sender/HttpSender$Method;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lorg/acra/sender/HttpSender;->c:Lorg/acra/sender/HttpSender$Method;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/acra/sender/HttpSender;->a:Landroid/net/Uri;

    .line 144
    iput-object p3, p0, Lorg/acra/sender/HttpSender;->b:Ljava/util/Map;

    .line 145
    iput-object p2, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Type;

    .line 146
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->e()[Lorg/acra/ReportField;

    move-result-object v0

    .line 239
    array-length v1, v0

    if-nez v1, :cond_3

    .line 240
    sget-object v0, Lorg/acra/d;->c:[Lorg/acra/ReportField;

    move-object v2, v0

    .line 243
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 244
    array-length v5, v2

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-lt v3, v5, :cond_0

    .line 251
    return-object v4

    .line 244
    :cond_0
    aget-object v1, v2, v3

    .line 245
    iget-object v0, p0, Lorg/acra/sender/HttpSender;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/sender/HttpSender;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 246
    :cond_1
    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 248
    :cond_2
    iget-object v0, p0, Lorg/acra/sender/HttpSender;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lorg/acra/sender/HttpSender;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/acra/sender/HttpSender$Type;->values()[Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v1}, Lorg/acra/sender/HttpSender$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lorg/acra/sender/HttpSender$Type;->JSON:Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v1}, Lorg/acra/sender/HttpSender$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lorg/acra/sender/HttpSender;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lorg/acra/sender/HttpSender;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/acra/sender/HttpSender$Method;->values()[Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v1}, Lorg/acra/sender/HttpSender$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lorg/acra/sender/HttpSender$Method;->PUT:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v1}, Lorg/acra/sender/HttpSender$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lorg/acra/sender/HttpSender;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/acra/b/c;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/acra/sender/HttpSender;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    :goto_0
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connect to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/acra/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 189
    :goto_1
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/b;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/acra/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    :goto_2
    new-instance v3, Lorg/acra/e/c;

    invoke-direct {v3}, Lorg/acra/e/c;-><init>()V

    .line 193
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/b;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/acra/e/c;->a(I)V

    .line 194
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/b;->F()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/acra/e/c;->b(I)V

    .line 195
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/b;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/acra/e/c;->c(I)V

    .line 196
    invoke-virtual {v3, v2}, Lorg/acra/e/c;->a(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v3, v1}, Lorg/acra/e/c;->b(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/acra/e/c;->a(Ljava/util/Map;)V

    .line 200
    const-string v1, ""

    .line 203
    invoke-static {}, Lorg/acra/sender/HttpSender;->a()[I

    move-result-object v1

    iget-object v2, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v2}, Lorg/acra/sender/HttpSender$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 209
    invoke-direct {p0, p1}, Lorg/acra/sender/HttpSender;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 210
    invoke-static {v1}, Lorg/acra/e/c;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 211
    :goto_3
    invoke-static {}, Lorg/acra/sender/HttpSender;->b()[I

    move-result-object v1

    .line 216
    iget-object v4, p0, Lorg/acra/sender/HttpSender;->c:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v4}, Lorg/acra/sender/HttpSender$Method;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_1

    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/sender/HttpSender;->c:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v2}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/acra/e/e$a; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Lorg/acra/sender/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/b;->P()Lorg/acra/sender/HttpSender$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    const-string v3, " report via Http "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/sender/HttpSender;->c:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v3}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-direct {v1, v2, v0}, Lorg/acra/sender/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lorg/acra/sender/HttpSender;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/acra/e/e$a; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    new-instance v1, Lorg/acra/sender/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/b;->P()Lorg/acra/sender/HttpSender$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    const-string v3, " report via Http "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/acra/sender/HttpSender;->c:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v3}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-direct {v1, v2, v0}, Lorg/acra/sender/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_1
    :try_start_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/b;->l()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 190
    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->m()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 205
    :pswitch_0
    invoke-virtual {p1}, Lorg/acra/b/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 206
    goto/16 :goto_3

    .line 220
    :pswitch_1
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-virtual {p1, v4}, Lorg/acra/b/c;->a(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 225
    :pswitch_2
    iget-object v1, p0, Lorg/acra/sender/HttpSender;->c:Lorg/acra/sender/HttpSender$Method;

    iget-object v4, p0, Lorg/acra/sender/HttpSender;->d:Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v3, v0, v1, v2, v4}, Lorg/acra/e/c;->a(Ljava/net/URL;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Lorg/acra/sender/HttpSender$Type;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/acra/e/e$a; {:try_start_2 .. :try_end_2} :catch_1

    .line 234
    return-void

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 216
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
