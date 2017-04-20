.class public Lcom/yf/gattlib/client/dfu/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/client/dfu/b$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/UUID;

.field public static final c:Ljava/util/UUID;

.field public static final d:Ljava/util/UUID;

.field public static final e:Ljava/util/UUID;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private H:Lcom/yf/gattlib/client/f;

.field private I:Lcom/yf/gattlib/client/dfu/f;

.field private final J:Lcom/yf/gattlib/client/a;

.field private K:Z

.field private L:Ljava/lang/Thread;

.field a:Lcom/yf/gattlib/client/dfu/g;

.field private f:Lcom/yf/gattlib/client/dfu/f;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private final s:I

.field private t:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private u:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "00001530-1212-efde-1523-785feabcd123"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/dfu/b;->b:Ljava/util/UUID;

    .line 62
    const-string v0, "00001531-1212-efde-1523-785feabcd123"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/dfu/b;->c:Ljava/util/UUID;

    .line 63
    const-string v0, "00001532-1212-efde-1523-785feabcd123"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/dfu/b;->d:Ljava/util/UUID;

    .line 64
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/yf/gattlib/client/dfu/b;->e:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->g:Z

    .line 46
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->h:Z

    .line 47
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->i:Z

    .line 48
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->j:Z

    .line 49
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->k:Z

    .line 50
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->l:Z

    .line 52
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->m:Z

    .line 53
    iput-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    .line 54
    iput-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->o:J

    .line 55
    iput-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->p:J

    .line 56
    iput-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->q:J

    .line 57
    iput-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->r:J

    .line 59
    const/16 v0, 0x14

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->s:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->v:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->w:I

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->x:I

    .line 81
    const/4 v0, 0x4

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->y:I

    .line 82
    const/4 v0, 0x5

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->z:I

    .line 83
    const/4 v0, 0x6

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->A:I

    .line 84
    const/4 v0, 0x7

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->B:I

    .line 85
    iput v1, p0, Lcom/yf/gattlib/client/dfu/b;->C:I

    .line 86
    const/16 v0, 0x8

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->D:I

    .line 87
    const/16 v0, 0x19

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->E:I

    .line 88
    const/16 v0, 0x11

    iput v0, p0, Lcom/yf/gattlib/client/dfu/b;->F:I

    .line 89
    iput v1, p0, Lcom/yf/gattlib/client/dfu/b;->G:I

    .line 91
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    .line 140
    new-instance v0, Lcom/yf/gattlib/client/dfu/c;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/dfu/c;-><init>(Lcom/yf/gattlib/client/dfu/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->I:Lcom/yf/gattlib/client/dfu/f;

    .line 189
    new-instance v0, Lcom/yf/gattlib/client/dfu/d;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/dfu/d;-><init>(Lcom/yf/gattlib/client/dfu/b;)V

    iput-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->J:Lcom/yf/gattlib/client/a;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/client/dfu/c;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yf/gattlib/client/dfu/b;J)J
    .locals 3

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->r:J

    return-wide v0
.end method

