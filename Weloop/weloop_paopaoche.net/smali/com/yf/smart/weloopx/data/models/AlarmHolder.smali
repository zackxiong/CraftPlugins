.class public Lcom/yf/smart/weloopx/data/models/AlarmHolder;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public mHour:I

.field public mIsSet:Z

.field public mMinute:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mHour:I

    .line 6
    iput p2, p0, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mMinute:I

    .line 7
    iput-boolean p3, p0, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mIsSet:Z

    .line 8
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .prologue
    .line 11
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mHour:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mHour:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mMinute:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/yf/smart/weloopx/data/models/AlarmHolder;->mMinute:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
