.class public final Lcom/yf/smart/weloopx/data/c$p;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/data/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 692
    const-string v0, "create table MessageNotificationTable (MSG_NOTI_PHONE_URL varchar(50),MSG_NOTI_NAME varchar(30),MSG_NOTI_ID varchar(10),MSG_USER_ID varchar(10),MSG_NOTI_STATE varchar(2),MSG_NOTI_TIME varchar(25),MSG_REQUEST_USER_ID varchar(25),MSG_TO_USER_ID varchar(25),ACCOUNT varchar(20),TYPE varchar(1),MSG_CONTENT varchar(100),MSG_TYPE varchar(1),MSG_TO_NICK_NAME varchar(60),MSG_TO_HEAD_PIC varchar(100),MSG_REQUEST_HEAD_PIC varchar(100),MSG_REQUEST_NICK_NAME varchar(60),MSG_PIC_URL varchar(100),MSG_PAGE_URL varchar(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 715
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "MSG_REQUEST_USER_ID"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "MSG_TO_USER_ID"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ACCOUNT"

    aput-object v3, v1, v2

    .line 716
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 717
    const-string v2, "MessageNotificationTable"

    aget-object v3, v1, v0

    invoke-static {p1, v2, v3}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE MessageNotificationTable ADD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " varchar(25)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 716
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :cond_1
    const-string v0, "MessageNotificationTable"

    const-string v1, "TYPE"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 722
    const-string v0, "ALTER TABLE MessageNotificationTable ADD TYPE varchar(1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 723
    :cond_2
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_CONTENT"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 724
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_CONTENT varchar(100)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    :cond_3
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_TYPE"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 726
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_TYPE varchar(1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 727
    :cond_4
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_USER_ID"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 728
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_USER_ID varchar(10)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 729
    :cond_5
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_TO_NICK_NAME"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 730
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_TO_NICK_NAME varchar(60)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 731
    :cond_6
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_TO_HEAD_PIC"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 732
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_TO_HEAD_PIC varchar(100)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 733
    :cond_7
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_REQUEST_HEAD_PIC"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 734
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_REQUEST_HEAD_PIC varchar(100)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 735
    :cond_8
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_REQUEST_NICK_NAME"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 736
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_REQUEST_NICK_NAME varchar(60)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    :cond_9
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_PIC_URL"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 738
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_PIC_URL varchar(100)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    :cond_a
    const-string v0, "MessageNotificationTable"

    const-string v1, "MSG_PAGE_URL"

    invoke-static {p1, v0, v1}, Lcom/yf/smart/weloopx/data/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 740
    const-string v0, "ALTER TABLE MessageNotificationTable ADD MSG_PAGE_URL varchar(100)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 742
    :cond_b
    return-void
.end method
