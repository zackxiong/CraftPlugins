.class public Lcom/yf/smart/weloopx/data/models/LocationModel;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationModel"


# instance fields
.field public LABEL_ID:Ljava/lang/String;

.field public LOCATION_ALTITUTE:Ljava/lang/String;

.field public LOCATION_DATE:Ljava/lang/String;

.field public LOCATION_DEVICE_ID:Ljava/lang/String;

.field public LOCATION_DIRECTION:Ljava/lang/String;

.field public LOCATION_ID:I

.field public LOCATION_IS_SUBMIT:Ljava/lang/String;

.field public LOCATION_LAT:Ljava/lang/String;

.field public LOCATION_LOCATION_INFO:Ljava/lang/String;

.field public LOCATION_LON:Ljava/lang/String;

.field public LOCATION_RADIUS:Ljava/lang/String;

.field public LOCATION_SPEED:Ljava/lang/String;

.field public LOCATION_TIME:Ljava/lang/String;

.field public LOCATION_USER_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_ID:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LABEL_ID:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DATE:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_TIME:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LAT:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LON:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_ALTITUTE:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DIRECTION:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_SPEED:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DEVICE_ID:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_USER_ID:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_IS_SUBMIT:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LOCATION_INFO:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_RADIUS:Ljava/lang/String;

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/LocationModel;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 151
    new-instance v1, Lcom/yf/smart/weloopx/data/models/LocationModel;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/data/models/LocationModel;-><init>()V

    .line 152
    invoke-virtual {v1, p1}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_DATE(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, p0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_LOCATION_INFO(Ljava/lang/String;)V

    .line 154
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_DEVICE_ID(Ljava/lang/String;)V

    .line 155
    const-string v0, "1"

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_IS_SUBMIT(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_USER_ID(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/yf/gattlib/p/f;->a(Ljava/lang/String;II)[B

    move-result-object v0

    .line 159
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 160
    invoke-static {v2, p1}, Lcom/yf/smart/weloopx/data/models/LocationModel;->obtainByteOrder(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->hexToDateTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_TIME(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_LAT(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_LON(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_ALTITUTE(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 186
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_DIRECTION(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 192
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_SPEED(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 198
    :goto_5
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v0, "LocationModel \u65f6\u95f4\u89e3\u6790\u51fa\u9519"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationModel \u7cbe\u5ea6\u89e3\u6790\u51fa\u9519  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :catch_2
    move-exception v0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationModel \u7eac\u5ea6\u89e3\u6790\u51fa\u9519  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 182
    :catch_3
    move-exception v0

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationModel strAli\u89e3\u6790\u51fa\u9519  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 188
    :catch_4
    move-exception v0

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationModel \u89d2\u5ea6\u89e3\u6790\u51fa\u9519  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 194
    :catch_5
    move-exception v0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationModel E  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public static encodeLocationInfo(IDDDFF)Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 225
    double-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 226
    double-to-int v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 227
    double-to-int v1, p5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 228
    float-to-int v1, p7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 229
    float-to-int v1, p8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/yf/gattlib/p/f;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexToDateTime(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 215
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 216
    const-string v1, "2015-01-01 00:00:00"

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 217
    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 218
    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/g/i;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static obtainByteOrder(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 206
    :try_start_0
    invoke-static {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->hexToDateTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 209
    :goto_0
    return-object v0

    .line 206
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 209
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0
.end method


# virtual methods
.method public getLABEL_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LABEL_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_ALTITUTE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_ALTITUTE:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_DATE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DATE:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_DEVICE_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DEVICE_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_DIRECTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DIRECTION:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_ID()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_ID:I

    return v0
.end method

.method public getLOCATION_IS_SUBMIT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_IS_SUBMIT:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_LAT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LAT:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_LOCATION_INFO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LOCATION_INFO:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_LON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LON:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_RADIUS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_RADIUS:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_SPEED()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_SPEED:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_TIME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_TIME:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCATION_USER_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_USER_ID:Ljava/lang/String;

    return-object v0
.end method

.method public setLABEL_ID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LABEL_ID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setLOCATION_ALTITUTE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_ALTITUTE:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setLOCATION_DATE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DATE:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setLOCATION_DEVICE_ID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DEVICE_ID:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setLOCATION_DIRECTION(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_DIRECTION:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setLOCATION_ID(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_ID:I

    .line 58
    return-void
.end method

.method public setLOCATION_IS_SUBMIT(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_IS_SUBMIT:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setLOCATION_LAT(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LAT:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setLOCATION_LOCATION_INFO(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LOCATION_INFO:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setLOCATION_LON(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_LON:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setLOCATION_RADIUS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_RADIUS:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLOCATION_SPEED(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_SPEED:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setLOCATION_TIME(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_TIME:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setLOCATION_USER_ID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/LocationModel;->LOCATION_USER_ID:Ljava/lang/String;

    .line 130
    return-void
.end method
