.class Lcom/baidu/location/g$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/g;


# direct methods
.method private constructor <init>(Lcom/baidu/location/g;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/g;Lcom/baidu/location/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g$b;-><init>(Lcom/baidu/location/g;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0, v4}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Z)Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v1}, Lcom/baidu/location/g;->b(Lcom/baidu/location/g;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0, v4}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Z)Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v3, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/baidu/location/aj$a;

    invoke-static {v3, v0, v1, v2}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Ljava/lang/String;Lcom/baidu/location/aj$a;Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v3, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Lcom/baidu/location/D$b;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    check-cast v1, Lcom/baidu/location/BDLocation;

    invoke-static {v3, v0, v1, v2}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Lcom/baidu/location/D$b;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0, v4}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Z)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/baidu/location/g$b;->a([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method