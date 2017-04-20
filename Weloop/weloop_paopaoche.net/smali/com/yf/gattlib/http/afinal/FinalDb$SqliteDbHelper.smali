.class Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/FinalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteDbHelper"
.end annotation


# instance fields
.field private mDbUpdateListener:Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;

.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/FinalDb;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/http/afinal/FinalDb;Landroid/content/Context;Ljava/lang/String;ILcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;)V
    .locals 1

    .prologue
    .line 879
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;->this$0:Lcom/yf/gattlib/http/afinal/FinalDb;

    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 881
    iput-object p5, p0, Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;

    .line 882
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;->mDbUpdateListener:Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/yf/gattlib/http/afinal/FinalDb$DbUpdateListener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/FinalDb$SqliteDbHelper;->this$0:Lcom/yf/gattlib/http/afinal/FinalDb;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/FinalDb;->dropDb()V

    goto :goto_0
.end method
