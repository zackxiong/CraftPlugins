.class public Lorg/a/a/b/a;
.super Ljava/text/DateFormat;
.source "ProGuard"


# static fields
.field private static a:J

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [C

    sput-object v0, Lorg/a/a/b/a;->b:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 61
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 11

    .prologue
    const/16 v10, 0x3a

    const/16 v9, 0xa

    const/16 v8, 0x30

    .line 83
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 84
    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int v2, v2

    .line 86
    int-to-long v4, v2

    sub-long v4, v0, v4

    sget-wide v6, Lorg/a/a/b/a;->a:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    .line 91
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 95
    iget-object v4, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 96
    if-ge v4, v9, :cond_0

    .line 97
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    iget-object v4, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 103
    if-ge v4, v9, :cond_1

    .line 104
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    iget-object v4, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 110
    if-ge v4, v9, :cond_2

    .line 111
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    const/16 v4, 0x2c

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sget-object v5, Lorg/a/a/b/a;->b:[C

    const/4 v6, 0x0

    invoke-virtual {p2, v3, v4, v5, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 119
    int-to-long v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lorg/a/a/b/a;->a:J

    .line 127
    :goto_0
    const/16 v0, 0x64

    if-ge v2, v0, :cond_3

    .line 128
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    :cond_3
    if-ge v2, v9, :cond_4

    .line 130
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 133
    return-object p2

    .line 122
    :cond_5
    sget-object v0, Lorg/a/a/b/a;->b:[C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method
