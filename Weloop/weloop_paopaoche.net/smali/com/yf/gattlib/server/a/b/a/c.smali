.class public Lcom/yf/gattlib/server/a/b/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:Lcom/yf/gattlib/notification/NotificationContent;

.field private c:J

.field private d:Z

.field private e:B


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/notification/NotificationContent;B)V
    .locals 4

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/a/c;->b:Lcom/yf/gattlib/notification/NotificationContent;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 12
    iget v2, p1, Lcom/yf/gattlib/notification/NotificationContent;->a:I

    long-to-int v3, v0

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/yf/gattlib/server/a/b/a/c;->a:I

    .line 13
    iput-wide v0, p0, Lcom/yf/gattlib/server/a/b/a/c;->c:J

    .line 14
    iput-byte p2, p0, Lcom/yf/gattlib/server/a/b/a/c;->e:B

    .line 15
    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    .prologue
    .line 23
    iget-byte v0, p0, Lcom/yf/gattlib/server/a/b/a/c;->e:B

    return v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/yf/gattlib/server/a/b/a/c;->d:Z

    .line 44
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yf/gattlib/server/a/b/a/c;->a:I

    return v0
.end method

.method public c()Lcom/yf/gattlib/notification/NotificationContent;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/c;->b:Lcom/yf/gattlib/notification/NotificationContent;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/yf/gattlib/server/a/b/a/c;->c:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/yf/gattlib/server/a/b/a/c;->d:Z

    return v0
.end method
