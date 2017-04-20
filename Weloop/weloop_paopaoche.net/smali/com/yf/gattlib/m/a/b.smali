.class public Lcom/yf/gattlib/m/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:Landroid/bluetooth/BluetoothDevice;

.field public b:I

.field public c:J

.field public d:Lcom/yf/gattlib/b/a;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IJLcom/yf/gattlib/b/a;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    .line 22
    iput p2, p0, Lcom/yf/gattlib/m/a/b;->b:I

    .line 23
    iput-wide p3, p0, Lcom/yf/gattlib/m/a/b;->c:J

    .line 24
    iput-object p5, p0, Lcom/yf/gattlib/m/a/b;->d:Lcom/yf/gattlib/b/a;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/yf/gattlib/m/a/b;->d:Lcom/yf/gattlib/b/a;

    if-eqz v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/yf/gattlib/m/a/b;->d:Lcom/yf/gattlib/b/a;

    invoke-virtual {v0}, Lcom/yf/gattlib/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 42
    instance-of v0, p1, Lcom/yf/gattlib/m/a/b;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/yf/gattlib/m/a/b;

    iget-object v1, p1, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
