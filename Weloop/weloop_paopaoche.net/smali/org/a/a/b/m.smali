.class public Lorg/a/a/b/m;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/b/m$b;,
        Lorg/a/a/b/m$c;,
        Lorg/a/a/b/m$h;,
        Lorg/a/a/b/m$f;,
        Lorg/a/a/b/m$g;,
        Lorg/a/a/b/m$d;,
        Lorg/a/a/b/m$e;,
        Lorg/a/a/b/m$a;
    }
.end annotation


# static fields
.field static i:Ljava/lang/Class;


# instance fields
.field a:I

.field protected b:Ljava/lang/StringBuffer;

.field protected c:I

.field protected d:I

.field e:Lorg/a/a/b/l;

.field f:Lorg/a/a/b/l;

.field protected g:Lorg/a/a/b/e;

.field protected h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    .line 74
    new-instance v0, Lorg/a/a/b/e;

    invoke-direct {v0}, Lorg/a/a/b/e;-><init>()V

    iput-object v0, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    .line 79
    iput-object p1, p0, Lorg/a/a/b/m;->h:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/a/a/b/m;->c:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/b/m;->a:I

    .line 82
    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 273
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b(Lorg/a/a/b/l;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/a/a/b/m;->e:Lorg/a/a/b/l;

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lorg/a/a/b/m;->f:Lorg/a/a/b/l;

    iput-object p1, p0, Lorg/a/a/b/m;->e:Lorg/a/a/b/l;

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/a/a/b/m;->f:Lorg/a/a/b/l;

    iput-object p1, v0, Lorg/a/a/b/l;->a:Lorg/a/a/b/l;

    .line 90
    iput-object p1, p0, Lorg/a/a/b/m;->f:Lorg/a/a/b/l;

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget v0, p0, Lorg/a/a/b/m;->d:I

    iget v1, p0, Lorg/a/a/b/m;->c:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/a/a/b/m;->h:Ljava/lang/String;

    iget v1, p0, Lorg/a/a/b/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lorg/a/a/b/m;->h:Ljava/lang/String;

    const/16 v1, 0x7d

    iget v2, p0, Lorg/a/a/b/m;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 98
    iget v0, p0, Lorg/a/a/b/m;->d:I

    if-le v1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/a/a/b/m;->h:Ljava/lang/String;

    iget v2, p0, Lorg/a/a/b/m;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/a/a/b/m;->d:I

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(C)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    .line 233
    sparse-switch p1, :sswitch_data_0

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unexpected char ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/a/a/b/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " in conversion patterrn."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->b(Ljava/lang/String;)V

    .line 361
    new-instance v0, Lorg/a/a/b/m$e;

    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/b/m$e;-><init>(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 365
    :goto_0
    invoke-virtual {p0, v0}, Lorg/a/a/b/m;->a(Lorg/a/a/b/l;)V

    .line 366
    return-void

    .line 235
    :sswitch_0
    new-instance v0, Lorg/a/a/b/m$b;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    invoke-virtual {p0}, Lorg/a/a/b/m;->b()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lorg/a/a/b/m$b;-><init>(Lorg/a/a/b/m;Lorg/a/a/b/e;I)V

    .line 239
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 242
    :sswitch_1
    new-instance v0, Lorg/a/a/b/m$c;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    invoke-virtual {p0}, Lorg/a/a/b/m;->b()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lorg/a/a/b/m$c;-><init>(Lorg/a/a/b/m;Lorg/a/a/b/e;I)V

    .line 246
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 249
    :sswitch_2
    const-string v1, "ISO8601"

    .line 251
    invoke-virtual {p0}, Lorg/a/a/b/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_4

    .line 255
    :goto_1
    const-string v1, "ISO8601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    new-instance v0, Lorg/a/a/b/f;

    invoke-direct {v0}, Lorg/a/a/b/f;-><init>()V

    .line 276
    :goto_2
    new-instance v1, Lorg/a/a/b/m$d;

    iget-object v2, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    invoke-direct {v1, v2, v0}, Lorg/a/a/b/m$d;-><init>(Lorg/a/a/b/e;Ljava/text/DateFormat;)V

    .line 279
    iget-object v0, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v0, v1

    .line 280
    goto :goto_0

    .line 258
    :cond_0
    const-string v1, "ABSOLUTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    new-instance v0, Lorg/a/a/b/a;

    invoke-direct {v0}, Lorg/a/a/b/a;-><init>()V

    goto :goto_2

    .line 261
    :cond_1
    const-string v1, "DATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    new-instance v0, Lorg/a/a/b/d;

    invoke-direct {v0}, Lorg/a/a/b/d;-><init>()V

    goto :goto_2

    .line 266
    :cond_2
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 274
    goto :goto_2

    .line 268
    :catch_0
    move-exception v1

    .line 269
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate SimpleDateFormat with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/a/a/b/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    const-string v1, "org.apache.log4j.helpers.ISO8601DateFormat"

    sget-object v0, Lorg/a/a/b/m;->i:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.text.DateFormat"

    invoke-static {v0}, Lorg/a/a/b/m;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/a/a/b/m;->i:Ljava/lang/Class;

    :goto_3
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/a/a/b/k;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/a/a/b/m;->i:Ljava/lang/Class;

    goto :goto_3

    .line 282
    :sswitch_3
    new-instance v0, Lorg/a/a/b/m$f;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x3ec

    invoke-direct {v0, p0, v1, v2}, Lorg/a/a/b/m$f;-><init>(Lorg/a/a/b/m;Lorg/a/a/b/e;I)V

    .line 286
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 289
    :sswitch_4
    new-instance v0, Lorg/a/a/b/m$f;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lorg/a/a/b/m$f;-><init>(Lorg/a/a/b/m;Lorg/a/a/b/e;I)V

    .line 293
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_5
    new-instance v0, Lorg/a/a/b/m$f;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x3eb

    invoke-direct {v0, p0, v1, v2}, Lorg/a/a/b/m$f;-><init>(Lorg/a/a/b/m;Lorg/a/a/b/e;I)V

    .line 300
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 303
    :sswitch_6
    new-instance v0, Lorg/a/a/b/m$a;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x7d4

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/m$a;-><init>(Lorg/a/a/b/e;I)V

    .line 306
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 309
    :sswitch_7
    new-instance v0, Lorg/a/a/b/m$f;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x3e9

    invoke-direct {v0, p0, v1, v2}, Lorg/a/a/b/m$f;-><init>(Lorg/a/a/b/m;Lorg/a/a/b/e;I)V

    .line 313
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 316
    :sswitch_8
    new-instance v0, Lorg/a/a/b/m$a;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x7d2

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/m$a;-><init>(Lorg/a/a/b/e;I)V

    .line 319
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 322
    :sswitch_9
    new-instance v0, Lorg/a/a/b/m$a;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/m$a;-><init>(Lorg/a/a/b/e;I)V

    .line 326
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 329
    :sswitch_a
    new-instance v0, Lorg/a/a/b/m$a;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/m$a;-><init>(Lorg/a/a/b/e;I)V

    .line 332
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 349
    :sswitch_b
    new-instance v0, Lorg/a/a/b/m$a;

    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    const/16 v2, 0x7d3

    invoke-direct {v0, v1, v2}, Lorg/a/a/b/m$a;-><init>(Lorg/a/a/b/e;I)V

    .line 351
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 354
    :sswitch_c
    invoke-virtual {p0}, Lorg/a/a/b/m;->a()Ljava/lang/String;

    move-result-object v1

    .line 355
    new-instance v0, Lorg/a/a/b/m$g;

    iget-object v2, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    invoke-direct {v0, v2, v1}, Lorg/a/a/b/m$g;-><init>(Lorg/a/a/b/e;Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x46 -> :sswitch_3
        0x4c -> :sswitch_5
        0x4d -> :sswitch_7
        0x58 -> :sswitch_c
        0x63 -> :sswitch_0
        0x64 -> :sswitch_2
        0x6c -> :sswitch_4
        0x6d -> :sswitch_6
        0x70 -> :sswitch_8
        0x72 -> :sswitch_9
        0x74 -> :sswitch_a
        0x78 -> :sswitch_b
    .end sparse-switch
.end method

.method protected a(Lorg/a/a/b/l;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iget-object v0, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 372
    invoke-direct {p0, p1}, Lorg/a/a/b/m;->b(Lorg/a/a/b/l;)V

    .line 374
    iput v1, p0, Lorg/a/a/b/m;->a:I

    .line 376
    iget-object v0, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    invoke-virtual {v0}, Lorg/a/a/b/e;->a()V

    .line 377
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lorg/a/a/b/m;->a()Ljava/lang/String;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_0

    .line 117
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    if-gtz v1, :cond_1

    .line 119
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Precision option ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") isn\'t a positive integer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/a/a/b/h;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Category option \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" not a decimal integer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/a/a/b/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public c()Lorg/a/a/b/l;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v3, 0x0

    .line 134
    iput v3, p0, Lorg/a/a/b/m;->d:I

    .line 135
    :goto_0
    iget v0, p0, Lorg/a/a/b/m;->d:I

    iget v1, p0, Lorg/a/a/b/m;->c:I

    if-ge v0, v1, :cond_8

    .line 136
    iget-object v0, p0, Lorg/a/a/b/m;->h:Ljava/lang/String;

    iget v1, p0, Lorg/a/a/b/m;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/a/a/b/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    iget v1, p0, Lorg/a/a/b/m;->a:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 140
    :pswitch_1
    iget v1, p0, Lorg/a/a/b/m;->d:I

    iget v2, p0, Lorg/a/a/b/m;->c:I

    if-ne v1, v2, :cond_0

    .line 141
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 144
    :cond_0
    const/16 v1, 0x25

    if-ne v0, v1, :cond_2

    .line 146
    iget-object v1, p0, Lorg/a/a/b/m;->h:Ljava/lang/String;

    iget v2, p0, Lorg/a/a/b/m;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 156
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    new-instance v1, Lorg/a/a/b/m$e;

    iget-object v2, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/a/a/b/m$e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/a/a/b/m;->b(Lorg/a/a/b/l;)V

    .line 162
    :cond_1
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 163
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    iput v6, p0, Lorg/a/a/b/m;->a:I

    .line 165
    iget-object v0, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    invoke-virtual {v0}, Lorg/a/a/b/e;->a()V

    goto :goto_0

    .line 148
    :sswitch_0
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    iget v0, p0, Lorg/a/a/b/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/b/m;->d:I

    goto :goto_0

    .line 152
    :sswitch_1
    iget-object v0, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    sget-object v1, Lorg/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget v0, p0, Lorg/a/a/b/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/b/m;->d:I

    goto :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    packed-switch v0, :pswitch_data_1

    .line 182
    if-lt v0, v4, :cond_3

    if-gt v0, v5, :cond_3

    .line 183
    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    add-int/lit8 v0, v0, -0x30

    iput v0, v1, Lorg/a/a/b/e;->a:I

    .line 184
    const/4 v0, 0x4

    iput v0, p0, Lorg/a/a/b/m;->a:I

    goto/16 :goto_0

    .line 176
    :pswitch_3
    iget-object v0, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    iput-boolean v6, v0, Lorg/a/a/b/e;->c:Z

    goto/16 :goto_0

    .line 179
    :pswitch_4
    iput v7, p0, Lorg/a/a/b/m;->a:I

    goto/16 :goto_0

    .line 187
    :cond_3
    invoke-virtual {p0, v0}, Lorg/a/a/b/m;->a(C)V

    goto/16 :goto_0

    .line 191
    :pswitch_5
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    if-lt v0, v4, :cond_4

    if-gt v0, v5, :cond_4

    .line 193
    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    iget-object v2, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    iget v2, v2, Lorg/a/a/b/e;->a:I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    iput v0, v1, Lorg/a/a/b/e;->a:I

    goto/16 :goto_0

    .line 194
    :cond_4
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    .line 195
    iput v7, p0, Lorg/a/a/b/m;->a:I

    goto/16 :goto_0

    .line 197
    :cond_5
    invoke-virtual {p0, v0}, Lorg/a/a/b/m;->a(C)V

    goto/16 :goto_0

    .line 201
    :pswitch_6
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    if-lt v0, v4, :cond_6

    if-gt v0, v5, :cond_6

    .line 203
    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    add-int/lit8 v0, v0, -0x30

    iput v0, v1, Lorg/a/a/b/e;->b:I

    .line 204
    const/4 v0, 0x5

    iput v0, p0, Lorg/a/a/b/m;->a:I

    goto/16 :goto_0

    .line 207
    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error occured in position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/a/a/b/m;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->b(Ljava/lang/String;)V

    .line 209
    iput v3, p0, Lorg/a/a/b/m;->a:I

    goto/16 :goto_0

    .line 213
    :pswitch_7
    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    if-lt v0, v4, :cond_7

    if-gt v0, v5, :cond_7

    .line 215
    iget-object v1, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    iget-object v2, p0, Lorg/a/a/b/m;->g:Lorg/a/a/b/e;

    iget v2, v2, Lorg/a/a/b/e;->b:I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    iput v0, v1, Lorg/a/a/b/e;->b:I

    goto/16 :goto_0

    .line 217
    :cond_7
    invoke-virtual {p0, v0}, Lorg/a/a/b/m;->a(C)V

    .line 218
    iput v3, p0, Lorg/a/a/b/m;->a:I

    goto/16 :goto_0

    .line 223
    :cond_8
    iget-object v0, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    new-instance v0, Lorg/a/a/b/m$e;

    iget-object v1, p0, Lorg/a/a/b/m;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/b/m$e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/a/a/b/m;->b(Lorg/a/a/b/l;)V

    .line 227
    :cond_9
    iget-object v0, p0, Lorg/a/a/b/m;->e:Lorg/a/a/b/l;

    return-object v0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch

    .line 174
    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
