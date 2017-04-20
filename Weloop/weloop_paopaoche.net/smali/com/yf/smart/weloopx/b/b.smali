.class public abstract Lcom/yf/smart/weloopx/b/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/smart/weloopx/c/aj;


# static fields
.field private static a:Lcom/yf/smart/weloopx/b/b;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sput-object p0, Lcom/yf/smart/weloopx/b/b;->a:Lcom/yf/smart/weloopx/b/b;

    .line 26
    return-void
.end method

.method public static a()Lcom/yf/smart/weloopx/b/b;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/yf/smart/weloopx/b/b;->a:Lcom/yf/smart/weloopx/b/b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(I)V
.end method

.method public abstract a(ILcom/yf/gattlib/client/b/p$a;Z)V
.end method

.method public abstract a(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
.end method

.method public abstract a(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract a(Lcom/yf/gattlib/d/b$a;)V
.end method

.method public abstract a(Ljava/lang/String;ILjava/lang/String;[B)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Lcom/yf/gattlib/d/b$a;)V
.end method

.method public abstract b(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract c()V
.end method

.method public abstract d()Lcom/yf/smart/weloopx/data/models/OriginalData;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Z
.end method
