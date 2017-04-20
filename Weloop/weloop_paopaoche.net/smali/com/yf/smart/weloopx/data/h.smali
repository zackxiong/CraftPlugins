.class public Lcom/yf/smart/weloopx/data/h;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/ContentResolver;

.field private c:Landroid/net/Uri;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "MsgNotificationDBUtil"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/h;->a:Ljava/lang/String;

    .line 20
    const-string v0, "content://com.yf.smart.weloopx.data.WeLoopProvider/MessageNotificationTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/h;->c:Landroid/net/Uri;

    .line 25
    iput-object p1, p0, Lcom/yf/smart/weloopx/data/h;->d:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/h;->b:Landroid/content/ContentResolver;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yf/smart/weloopx/data/h;->b:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yf/smart/weloopx/data/h;->c:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "ACCOUNT = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const-string v7, "MSG_NOTI_TIME DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MsgNotificationDBUtil Get all msgnoti num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 41
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const-string v3, "MSG_NOTI_PHONE_URL"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v4, "MSG_NOTI_ID"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v5, "MSG_NOTI_NAME"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    const-string v6, "MSG_NOTI_STATE"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 47
    const-string v7, "MSG_NOTI_TIME"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 48
    const-string v9, "MSG_REQUEST_USER_ID"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 49
    const-string v10, "MSG_TO_USER_ID"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 50
    const-string v11, "MSG_USER_ID"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 53
    const-string v12, "MSG_TYPE"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 55
    const-string v13, "MSG_CONTENT"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 56
    const-string v14, "MSG_NOTI_TIME"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 57
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MsgNotificationDBUtil \u53d1\u751f\u65f6\u95f4 = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 58
    const-string v15, "MSG_NOTI_PHONE_URL"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 59
    const-string v16, "TYPE"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 61
    const-string v17, "MSG_TO_NICK_NAME"

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 62
    const-string v18, "MSG_TO_HEAD_PIC"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 63
    const-string v19, "MSG_REQUEST_HEAD_PIC"

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 64
    const-string v20, "MSG_REQUEST_NICK_NAME"

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 66
    const-string v21, "MSG_PIC_URL"

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 67
    const-string v22, "MSG_PAGE_URL"

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 69
    new-instance v23, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    invoke-direct/range {v23 .. v23}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;-><init>()V

    .line 70
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setUserId(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setHeadPic(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setNickname(Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setState(Ljava/lang/String;)V

    .line 74
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setRequestDate(Ljava/lang/String;)V

    .line 75
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setRequestUserId(Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setToUserId(Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setType(Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setMsgType(Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setContent(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setMsgTime(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setHeadPicUrl(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setUserId(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setTonickname(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setToheadPic(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setRequestheadPic(Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setRequestnickname(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setPicUrl(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->setPageUrl(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 93
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MsgNotificationDBUtil Not have any msgnoti and cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 95
    :cond_1
    if-eqz v2, :cond_2

    .line 96
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_2
    return-object v8
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsgNotificationDBUtil \u89e3\u6790\u8fd4\u56de\u7684\u597d\u53cb\u6570\u91cf friend request num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 148
    const-string v1, "1"

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/h;->b(Ljava/lang/String;)Z

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/Friendmodel;

    .line 150
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 151
    const-string v3, "TYPE"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v3, "MSG_NOTI_ID"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v3, "MSG_NOTI_NAME"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "MSG_NOTI_PHONE_URL"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getHeadPic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "MSG_NOTI_STATE"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "MSG_NOTI_TIME"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getRequestDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v3, "MSG_REQUEST_USER_ID"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getRequestUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v3, "MSG_TO_USER_ID"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getToUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "ACCOUNT"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "MSG_USER_ID"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v3, "MSG_TO_NICK_NAME"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getTonickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "MSG_TO_HEAD_PIC"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getToheadPic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "MSG_REQUEST_HEAD_PIC"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getRequestheadPic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "MSG_REQUEST_NICK_NAME"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/Friendmodel;->getRequestnickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/h;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/h;->c:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 171
    :cond_0
    const-string v0, "MsgNotificationDBUtil \u7f51\u7edc\u8fd4\u56de\u7684\u597d\u53cb\u4fe1\u606f\u662f\u7a7a\u7684"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->getMsgList()Ljava/util/ArrayList;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsgNotificationDBUtil \u89e3\u6790\u8fd4\u56de\u7684\u901a\u77e5\u6570\u91cf  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 177
    const-string v1, "2"

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/h;->b(Ljava/lang/String;)Z

    .line 178
    const-string v1, "3"

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/data/h;->b(Ljava/lang/String;)Z

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    .line 180
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 181
    const-string v3, "TYPE"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getMsgType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v3, "MSG_NOTI_ID"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v3, "ACCOUNT"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v3, "MSG_TYPE"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getMsgType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v3, "MSG_CONTENT"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v3, "MSG_NOTI_TIME"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getMsgTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "MSG_NOTI_PHONE_URL"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getHeadPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v3, "MSG_NOTI_NAME"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v3, "MSG_NOTI_STATE"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v3, "MSG_USER_ID"

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModels;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "MSG_PIC_URL"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v3, "MSG_PAGE_URL"

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/yf/smart/weloopx/data/h;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/h;->c:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 198
    :cond_2
    const-string v0, "MsgNotificationDBUtil \u7f51\u7edc\u8fd4\u56de\u7684\u6d88\u606f\u901a\u77e5\u662f\u7a7a\u7684"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 200
    :cond_3
    return-void
.end method

.method public a(Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getToUserId()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getRequestUserId()Ljava/lang/String;

    move-result-object v4

    .line 133
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 134
    const-string v6, "MSG_NOTI_STATE"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/yf/smart/weloopx/data/h;->b:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/yf/smart/weloopx/data/h;->c:Landroid/net/Uri;

    const-string v8, "MSG_USER_ID = ? AND MSG_REQUEST_USER_ID = ? AND MSG_TO_USER_ID = ? "

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v1

    aput-object v4, v9, v0

    const/4 v2, 0x2

    aput-object v3, v9, v2

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 140
    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 103
    const-string v3, "MSG_NOTI_STATE"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/yf/smart/weloopx/data/h;->b:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/yf/smart/weloopx/data/h;->c:Landroid/net/Uri;

    const-string v5, "MSG_NOTI_TIME = ? AND ACCOUNT = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v1

    aput-object p2, v6, v0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 106
    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/yf/smart/weloopx/data/h;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/h;->c:Landroid/net/Uri;

    const-string v4, "MSG_USER_ID = ? AND MSG_TO_USER_ID = ? AND MSG_REQUEST_USER_ID = ? "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v1

    aput-object p2, v5, v0

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Lcom/yf/smart/weloopx/data/h;->b:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/yf/smart/weloopx/data/h;->c:Landroid/net/Uri;

    const-string v4, "TYPE = ? "

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
