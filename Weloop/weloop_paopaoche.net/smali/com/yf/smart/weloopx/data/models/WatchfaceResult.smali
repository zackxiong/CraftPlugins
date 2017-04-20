.class public Lcom/yf/smart/weloopx/data/models/WatchfaceResult;
.super Lcom/yf/smart/weloopx/data/models/ServerResult;
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
    .line 6
    invoke-direct {p0}, Lcom/yf/smart/weloopx/data/models/ServerResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->downloadCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->id:I

    return v0
.end method

.method public getWatchClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchClass:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchName:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchNo:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchface()Lcom/yf/smart/weloopx/data/models/Watchface;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/yf/smart/weloopx/data/models/Watchface;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/models/Watchface;-><init>()V

    .line 12
    iget v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->id:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setId(I)V

    .line 13
    iget v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->downloadCount:I

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setDownloadCount(I)V

    .line 14
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceUploadFileURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setWatchfaceUploadFileURL(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setWatchClass(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setAuthor(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceBinURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setWatchfaceBinURL(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceImageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setWatchfaceImageURL(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setWatchNo(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/Watchface;->setWatchName(Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public getWatchfaceBinURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceBinURL:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchfaceImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchfaceUploadFileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceUploadFileURL:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->author:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->downloadCount:I

    .line 38
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->id:I

    .line 30
    return-void
.end method

.method public setWatchClass(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchClass:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setWatchName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setWatchNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchNo:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setWatchfaceBinURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceBinURL:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setWatchfaceImageURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceImageURL:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setWatchfaceUploadFileURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/models/WatchfaceResult;->watchfaceUploadFileURL:Ljava/lang/String;

    .line 94
    return-void
.end method
