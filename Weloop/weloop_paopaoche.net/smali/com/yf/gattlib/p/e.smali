.class public Lcom/yf/gattlib/p/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a()B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 42
    const-string v3, "en"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    const-string v3, "zh"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_2
    const-string v3, "fr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 47
    const-string v0, "CA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    const/4 v0, 0x3

    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 51
    :cond_4
    const-string v3, "de"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 52
    const/4 v0, 0x4

    goto :goto_0

    .line 53
    :cond_5
    const-string v3, "it"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 54
    const/16 v0, 0x9

    goto :goto_0

    .line 55
    :cond_6
    const-string v3, "es"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 56
    const-string v0, "MX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    const/16 v0, 0xb

    goto :goto_0

    .line 59
    :cond_7
    const/16 v0, 0xa

    goto :goto_0

    .line 60
    :cond_8
    const-string v3, "pt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 61
    const-string v0, "BR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 62
    const/16 v0, 0xd

    goto :goto_0

    .line 64
    :cond_9
    const/16 v0, 0xe

    goto :goto_0

    .line 65
    :cond_a
    const-string v2, "ru"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 66
    const/16 v0, 0x13

    goto :goto_0

    .line 67
    :cond_b
    const-string v2, "pl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 68
    const/16 v0, 0x14

    goto :goto_0

    .line 69
    :cond_c
    const-string v2, "uk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 70
    const/16 v0, 0x16

    goto :goto_0

    .line 71
    :cond_d
    const-string v2, "hr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 72
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 73
    :cond_e
    const-string v2, "cs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 74
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 75
    :cond_f
    const-string v2, "el"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 76
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 77
    :cond_10
    const-string v2, "ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 78
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 79
    :cond_11
    const-string v2, "sk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 80
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 81
    :cond_12
    const-string v2, "hu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 82
    const/16 v0, 0x25

    goto/16 :goto_0

    .line 83
    :cond_13
    const-string v2, "sr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 84
    const/16 v0, 0x28

    goto/16 :goto_0

    .line 85
    :cond_14
    const-string v2, "sl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 86
    const/16 v0, 0x29

    goto/16 :goto_0

    .line 87
    :cond_15
    const-string v2, "et"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 88
    const/16 v0, 0x2a

    goto/16 :goto_0

    .line 89
    :cond_16
    const-string v2, "lt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 90
    const/16 v0, 0x2f

    goto/16 :goto_0

    .line 91
    :cond_17
    const-string v2, "lv"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 92
    const/16 v0, 0x30

    goto/16 :goto_0

    .line 93
    :cond_18
    const-string v2, "bg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const/16 v0, 0x32

    goto/16 :goto_0
.end method
