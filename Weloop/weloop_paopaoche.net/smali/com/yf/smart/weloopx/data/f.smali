.class public Lcom/yf/smart/weloopx/data/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/net/Uri;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yf/smart/weloopx/data/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/yf/smart/weloopx/data/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "LocationDBUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/f;->b:Ljava/lang/String;

    .line 27
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/LocationNewTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    .line 28
    const-string v0, "LOCATION_TIME > ? and LOCATION_TIME < ? and LOCATION_USER_ID = ? "

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/f;->e:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/f;->f:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    .line 37
    return-void
.end method

.method private a(ZLcom/yf/smart/weloopx/data/models/LocationModel;)V
    .locals 7

    .prologue
    .line 206
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 207
    const-string v1, "LOCATION_DATE"

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_DATE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "LOCATION_DEVICE_ID"

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_DEVICE_ID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "LOCATION_IS_SUBMIT"

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_IS_SUBMIT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "LOCATION_LOCATION_INFO"

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LOCATION_INFO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "LOCATION_TIME"

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_TIME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "LOCATION_USER_ID"

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_USER_ID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "LOCATION_RADIUS"

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_RADIUS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "LOCATION_SPEED"

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_SPEED()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationDBUtil \u63d2\u5165\u8f68\u8ff9\u65f6\u5019\u7684\u72b6\u6001 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_IS_SUBMIT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationDBUtil \u66f4\u65b0\u8f68\u8ff9\u72b6\u6001\u72b6\u6001 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_IS_SUBMIT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    const-string v3, "LOCATION_ID = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_ID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 264
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LOCATION_LOCATION_INFO"

    aput-object v3, v2, v7

    const-string v3, "LOCATION_LOCATION_INFO = ? "

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    .line 266
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 267
    return v0

    :cond_0
    move v0, v7

    .line 265
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 45
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    const-string v3, "LOCATION_IS_SUBMIT = \'0\' and LOCATION_USER_ID = ? "

    .line 50
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "LOCATION_DATE"

    aput-object v4, v2, v7

    const-string v4, "LOCATION_IS_SUBMIT"

    aput-object v4, v2, v5

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "LOCATION_DATE"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 60
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-string v1, "LOCATION_DATE"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "LOCATION_IS_SUBMIT"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationDBUtil tempIsSubmit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tempDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 66
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    const-string v1, "LocationDBUtil Have this date"

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "LocationDBUtil No date have unupload location info "

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 76
    :cond_2
    sget-boolean v1, Lcom/yf/smart/weloopx/data/f;->a:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    return-object v6
.end method

.method public a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/LocationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    if-nez p1, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 174
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const-string v1, "LOCATION_DATE"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string v2, "LOCATION_IS_SUBMIT"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v3, "LOCATION_LOCATION_INFO"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string v4, "LOCATION_SPEED"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    const-string v5, "LOCATION_RADIUS"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {v3, v1}, Lcom/yf/smart/weloopx/data/models/LocationModel;->decode(Ljava/lang/String;Ljava/lang/String;)Lcom/yf/smart/weloopx/data/models/LocationModel;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_IS_SUBMIT(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, v4}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_SPEED(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1, v5}, Lcom/yf/smart/weloopx/data/models/LocationModel;->setLOCATION_RADIUS(Ljava/lang/String;)V

    .line 186
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/LocationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "LOCATION_DATE = ?  and LOCATION_USER_ID = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "LOCATION_TIME"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/f;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/LocationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :goto_0
    return-object v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/f;->e:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "LOCATION_TIME"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/f;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/LocationModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/f;->e:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    aput-object p2, v4, v5

    const/4 v6, 0x2

    invoke-static {}, Lcom/yf/smart/weloopx/b/c;->a()Lcom/yf/smart/weloopx/b/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yf/smart/weloopx/b/c;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LOCATION_TIME limit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge p3, v5, :cond_0

    move p3, v5

    :cond_0
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/data/f;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/LocationModel;)V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LOCATION_INFO()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/data/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/yf/smart/weloopx/data/f;->a(ZLcom/yf/smart/weloopx/data/models/LocationModel;)V

    .line 203
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yf/smart/weloopx/data/models/LocationModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/content/ContentValues;

    .line 230
    new-instance v0, Lcom/yf/smart/weloopx/data/g;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/g;-><init>(Lcom/yf/smart/weloopx/data/f;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    iget-object v3, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    const-string v5, "LOCATION_TIME between ? and ?"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/LocationModel;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_TIME()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/LocationModel;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_TIME()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 241
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/LocationModel;

    .line 242
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 243
    const-string v4, "LOCATION_DATE"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_DATE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v4, "LOCATION_DEVICE_ID"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_DEVICE_ID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v4, "LOCATION_IS_SUBMIT"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_IS_SUBMIT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v4, "LOCATION_LOCATION_INFO"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_LOCATION_INFO()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v4, "LOCATION_TIME"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_TIME()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v4, "LOCATION_USER_ID"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_USER_ID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v4, "LOCATION_SPEED"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_SPEED()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "LOCATION_RADIUS"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/LocationModel;->getLOCATION_RADIUS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    aput-object v3, v2, v1

    .line 240
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 273
    const-string v3, "LOCATION_IS_SUBMIT"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/yf/smart/weloopx/data/f;->c:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/yf/smart/weloopx/data/f;->d:Landroid/net/Uri;

    const-string v5, "LOCATION_DATE = ?"

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v1

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 276
    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
