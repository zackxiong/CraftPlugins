.class public Lcom/yf/smart/weloopx/data/models/Watchface;
.super Lcom/yf/smart/weloopx/data/e;
.source "ProGuard"


# instance fields
.field private author:Ljava/lang/String;

.field private downloadCount:I

.field private id:I

.field private watchClass:Ljava/lang/String;

.field private watchName:Ljava/lang/String;

.field private watchNo:Ljava/lang/String;

.field private watchfaceBinURL:Ljava/lang/String;

.field private watchfaceImageURL:Ljava/lang/String;

.field private watchfaceUploadFileURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/e;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->downloadCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->id:I

    return v0
.end method

.method public getWatchClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchClass:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchName:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchNo:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchfaceBinURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchfaceBinURL:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchfaceImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchfaceImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchfaceUploadFileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchfaceUploadFileURL:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->author:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->downloadCount:I

    .line 26
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->id:I

    .line 18
    return-void
.end method

.method public setWatchClass(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchClass:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setWatchName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setWatchNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchNo:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setWatchfaceBinURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchfaceBinURL:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setWatchfaceImageURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchfaceImageURL:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setWatchfaceUploadFileURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/Watchface;->watchfaceUploadFileURL:Ljava/lang/String;

    .line 82
    return-void
.end method
