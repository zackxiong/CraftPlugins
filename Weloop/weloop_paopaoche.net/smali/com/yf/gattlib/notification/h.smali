.class public Lcom/yf/gattlib/notification/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/notification/k;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "MsgFilter"

    iput-object v0, p0, Lcom/yf/gattlib/notification/h;->a:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/notification/h;->d:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/notification/h;->b:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/yf/gattlib/notification/h;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/notification/h;->c:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 65
    const-string v0, "[0-9][0-9]%"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 67
    const-string v1, "[0-9]%"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 68
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yf/gattlib/notification/e;)Lcom/yf/gattlib/notification/e;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 32
    const-string v1, "Touch for more information"

    .line 33
    const-string v2, "\u6b63\u5728\u8fd0\u884c"

    .line 34
    const-string v3, ":\u4e0b\u8f7d"

    .line 35
    const-string v4, "\u540e\u53f0\u8fd0\u884c"

    .line 36
    const-string v5, "\u6b63\u5728\u4e0b\u8f7d"

    .line 37
    invoke-static {p1}, Lcom/yf/gattlib/notification/e;->b(Lcom/yf/gattlib/notification/e;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 38
    iget-object v6, p1, Lcom/yf/gattlib/notification/e;->c:Lcom/yf/gattlib/notification/NotificationContent;

    iget-object v6, v6, Lcom/yf/gattlib/notification/NotificationContent;->d:Ljava/lang/String;

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/yf/gattlib/notification/h;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u6d88\u606f\u5185\u5bb9 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v6}, Lcom/yf/gattlib/notification/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v5}, Lcom/yf/gattlib/notification/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object p1, v0

    .line 61
    :cond_1
    :goto_0
    return-object p1

    .line 49
    :cond_2
    iget-object v1, p1, Lcom/yf/gattlib/notification/e;->b:Lcom/yf/gattlib/notification/m;

    .line 50
    invoke-virtual {v1}, Lcom/yf/gattlib/notification/m;->c()Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/yf/gattlib/notification/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "!!!"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    .line 52
    goto :goto_0
.end method
