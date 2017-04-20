.class public final Lcom/yf/gattlib/notification/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/notification/f$1;,
        Lcom/yf/gattlib/notification/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yf/gattlib/notification/k;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "default"

    iput-object v0, p0, Lcom/yf/gattlib/notification/f;->b:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/yf/gattlib/notification/d;

    invoke-direct {v0}, Lcom/yf/gattlib/notification/d;-><init>()V

    .line 18
    new-instance v1, Lcom/yf/gattlib/notification/g;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/d;->a(Lcom/yf/gattlib/notification/k;)V

    .line 19
    new-instance v1, Lcom/yf/gattlib/notification/n;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/d;->a(Lcom/yf/gattlib/notification/k;)V

    .line 20
    new-instance v1, Lcom/yf/gattlib/notification/o;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/d;->a(Lcom/yf/gattlib/notification/k;)V

    .line 21
    new-instance v1, Lcom/yf/gattlib/notification/c;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/d;->a(Lcom/yf/gattlib/notification/k;)V

    .line 22
    new-instance v1, Lcom/yf/gattlib/notification/r;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/d;->a(Lcom/yf/gattlib/notification/k;)V

    .line 23
    new-instance v1, Lcom/yf/gattlib/notification/s;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/d;->a(Lcom/yf/gattlib/notification/k;)V

    .line 24
    new-instance v1, Lcom/yf/gattlib/notification/h;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/d;->a(Lcom/yf/gattlib/notification/k;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/notification/f;->a(Lcom/yf/gattlib/notification/k;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/gattlib/notification/f$1;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/yf/gattlib/notification/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/yf/gattlib/notification/f;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yf/gattlib/notification/f$a;->a:Lcom/yf/gattlib/notification/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yf/gattlib/notification/f;->a:Lcom/yf/gattlib/notification/k;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yf/gattlib/notification/f;->a:Lcom/yf/gattlib/notification/k;

    invoke-interface {v0, p1}, Lcom/yf/gattlib/notification/k;->a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;

    move-result-object p1

    .line 73
    :cond_0
    return-object p1
.end method

.method public a(Lcom/yf/gattlib/notification/m;)Lcom/yf/gattlib/notification/e;
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/yf/gattlib/notification/f;->a(Lcom/yf/gattlib/notification/m;Ljava/lang/String;)Lcom/yf/gattlib/notification/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yf/gattlib/notification/m;I)Lcom/yf/gattlib/notification/e;
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/yf/gattlib/notification/f;->a(Lcom/yf/gattlib/notification/m;Ljava/lang/String;I)Lcom/yf/gattlib/notification/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yf/gattlib/notification/m;Ljava/lang/String;)Lcom/yf/gattlib/notification/e;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yf/gattlib/notification/f;->a(Lcom/yf/gattlib/notification/m;Ljava/lang/String;I)Lcom/yf/gattlib/notification/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yf/gattlib/notification/m;Ljava/lang/String;I)Lcom/yf/gattlib/notification/e;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/yf/gattlib/notification/e;

    invoke-direct {v0}, Lcom/yf/gattlib/notification/e;-><init>()V

    .line 61
    iput-object p2, v0, Lcom/yf/gattlib/notification/e;->d:Ljava/lang/String;

    .line 62
    iput-object p1, v0, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    .line 63
    iput p3, v0, Lcom/yf/gattlib/notification/e;->e:I

    .line 64
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/notification/f;->a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public a(Lcom/yf/gattlib/notification/k;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yf/gattlib/notification/f;->a:Lcom/yf/gattlib/notification/k;

    .line 44
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 29
    const-string v1, "default"

    iget-object v2, p0, Lcom/yf/gattlib/notification/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    iput-object p1, p0, Lcom/yf/gattlib/notification/f;->b:Ljava/lang/String;

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/yf/gattlib/notification/f;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "default"

    iput-object v0, p0, Lcom/yf/gattlib/notification/f;->b:Ljava/lang/String;

    .line 40
    return-void
.end method
