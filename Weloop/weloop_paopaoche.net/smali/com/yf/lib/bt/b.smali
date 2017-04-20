.class public final Lcom/yf/lib/bt/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/yf/lib/bt/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/lib/bt/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/yf/lib/bt/BleAdvertisedData;
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const/4 v1, 0x0

    .line 186
    if-nez p0, :cond_0

    .line 187
    new-instance v0, Lcom/yf/lib/bt/BleAdvertisedData;

    invoke-direct {v0, v2, v1, p0}, Lcom/yf/lib/bt/BleAdvertisedData;-><init>(Ljava/util/List;Ljava/lang/String;[B)V

    .line 228
    :goto_0
    return-object v0

    .line 190
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 191
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le v0, v9, :cond_1

    .line 192
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 193
    if-nez v0, :cond_2

    .line 228
    :cond_1
    new-instance v0, Lcom/yf/lib/bt/BleAdvertisedData;

    invoke-direct {v0, v2, v1, p0}, Lcom/yf/lib/bt/BleAdvertisedData;-><init>(Ljava/util/List;Ljava/lang/String;[B)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 196
    packed-switch v4, :pswitch_data_0

    .line 224
    :pswitch_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 227
    goto :goto_1

    .line 199
    :goto_3
    :pswitch_1
    if-lt v0, v9, :cond_3

    .line 200
    const-string v4, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    goto :goto_3

    .line 207
    :goto_4
    :pswitch_2
    const/16 v4, 0x10

    if-lt v0, v4, :cond_3

    .line 208
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 209
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 210
    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v6, v7, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, -0x10

    int-to-byte v0, v0

    .line 212
    goto :goto_4

    .line 215
    :pswitch_3
    add-int/lit8 v0, v0, -0x1

    new-array v4, v0, [B

    .line 216
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 218
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    .line 222
    goto :goto_2

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
