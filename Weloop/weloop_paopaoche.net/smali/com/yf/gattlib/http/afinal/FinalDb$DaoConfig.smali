.class public Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/FinalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaoConfig"
.end annotation


# instance fields
.field private dbUpdateListener:Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;

.field private dbVersion:I

.field private debug:Z

.field private mContext:Landroid/content/Context;

.field private mDbName:Ljava/lang/String;

.field private targetDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->mContext:Landroid/content/Context;

    .line 785
    const-string v0, "afinal.db"

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->mDbName:Ljava/lang/String;

    .line 786
    iput v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->dbVersion:I

    .line 787
    iput-boolean v1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->debug:Z

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->mDbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbUpdateListener()Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->dbUpdateListener:Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->dbVersion:I

    return v0
.end method

.method public getTargetDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->targetDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->debug:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->mContext:Landroid/content/Context;

    .line 798
    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->mDbName:Ljava/lang/String;

    .line 806
    return-void
.end method

.method public setDbUpdateListener(Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->dbUpdateListener:Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;

    .line 830
    return-void
.end method

.method public setDbVersion(I)V
    .locals 0

    .prologue
    .line 813
    iput p1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->dbVersion:I

    .line 814
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->debug:Z

    .line 822
    return-void
.end method

.method public setTargetDirectory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$DaoConfig;->targetDirectory:Ljava/lang/String;

    .line 846
    return-void
.end method
