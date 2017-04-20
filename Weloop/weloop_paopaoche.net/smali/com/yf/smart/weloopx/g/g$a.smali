.class public Lcom/yf/smart/weloopx/g/g$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/g/g$a;->a(D)V

    .line 162
    invoke-virtual {p0, p3, p4}, Lcom/yf/smart/weloopx/g/g$a;->b(D)V

    .line 163
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/yf/smart/weloopx/g/g$a;->a:D

    return-wide v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/yf/smart/weloopx/g/g$a;->a:D

    .line 171
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/yf/smart/weloopx/g/g$a;->b:D

    return-wide v0
.end method

.method public b(D)V
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/yf/smart/weloopx/g/g$a;->b:D

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/yf/smart/weloopx/g/g$a;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yf/smart/weloopx/g/g$a;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
