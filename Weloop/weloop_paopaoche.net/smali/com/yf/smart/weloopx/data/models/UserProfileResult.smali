.class public Lcom/yf/smart/weloopx/data/models/UserProfileResult;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field private aciveDays:I

.field private averageCalorie:D

.field private averageDistance:D

.field private averageStep:I

.field private bestDay:Ljava/lang/String;

.field private bestDayCalorie:D

.field private bestWeekBeginDate:Ljava/lang/String;

.field private bestWeekCalorie:D

.field private bestWeekEndDate:Ljava/lang/String;

.field private bronzeCount:I

.field private dbcount:Ljava/lang/String;

.field private goldCount:I

.field private headPicUrl:Ljava/lang/String;

.field private isfriend:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private score:D

.field private silverCount:I

.field private standardDays:I

.field private standardRate:I

.field private totalActivePoint:I

.field private totalCalorie:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAciveDays()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->aciveDays:I

    return v0
.end method

.method public getActiveDays()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->aciveDays:I

    return v0
.end method

.method public getAverageCalorie()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->averageCalorie:D

    return-wide v0
.end method

.method public getAverageDistance()D
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->averageDistance:D

    return-wide v0
.end method

.method public getAverageStep()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->averageStep:I

    return v0
.end method

.method public getBestDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestDay:Ljava/lang/String;

    return-object v0
.end method

.method public getBestDayCalorie()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestDayCalorie:D

    return-wide v0
.end method

.method public getBestWeekBeginDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestWeekBeginDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBestWeekCalorie()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestWeekCalorie:D

    return-wide v0
.end method

.method public getBestWeekEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestWeekEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBronzeCount()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bronzeCount:I

    return v0
.end method

.method public getDbcount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->dbcount:Ljava/lang/String;

    return-object v0
.end method

.method public getGoldCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->goldCount:I

    return v0
.end method

.method public getHeadPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->headPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsfriend()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->isfriend:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->score:D

    return-wide v0
.end method

.method public getSilverCount()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->silverCount:I

    return v0
.end method

.method public getStandardDays()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->standardDays:I

    return v0
.end method

.method public getStandardRate()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->standardRate:I

    return v0
.end method

.method public getTotalActivePoint()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->totalActivePoint:I

    return v0
.end method

.method public getTotalCalorie()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->totalCalorie:D

    return-wide v0
.end method

.method public setAciveDays(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->aciveDays:I

    .line 130
    return-void
.end method

.method public setActiveDays(I)V
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->aciveDays:I

    iput v0, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->aciveDays:I

    .line 66
    return-void
.end method

.method public setAverageCalorie(D)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->averageCalorie:D

    .line 90
    return-void
.end method

.method public setAverageDistance(D)V
    .locals 1

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->averageDistance:D

    .line 98
    return-void
.end method

.method public setAverageStep(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->averageStep:I

    .line 58
    return-void
.end method

.method public setBestDay(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestDay:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setBestDayCalorie(D)V
    .locals 1

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestDayCalorie:D

    .line 162
    return-void
.end method

.method public setBestWeekBeginDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestWeekBeginDate:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setBestWeekCalorie(D)V
    .locals 1

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestWeekCalorie:D

    .line 170
    return-void
.end method

.method public setBestWeekEndDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bestWeekEndDate:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setBronzeCount(I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->bronzeCount:I

    .line 154
    return-void
.end method

.method public setDbcount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->dbcount:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setGoldCount(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->goldCount:I

    .line 138
    return-void
.end method

.method public setHeadPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->headPicUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setIsfriend(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->isfriend:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->nickname:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setScore(D)V
    .locals 1

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->score:D

    .line 178
    return-void
.end method

.method public setSilverCount(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->silverCount:I

    .line 146
    return-void
.end method

.method public setStandardDays(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->standardDays:I

    .line 74
    return-void
.end method

.method public setStandardRate(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->standardRate:I

    .line 42
    return-void
.end method

.method public setTotalActivePoint(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->totalActivePoint:I

    .line 50
    return-void
.end method

.method public setTotalCalorie(D)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/yf/smart/weloopx/data/models/UserProfileResult;->totalCalorie:D

    .line 82
    return-void
.end method
