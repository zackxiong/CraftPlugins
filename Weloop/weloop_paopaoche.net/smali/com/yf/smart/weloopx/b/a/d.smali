.class public Lcom/yf/smart/weloopx/b/a/d;
.super Lcom/yf/smart/weloopx/b/b;
.source "ProGuard"


# instance fields
.field private final a:Landroid/net/Uri;

.field private b:Lcom/yf/smart/weloopx/c/aj;

.field private c:Lcom/yf/gattlib/m/a/c;

.field private d:Lcom/yf/gattlib/a/b;

.field private e:Lcom/yf/gattlib/d/b;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yf/gattlib/d/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/yf/gattlib/d/b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/yf/smart/weloopx/b/b;-><init>()V

    .line 36
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/device"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->a:Landroid/net/Uri;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->f:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->g:Ljava/util/Map;

    .line 46
    new-instance v0, Lcom/yf/smart/weloopx/b/a/e;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/b/a/e;-><init>(Lcom/yf/smart/weloopx/b/a/d;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->i:Lcom/yf/gattlib/d/b$a;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/b/a/d;->h:Z

    .line 73
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    .line 74
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/m/a/c;->a(Landroid/content/Context;)Lcom/yf/gattlib/m/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->c:Lcom/yf/gattlib/m/a/c;

    .line 75
    new-instance v0, Lcom/yf/gattlib/d/b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->i:Lcom/yf/gattlib/d/b$a;

    invoke-direct {v0, v1}, Lcom/yf/gattlib/d/b;-><init>(Lcom/yf/gattlib/d/b$a;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->e:Lcom/yf/gattlib/d/b;

    .line 76
    new-instance v0, Lcom/yf/smart/weloopx/c/b;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/c/b;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    .line 78
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->j()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v1, v0}, Lcom/yf/smart/weloopx/c/aj;->c(Landroid/bluetooth/BluetoothDevice;)V

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/b/a/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 398
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/b/a/d;->h:Z

    if-nez v0, :cond_0

    .line 399
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/b/a/d;->h:Z

    .line 400
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->a:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 405
    if-eqz v1, :cond_1

    .line 406
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->g:Ljava/util/Map;

    const-string v2, "mid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 414
    if-eqz v1, :cond_0

    .line 415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 424
    :goto_3
    return-object v0

    .line 414
    :cond_1
    if-eqz v1, :cond_0

    .line 415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 414
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_2

    .line 415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 424
    :cond_3
    const-string v0, ""

    goto :goto_3

    .line 414
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 411
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public a(I)V
    .locals 7

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/original"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public a(ILcom/yf/gattlib/client/b/p$a;Z)V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/yf/gattlib/client/b/l;

    invoke-direct {v0, p1, p2, p3}, Lcom/yf/gattlib/client/b/l;-><init>(ILcom/yf/gattlib/client/b/p$a;Z)V

    invoke-virtual {v0}, Lcom/yf/gattlib/client/b/l;->f()Lcom/yf/gattlib/client/b/e;

    .line 171
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->c:Lcom/yf/gattlib/m/a/c;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/m/a/c;->a(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 156
    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0, p1}, Lcom/yf/smart/weloopx/c/aj;->c(Landroid/bluetooth/BluetoothDevice;)V

    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->e:Lcom/yf/gattlib/d/b;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/d/b;->a(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public a(Lcom/yf/gattlib/d/b$a;)V
    .locals 2

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->f:Ljava/util/List;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;[B)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/original"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 178
    const-string v3, "mid"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "is_submit"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v3, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v3, "data"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 182
    const-string v3, "happen_date"

    invoke-static {v5}, Lcom/yf/smart/weloopx/g/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 361
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/b/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mid"

    aput-object v4, v2, v3

    const-string v3, "mid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 373
    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-lez v1, :cond_5

    move v1, v8

    .line 379
    :goto_1
    if-eqz v2, :cond_1

    .line 380
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_1
    :goto_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 385
    const-string v3, "mid"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v3, "name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v3, "bind_mac"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    if-eqz v1, :cond_3

    .line 389
    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->a:Landroid/net/Uri;

    const-string v3, "mid=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    move-object v2, v7

    .line 377
    :goto_3
    :try_start_2
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    if-eqz v2, :cond_4

    .line 380
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v6

    goto :goto_2

    .line 379
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_2

    .line 380
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 379
    :catchall_1
    move-exception v0

    move-object v7, v2

    goto :goto_4

    .line 376
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->r()V

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->e:Lcom/yf/gattlib/d/b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v1}, Lcom/yf/smart/weloopx/c/aj;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/d/b;->b(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public b(Lcom/yf/gattlib/d/b$a;)V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/yf/smart/weloopx/b/a/d;->f:Ljava/util/List;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/f/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->c:Lcom/yf/gattlib/m/a/c;

    invoke-virtual {v0}, Lcom/yf/gattlib/m/a/c;->a()V

    .line 161
    return-void
.end method

.method public c(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0, p1}, Lcom/yf/smart/weloopx/c/aj;->c(Landroid/bluetooth/BluetoothDevice;)V

    .line 303
    return-void
.end method

.method public d()Lcom/yf/smart/weloopx/data/models/OriginalData;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    const-string v1, "content://com.yf.smart.weloopx.data.WeLoopProvider/original"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 191
    new-instance v6, Lcom/yf/smart/weloopx/data/models/OriginalData;

    invoke-direct {v6}, Lcom/yf/smart/weloopx/data/models/OriginalData;-><init>()V

    .line 194
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "id  desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 214
    :cond_0
    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v7

    .line 218
    :goto_0
    return-object v0

    .line 204
    :cond_2
    :try_start_2
    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 205
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->setId(I)V

    .line 206
    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 207
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/yf/smart/weloopx/data/models/OriginalData;->setData([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    if-eqz v0, :cond_3

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 214
    :goto_1
    if-eqz v0, :cond_4

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    .line 218
    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_5

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 214
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_2

    .line 211
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/aj;->l()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 102
    :cond_0
    const-string v0, ""

    .line 110
    :goto_0
    return-object v0

    .line 105
    :cond_1
    invoke-static {v0}, Lcom/yf/smart/weloopx/g/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 107
    aget-byte v1, v0, v3

    aget-byte v2, v0, v5

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 108
    aget-byte v1, v0, v4

    const/4 v2, 0x7

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 110
    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Lcom/yf/smart/weloopx/g/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "2"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/b/a/d;->k()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const-string v0, ""

    .line 334
    :goto_0
    return-object v0

    .line 327
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const-string v0, ""

    goto :goto_0

    .line 333
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 334
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/b/a/d;->k()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const-string v0, ""

    .line 356
    :cond_0
    :goto_0
    return-object v0

    .line 344
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    const-string v0, ""

    goto :goto_0

    .line 350
    :cond_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 351
    if-ltz v1, :cond_0

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/aj;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->d:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->k()Lcom/yf/gattlib/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/aj;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/b/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/aj;->k()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_1
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/aj;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/aj;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/aj;->n()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yf/smart/weloopx/b/a/d;->b:Lcom/yf/smart/weloopx/c/aj;

    invoke-interface {v0}, Lcom/yf/smart/weloopx/c/aj;->o()Z

    move-result v0

    return v0
.end method
