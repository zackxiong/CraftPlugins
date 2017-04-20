.class public Lcom/yf/gattlib/db/daliy/modes/DialModel;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public localPath:Ljava/lang/String;

.field public watchClass:Ljava/lang/String;

.field public watchNo:Ljava/lang/String;

.field public watchfaceBinURL:Ljava/lang/String;

.field public watchfaceImageURL:Ljava/lang/String;

.field public watchfaceUploadFileURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchNo:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchClass:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceImageURL:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceBinURL:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceUploadFileURL:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->localPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDialStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "The bin file not exists"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchClass:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchNo:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchfaceBinURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceBinURL:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchfaceImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchfaceUploadFileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceUploadFileURL:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->localPath:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setWatchClass(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchClass:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setWatchNo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchNo:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setWatchfaceBinURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceBinURL:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setWatchfaceImageURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceImageURL:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setWatchfaceUploadFileURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialModel;->watchfaceUploadFileURL:Ljava/lang/String;

    .line 64
    return-void
.end method
