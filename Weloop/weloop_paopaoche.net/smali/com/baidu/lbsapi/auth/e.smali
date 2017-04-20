.class Lcom/baidu/lbsapi/auth/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/baidu/lbsapi/auth/c;

.field final synthetic b:Lcom/baidu/lbsapi/auth/c$b;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/c$b;Lcom/baidu/lbsapi/auth/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/e;->b:Lcom/baidu/lbsapi/auth/c$b;

    iput-object p2, p0, Lcom/baidu/lbsapi/auth/e;->a:Lcom/baidu/lbsapi/auth/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
