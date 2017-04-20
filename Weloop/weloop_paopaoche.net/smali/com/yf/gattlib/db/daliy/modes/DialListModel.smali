.class public Lcom/yf/gattlib/db/daliy/modes/DialListModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/daliy/modes/DialModel;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public recordCount:Ljava/lang/String;

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->result:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->message:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->recordCount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/daliy/modes/DialModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->recordCount:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/db/daliy/modes/DialModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->dataList:Ljava/util/List;

    .line 41
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->message:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setRecordCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->recordCount:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yf/gattlib/db/daliy/modes/DialListModel;->result:Ljava/lang/String;

    .line 17
    return-void
.end method
