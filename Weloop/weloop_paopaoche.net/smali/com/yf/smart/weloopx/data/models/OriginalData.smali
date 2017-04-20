.class public Lcom/yf/smart/weloopx/data/models/OriginalData;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private data:[B

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/OriginalData;->data:[B

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/OriginalData;->id:I

    return v0
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/OriginalData;->data:[B

    .line 16
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/OriginalData;->id:I

    .line 24
    return-void
.end method
