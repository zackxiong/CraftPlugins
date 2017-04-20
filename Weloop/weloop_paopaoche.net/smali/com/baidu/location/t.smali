.class Lcom/baidu/location/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# instance fields
.field private Y:D

.field private Z:F

.field private a:D

.field private aa:Z

.field private ab:Z

.field public hA:Ljava/lang/String;

.field public hD:Ljava/lang/String;

.field public hs:Ljava/lang/String;

.field public hu:Ljava/lang/String;

.field public hv:Ljava/lang/String;

.field public hx:Ljava/lang/String;

.field public hy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/location/t;->a:D

    iput-wide v0, p0, Lcom/baidu/location/t;->Y:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/t;->Z:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/t;->aa:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/t;->ab:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/t;->hy:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/t;->hv:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/t;->hx:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/t;->hu:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/t;->hD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/t;->hA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/t;->hs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/baidu/location/t;->a:D

    iput-wide v2, p0, Lcom/baidu/location/t;->Y:D

    const/4 v2, 0x0

    iput v2, p0, Lcom/baidu/location/t;->Z:F

    iput-boolean v0, p0, Lcom/baidu/location/t;->aa:Z

    iput-boolean v1, p0, Lcom/baidu/location/t;->ab:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/t;->hy:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/t;->hv:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/t;->hx:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/t;->hu:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/t;->hD:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/t;->hA:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/location/t;->hs:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    if-eq v2, v1, :cond_2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LocationRS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "latitude"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/t;->a:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/baidu/location/t;->ab:Z

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_2
    return-void

    :cond_3
    const-string v4, "longitude"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/t;->Y:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lcom/baidu/location/t;->ab:Z

    goto :goto_1

    :cond_4
    const-string v4, "hpe"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v4

    if-eqz v4, :cond_5

    :try_start_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/baidu/location/t;->Z:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lcom/baidu/location/t;->ab:Z

    goto :goto_1

    :cond_5
    const-string v4, "country"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x0

    :try_start_7
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/t;->hx:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    :goto_2
    :try_start_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/t;->hv:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v2

    goto/16 :goto_1

    :cond_6
    :try_start_9
    const-string v4, "province"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result v4

    if-eqz v4, :cond_7

    :try_start_a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/t;->hu:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v2

    goto/16 :goto_1

    :cond_7
    :try_start_b
    const-string v4, "region"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result v4

    if-eqz v4, :cond_8

    :try_start_c
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/t;->hD:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v2

    goto/16 :goto_1

    :cond_8
    :try_start_d
    const-string v4, "street-number"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result v4

    if-eqz v4, :cond_9

    :try_start_e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/t;->hs:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v2

    goto/16 :goto_1

    :cond_9
    :try_start_f
    const-string v4, "city"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    move-result v4

    if-eqz v4, :cond_a

    :try_start_10
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/t;->hy:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_1

    :catch_8
    move-exception v2

    goto/16 :goto_1

    :cond_a
    :try_start_11
    const-string v4, "address-line"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    move-result v4

    if-eqz v4, :cond_b

    :try_start_12
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/t;->hA:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v2

    goto/16 :goto_1

    :cond_b
    :try_start_13
    const-string v4, "error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/location/t;->ab:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_1

    :catch_a
    move-exception v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public b0()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/t;->Y:D

    return-wide v0
.end method

.method public b1()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/t;->Z:F

    return v0
.end method

.method public b2()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/baidu/location/t;->ab:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "&skyll=%.6f|%.6f|%.1f&skyflag=1&skyadd=%s|%s|%s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/baidu/location/t;->Y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/baidu/location/t;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/baidu/location/t;->Z:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/baidu/location/t;->hv:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/baidu/location/t;->hy:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/baidu/location/t;->hA:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b3()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/baidu/location/t;->hv:Ljava/lang/String;

    const-string v2, "China"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/t;->hv:Ljava/lang/String;

    const-string v2, "Taiwan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/t;->hx:Ljava/lang/String;

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public bY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/t;->ab:Z

    return v0
.end method

.method public bZ()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/t;->a:D

    return-wide v0
.end method
