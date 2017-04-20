.class public Lcom/yf/smart/weloopx/data/models/UserDate3;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
.source "ProGuard"


# instance fields
.field private checkCodeIsValid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckCodeIsValid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/UserDate3;->checkCodeIsValid:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckCodeIsValid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/UserDate3;->checkCodeIsValid:Ljava/lang/String;

    .line 15
    return-void
.end method
