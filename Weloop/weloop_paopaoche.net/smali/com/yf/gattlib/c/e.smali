.class public Lcom/yf/gattlib/c/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "PhoneAdapter"

    sput-object v0, Lcom/yf/gattlib/c/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/yf/gattlib/c/e;->h()I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string v3, "flyme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const-string v3, " (\\d*)\\.(\\d*)\\.(\\d*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 133
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 139
    if-lez v3, :cond_2

    move v0, v1

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    if-ltz v3, :cond_0

    .line 145
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 146
    if-lez v3, :cond_3

    move v0, v1

    .line 147
    goto :goto_0

    .line 148
    :cond_3
    if-ltz v3, :cond_0

    .line 152
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 153
    if-lez v2, :cond_4

    move v0, v1

    .line 154
    goto :goto_0

    .line 155
    :cond_4
    if-gez v2, :cond_0

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/yf/gattlib/c/f;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/c/f;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/c/f;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const-wide/32 v0, 0x13c68

    .line 54
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x3afc

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string v3, "flyme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string v3, " (\\d*)\\.(\\d*)\\.(\\d*)a"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 172
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 178
    if-lez v3, :cond_2

    move v0, v1

    .line 179
    goto :goto_0

    .line 180
    :cond_2
    if-ltz v3, :cond_0

    .line 184
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 185
    if-lez v3, :cond_3

    move v0, v1

    .line 186
    goto :goto_0

    .line 187
    :cond_3
    if-ltz v3, :cond_0

    .line 191
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 192
    if-lez v2, :cond_4

    move v0, v1

    .line 193
    goto :goto_0

    .line 194
    :cond_4
    if-gez v2, :cond_0

    goto :goto_0
.end method

.method public static c()J
    .locals 3

    .prologue
    .line 59
    const-wide/16 v0, 0xc1c

    .line 61
    invoke-static {}, Lcom/yf/gattlib/c/f;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-wide/16 v0, 0x3afc

    .line 64
    :cond_0
    return-wide v0
.end method

.method public static d()I
    .locals 6

    .prologue
    const/16 v3, 0x2a

    const/16 v1, 0x1d

    const/16 v0, 0x15

    const/16 v2, 0x14

    .line 68
    const/16 v4, 0xb

    .line 69
    invoke-static {}, Lcom/yf/gattlib/c/f;->l()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-static {}, Lcom/yf/gattlib/c/f;->m()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {}, Lcom/yf/gattlib/c/f;->o()Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lcom/yf/gattlib/c/f;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-static {}, Lcom/yf/gattlib/c/f;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    const/16 v0, 0x25

    goto :goto_0

    .line 79
    :cond_4
    invoke-static {}, Lcom/yf/gattlib/c/f;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    const/16 v0, 0xf

    goto :goto_0

    .line 81
    :cond_5
    invoke-static {}, Lcom/yf/gattlib/c/f;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    const/4 v0, 0x7

    goto :goto_0

    .line 83
    :cond_6
    invoke-static {}, Lcom/yf/gattlib/c/f;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_7
    invoke-static {}, Lcom/yf/gattlib/c/f;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    .line 86
    goto :goto_0

    .line 87
    :cond_8
    invoke-static {}, Lcom/yf/gattlib/c/f;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 88
    goto :goto_0

    .line 89
    :cond_9
    invoke-static {}, Lcom/yf/gattlib/c/f;->u()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    .line 90
    goto :goto_0

    :cond_a
    move v0, v4

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/yf/gattlib/c/f;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/c/f;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/c/f;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/c/f;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/gattlib/c/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Lcom/yf/gattlib/c/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    const-string v0, ""

    .line 212
    invoke-static {}, Lcom/yf/gattlib/c/f;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const-string v0, "com.miui.gallery"

    .line 251
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/yf/gattlib/c/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u624b\u673a\u578b\u53f7 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u76f8\u518c\u5305\u540d = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 252
    return-object v0

    .line 214
    :cond_1
    invoke-static {}, Lcom/yf/gattlib/c/f;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    const-string v0, "com.miui.gallery"

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {}, Lcom/yf/gattlib/c/f;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    const-string v0, "com.oppo.gallery3d"

    goto :goto_0

    .line 218
    :cond_3
    invoke-static {}, Lcom/yf/gattlib/c/f;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    const-string v0, ""

    goto :goto_0

    .line 220
    :cond_4
    invoke-static {}, Lcom/yf/gattlib/c/f;->s()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/yf/gattlib/c/f;->t()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/yf/gattlib/c/f;->y()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/yf/gattlib/c/f;->D()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 221
    :cond_5
    const-string v0, "com.meizu.media.gallery"

    goto :goto_0

    .line 222
    :cond_6
    invoke-static {}, Lcom/yf/gattlib/c/f;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 223
    const-string v0, "com.sec.android.gallery3d"

    goto :goto_0

    .line 224
    :cond_7
    invoke-static {}, Lcom/yf/gattlib/c/f;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 225
    const-string v0, "com.sec.android.gallery3d"

    goto :goto_0

    .line 226
    :cond_8
    invoke-static {}, Lcom/yf/gattlib/c/f;->w()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 227
    const-string v0, "com.android.gallery3d"

    goto :goto_0

    .line 228
    :cond_9
    invoke-static {}, Lcom/yf/gattlib/c/f;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 229
    const-string v0, "com.meizu.media.gallery"

    goto/16 :goto_0

    .line 230
    :cond_a
    invoke-static {}, Lcom/yf/gattlib/c/f;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 231
    const-string v0, "com.htc.album"

    goto/16 :goto_0

    .line 232
    :cond_b
    invoke-static {}, Lcom/yf/gattlib/c/f;->k()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 233
    const-string v0, "com.google.android.gallery3d"

    goto/16 :goto_0

    .line 234
    :cond_c
    invoke-static {}, Lcom/yf/gattlib/c/f;->f()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 235
    const-string v0, "com.miui.gallery"

    goto/16 :goto_0

    .line 236
    :cond_d
    invoke-static {}, Lcom/yf/gattlib/c/f;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 237
    const-string v0, "com.meizu.media.gallery"

    goto/16 :goto_0

    .line 238
    :cond_e
    invoke-static {}, Lcom/yf/gattlib/c/f;->d()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 239
    const-string v0, "com.android.gallery3d"

    goto/16 :goto_0

    .line 240
    :cond_f
    invoke-static {}, Lcom/yf/gattlib/c/f;->c()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 241
    const-string v0, "com.android.gallery3d"

    goto/16 :goto_0

    .line 242
    :cond_10
    invoke-static {}, Lcom/yf/gattlib/c/f;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 243
    const-string v0, "com.sonyericsson.album"

    goto/16 :goto_0

    .line 244
    :cond_11
    invoke-static {}, Lcom/yf/gattlib/c/f;->F()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 245
    const-string v0, "com.oppo.gallery3d"

    goto/16 :goto_0

    .line 246
    :cond_12
    invoke-static {}, Lcom/yf/gattlib/c/f;->E()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 247
    const-string v0, "com.android.gallery3d"

    goto/16 :goto_0

    .line 248
    :cond_13
    invoke-static {}, Lcom/yf/gattlib/c/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const-string v0, "com.android.gallery3d"

    goto/16 :goto_0
.end method

.method private static h()I
    .locals 2

    .prologue
    const/16 v0, 0x1e

    .line 23
    invoke-static {}, Lcom/yf/gattlib/c/f;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    invoke-static {}, Lcom/yf/gattlib/c/f;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/yf/gattlib/c/f;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {}, Lcom/yf/gattlib/c/f;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    invoke-static {}, Lcom/yf/gattlib/c/f;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-static {}, Lcom/yf/gattlib/c/f;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    const/16 v0, 0x40

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/yf/gattlib/c/f;->s()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-static {}, Lcom/yf/gattlib/c/f;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    const/16 v0, 0x20

    goto :goto_0

    .line 39
    :cond_3
    invoke-static {}, Lcom/yf/gattlib/c/f;->x()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lcom/yf/gattlib/c/f;->A()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-static {}, Lcom/yf/gattlib/c/f;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
