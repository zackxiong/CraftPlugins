.class public final Lcom/yf/gattlib/b/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/yf/gattlib/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/yf/gattlib/b/a;
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
    new-instance v0, Lcom/yf/gattlib/b/a;

    invoke-direct {v0, v2, v1}, Lcom/yf/gattlib/b/a;-><init>(Ljava/util/List;Ljava/lang/String;)V

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
    new-instance v0, Lcom/yf/gattlib/b/a;

    invoke-direct {v0, v2, v1}, Lcom/yf/gattlib/b/a;-><init>(Ljava/util/List;Ljava/lang/String;)V

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

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/yf/gattlib/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "removeBond"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 27
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 37
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    .line 37
    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 32
    :catch_2
    move-exception v0

    .line 33
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 34
    :catch_3
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "refresh"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/yf/gattlib/b/c;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/b/c;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {v0}, Lcom/yf/gattlib/b/c;->start()V

    .line 180
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 107
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 108
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
