.class Lcom/baidu/location/Z$a;
.super Lcom/baidu/location/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private Y:Ljava/lang/String;

.field final synthetic a:Lcom/baidu/location/Z;


# direct methods
.method public constructor <init>(Lcom/baidu/location/Z;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/Z$a;->a:Lcom/baidu/location/Z;

    invoke-direct {p0}, Lcom/baidu/location/ac;-><init>()V

    iput-object p2, p0, Lcom/baidu/location/Z$a;->Y:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/Z$a;->c0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method X()V
    .locals 4

    invoke-static {}, Lcom/baidu/location/K;->for()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/Z$a;->cY:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/Z$a;->c0:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cldc[0]"

    iget-object v3, p0, Lcom/baidu/location/Z$a;->Y:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public aj()V
    .locals 0

    invoke-virtual {p0}, Lcom/baidu/location/Z$a;->R()V

    return-void
.end method

.method do(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/Z$a;->cZ:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
