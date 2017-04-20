.class public Lcom/yf/smart/weloopx/data/models/RankingUser;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private activePoint:I

.field private calorieValue:D

.field private headPicUrl:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivePoint()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->activePoint:I

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->calorieValue:D

    return-wide v0
.end method

.method public getHeadPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->headPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->userId:I

    return v0
.end method

.method public setActivePoint(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->activePoint:I

    .line 27
    return-void
.end method

.method public setCalorie(D)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->calorieValue:D

    .line 51
    return-void
.end method

.method public setHeadPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->headPicUrl:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->nickname:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/RankingUser;->userId:I

    .line 19
    return-void
.end method
