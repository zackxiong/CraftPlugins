.class public Lorg/a/a/b/f;
.super Lorg/a/a/b/a;
.source "ProGuard"


# static fields
.field private static a:J

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Lorg/a/a/b/f;->b:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/a/a/b/a;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 11

    .prologue
    const/16 v10, 0x3a

    const/16 v9, 0xa

    const/16 v8, 0x30

    .line 65
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 66
    const-wide/16 v0, 0x3e8

    rem-long v0, v2, v0

    long-to-int v1, v0

    .line 68
    int-to-long v4, v1

    sub-long v4, v2, v4

    sget-wide v6, Lorg/a/a/b/f;->a:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 73
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 77
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    const-string v0, "-NA-"

    .line 96
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 99
    if-ge v0, v9, :cond_0

    .line 100
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 105
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 106
    if-ge v0, v9, :cond_1

    .line 107
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 113
    if-ge v0, v9, :cond_2

    .line 114
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 120
    if-ge v0, v9, :cond_3

    .line 121
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 125
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sget-object v5, Lorg/a/a/b/f;->b:[C

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v0, v5, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 129
    int-to-long v4, v1

    sub-long/2addr v2, v4

    sput-wide v2, Lorg/a/a/b/f;->a:J

    .line 136
    :goto_1
    const/16 v0, 0x64

    if-ge v1, v0, :cond_4

    .line 137
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    :cond_4
    if-ge v1, v9, :cond_5

    .line 139
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    return-object p2

    .line 82
    :pswitch_0
    const-string v0, "-01-"

    goto :goto_0

    .line 83
    :pswitch_1
    const-string v0, "-02-"

    goto :goto_0

    .line 84
    :pswitch_2
    const-string v0, "-03-"

    goto :goto_0

    .line 85
    :pswitch_3
    const-string v0, "-04-"

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v0, "-05-"

    goto :goto_0

    .line 87
    :pswitch_5
    const-string v0, "-06-"

    goto/16 :goto_0

    .line 88
    :pswitch_6
    const-string v0, "-07-"

    goto/16 :goto_0

    .line 89
    :pswitch_7
    const-string v0, "-08-"

    goto/16 :goto_0

    .line 90
    :pswitch_8
    const-string v0, "-09-"

    goto/16 :goto_0

    .line 91
    :pswitch_9
    const-string v0, "-10-"

    goto/16 :goto_0

    .line 92
    :pswitch_a
    const-string v0, "-11-"

    goto/16 :goto_0

    .line 93
    :pswitch_b
    const-string v0, "-12-"

    goto/16 :goto_0

    .line 132
    :cond_6
    sget-object v0, Lorg/a/a/b/f;->b:[C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method
