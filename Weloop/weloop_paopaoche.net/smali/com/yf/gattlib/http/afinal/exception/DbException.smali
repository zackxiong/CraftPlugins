.class public Lcom/yf/gattlib/http/afinal/exception/DbException;
.super Lcom/yf/gattlib/http/afinal/exception/AfinalException;
.source "ProGuard"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/exception/AfinalException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/exception/AfinalException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/yf/gattlib/http/afinal/exception/AfinalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/exception/AfinalException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