.method public static a()Lcom/yf/gattlib/client/dfu/b;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/yf/gattlib/client/dfu/b$a;->a()Lcom/yf/gattlib/client/dfu/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->l()Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yf/gattlib/client/dfu/b;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/yf/gattlib/client/dfu/b;->L:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/gattlib/client/dfu/b;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/yf/gattlib/client/dfu/b;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 116
    const-string v2, "DFUManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/yf/gattlib/client/dfu/b;->b:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const-string v2, "DFUManager"

    const-string v3, "DFU Service found!"

    invoke-static {v2, v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yf/gattlib/client/dfu/b;->g:Z

    .line 120
    sget-object v2, Lcom/yf/gattlib/client/dfu/b;->c:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 121
    sget-object v2, Lcom/yf/gattlib/client/dfu/b;->d:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->t:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    .line 124
    :cond_1
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->g:Z

    if-eqz v0, :cond_2

    .line 125
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    const-string v1, "dfu_service_uuid"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->l()Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/yf/gattlib/client/dfu/f;->a()V

    .line 131
    :goto_1
    return-void

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->l()Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    const-string v1, "Error on discovering services"

    invoke-interface {v0, v1, v5}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yf/gattlib/client/dfu/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/gattlib/client/dfu/b;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/gattlib/client/dfu/b;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/yf/gattlib/client/dfu/b;->r:J

    return-wide p1
.end method

.method static synthetic b(Lcom/yf/gattlib/client/dfu/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/yf/gattlib/client/dfu/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/gattlib/client/dfu/b;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->n()V

    return-void
.end method

.method static synthetic c(Lcom/yf/gattlib/client/dfu/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/gattlib/client/dfu/b;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/yf/gattlib/client/dfu/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/yf/gattlib/client/dfu/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/gattlib/client/dfu/b;->j:Z

    return p1
.end method

.method static synthetic e(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->p()V

    return-void
.end method

.method static synthetic e(Lcom/yf/gattlib/client/dfu/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/gattlib/client/dfu/b;->k:Z

    return p1
.end method

.method static synthetic f(Lcom/yf/gattlib/client/dfu/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/yf/gattlib/client/dfu/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/gattlib/client/dfu/b;->K:Z

    return p1
.end method

.method static synthetic g(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->q()V

    return-void
.end method

.method static synthetic g(Lcom/yf/gattlib/client/dfu/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/yf/gattlib/client/dfu/b;->h:Z

    return p1
.end method

.method static synthetic h(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->o()V

    return-void
.end method

.method static synthetic i(Lcom/yf/gattlib/client/dfu/b;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->r:J

    return-wide v0
.end method

.method static synthetic j(Lcom/yf/gattlib/client/dfu/b;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->L:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic k(Lcom/yf/gattlib/client/dfu/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->m:Z

    return v0
.end method

.method private l()Lcom/yf/gattlib/client/dfu/f;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->f:Lcom/yf/gattlib/client/dfu/f;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->f:Lcom/yf/gattlib/client/dfu/f;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->I:Lcom/yf/gattlib/client/dfu/f;

    goto :goto_0
.end method

.method static synthetic l(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->r()V

    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    const-string v0, "DFUManager"

    const-string v1, "startDFU"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->g:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 412
    const-string v0, "DFUManager"

    const-string v1, "writing start DFU value"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 414
    iput-boolean v3, p0, Lcom/yf/gattlib/client/dfu/b;->i:Z

    .line 416
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->s()V

    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 422
    const-string v0, "DFUManager"

    const-string v1, "writeFileSize"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->g:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->t:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 425
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->t:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    long-to-int v1, v2

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 426
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing File size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->t:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 429
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/yf/gattlib/client/dfu/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->h:Z

    return v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 436
    const-string v0, "DFUManager"

    const-string v1, "Enable Packet Notification"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 438
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 439
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 440
    return-void

    .line 437
    :array_0
    .array-data 1
        0x8t
        0x19t
        0x0t
    .end array-data
.end method

.method static synthetic o(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->m()V

    return-void
.end method

.method static synthetic p(Lcom/yf/gattlib/client/dfu/b;)Lcom/yf/gattlib/client/dfu/f;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->f:Lcom/yf/gattlib/client/dfu/f;

    return-object v0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 447
    const-string v0, "DFUManager"

    const-string v1, "sending Receive Firmware Image message"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x3

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 449
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 450
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/yf/gattlib/client/dfu/e;

    invoke-direct {v0, p0}, Lcom/yf/gattlib/client/dfu/e;-><init>(Lcom/yf/gattlib/client/dfu/b;)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/e;->start()V

    .line 503
    return-void
.end method

.method static synthetic q(Lcom/yf/gattlib/client/dfu/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->l:Z

    return v0
.end method

.method private r()V
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x4

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 510
    const-string v0, "DFUManager"

    const-string v1, "writing validate Firmware value"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 512
    return-void
.end method

.method static synthetic r(Lcom/yf/gattlib/client/dfu/b;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->K:Z

    return v0
.end method

.method private s()V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v1, 0x5

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 519
    const-string v0, "DFUManager"

    const-string v1, "writing activate and reset value"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 521
    return-void
.end method

.method static synthetic s(Lcom/yf/gattlib/client/dfu/b;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->w()V

    return-void
.end method

.method private t()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x14

    .line 524
    iget-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 525
    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 528
    :cond_0
    return v0
.end method

.method private u()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x14

    .line 532
    iget-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    rem-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 533
    iget-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    rem-long/2addr v0, v4

    long-to-int v0, v0

    .line 535
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method private v()[B
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->a:Lcom/yf/gattlib/client/dfu/g;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lcom/yf/gattlib/e/h;

    const-string v1, "null file"

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    const/16 v0, 0x14

    :try_start_0
    new-array v0, v0, [B

    .line 582
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->a:Lcom/yf/gattlib/client/dfu/g;

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/client/dfu/g;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    return-object v0

    .line 584
    :catch_0
    move-exception v0

    .line 587
    new-instance v1, Lcom/yf/gattlib/e/h;

    invoke-direct {v1, v0}, Lcom/yf/gattlib/e/h;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private w()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 596
    iget-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->p:J

    .line 599
    iget-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->p:J

    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 600
    const-string v0, "DFUManager"

    const-string v1, "This is last packet"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPacket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iput-boolean v6, p0, Lcom/yf/gattlib/client/dfu/b;->m:Z

    .line 603
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->v()[B

    move-result-object v2

    .line 604
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->u()I

    move-result v0

    new-array v1, v0, [B

    .line 605
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->u()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 606
    aget-byte v3, v2, v0

    aput-byte v3, v1, v0

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_0
    const-string v0, "DFUManager"

    const-string v2, "sent last packet"

    invoke-static {v0, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 615
    :goto_1
    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->q:J

    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->q:J

    .line 616
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->t:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 617
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->t:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 618
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->t:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 619
    const/4 v0, 0x3

    .line 620
    :goto_2
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 621
    const-wide/16 v2, 0x1e

    invoke-static {v2, v3}, Lcom/yf/gattlib/p/k;->a(J)V

    .line 622
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/gattlib/client/dfu/b;->t:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 623
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 613
    :cond_1
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->v()[B

    move-result-object v0

    goto :goto_1

    .line 625
    :cond_2
    const-string v0, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", send packet["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mTransferedBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->q:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->l()Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->q:J

    invoke-interface {v0, v2, v3}, Lcom/yf/gattlib/client/dfu/f;->a(J)V

    .line 627
    return-void
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/client/dfu/f;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yf/gattlib/client/dfu/b;->f:Lcom/yf/gattlib/client/dfu/f;

    .line 98
    return-void
.end method

.method public a(Lcom/yf/gattlib/client/dfu/g;)V
    .locals 4

    .prologue
    .line 544
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->p:J

    .line 545
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->q:J

    .line 546
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->r:J

    .line 547
    iput-object p1, p0, Lcom/yf/gattlib/client/dfu/b;->a:Lcom/yf/gattlib/client/dfu/g;

    .line 548
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->a:Lcom/yf/gattlib/client/dfu/g;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/g;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    .line 549
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->t()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->o:J

    .line 550
    const-string v0, "DFUManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :goto_0
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    const-string v1, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on openning file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->l()Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    const-string v1, "Error on openning file"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->d()V

    .line 112
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->J:Lcom/yf/gattlib/client/a;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/f;->a(Lcom/yf/gattlib/client/a;)V

    .line 184
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 379
    const-string v0, "DFUManager"

    const-string v1, "Enable Notification"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->l:Z

    .line 384
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 385
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lcom/yf/gattlib/client/dfu/b;->e:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 386
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 387
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 388
    iput-boolean v2, p0, Lcom/yf/gattlib/client/dfu/b;->h:Z

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 561
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->a:Lcom/yf/gattlib/client/dfu/g;

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->a:Lcom/yf/gattlib/client/dfu/g;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/dfu/g;->close()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->a:Lcom/yf/gattlib/client/dfu/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    const-string v1, "DFUManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on closing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0}, Lcom/yf/gattlib/client/dfu/b;->l()Lcom/yf/gattlib/client/dfu/f;

    move-result-object v0

    const-string v1, "Error on closing file"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yf/gattlib/client/dfu/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/yf/gattlib/client/dfu/b;->e()V

    .line 631
    invoke-virtual {p0}, Lcom/yf/gattlib/client/dfu/b;->g()V

    .line 632
    return-void
.end method

.method public declared-synchronized g()V
    .locals 1

    .prologue
    .line 635
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->i:Z

    .line 641
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->j:Z

    .line 642
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->k:Z

    .line 643
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->g:Z

    .line 644
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->h:Z

    .line 645
    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->m:Z

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->l:Z

    .line 647
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 654
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 655
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v1}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_1

    .line 656
    :cond_0
    const-string v0, "DFUManager"

    const-string v1, "null, systemReset"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 660
    iget-object v0, p0, Lcom/yf/gattlib/client/dfu/b;->H:Lcom/yf/gattlib/client/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->g()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/gattlib/client/dfu/b;->u:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 664
    iget-wide v0, p0, Lcom/yf/gattlib/client/dfu/b;->n:J

    return-wide v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/client/dfu/b;->l:Z

    .line 672
    return-void
.end method
