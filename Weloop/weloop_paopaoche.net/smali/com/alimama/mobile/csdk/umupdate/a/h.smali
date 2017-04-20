.class public Lcom/alimama/mobile/csdk/umupdate/a/h;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method private static a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/csdk/umupdate/models/Promoter;I)V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    invoke-direct {v0, p0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->c(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a([Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/alimama/mobile/csdk/umupdate/a/k;

    invoke-direct {v1, p1, v0}, Lcom/alimama/mobile/csdk/umupdate/a/k;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/Promoter;Lcom/alimama/mobile/csdk/umupdate/b/d$a;)V

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/a/k;->a()V

    .line 66
    return-void
.end method

.method public static a(Lcom/alimama/mobile/csdk/umupdate/models/Promoter;Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;ZI)V
    .locals 3

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/mobile/b;->b()Lcom/alimama/mobile/csdk/umupdate/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {v0, p0, p3}, Lcom/alimama/mobile/csdk/umupdate/a/h;->c(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/csdk/umupdate/models/Promoter;I)V

    .line 56
    :goto_1
    return-void

    .line 26
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 36
    :cond_0
    iget v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->h:I

    .line 37
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 38
    const/4 v1, 0x1

    .line 41
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 52
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0d\u652f\u6301\u8be5\u70b9\u51fb."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 45
    :pswitch_0
    invoke-static {v0, p0, p3}, Lcom/alimama/mobile/csdk/umupdate/a/h;->b(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/csdk/umupdate/models/Promoter;I)V

    goto :goto_1

    .line 49
    :pswitch_1
    invoke-static {v0, p0, p3}, Lcom/alimama/mobile/csdk/umupdate/a/h;->a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/csdk/umupdate/models/Promoter;I)V

    goto :goto_1

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/csdk/umupdate/models/Promoter;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    invoke-direct {v0, p0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->c(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    new-array v1, v4, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a([Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a()Lcom/alimama/mobile/csdk/umupdate/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d;->a()V

    .line 75
    :try_start_0
    iget-object v0, p1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/a/i;->e:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    .line 81
    const-string v1, "\u65e0\u6cd5\u627e\u5230\u6d4f\u89c8\u5668."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static c(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/csdk/umupdate/models/Promoter;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    invoke-direct {v0, p0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;-><init>(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->b(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->c(I)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a([Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)Lcom/alimama/mobile/csdk/umupdate/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d$a;->a()Lcom/alimama/mobile/csdk/umupdate/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/b/d;->a()V

    .line 94
    iget-object v0, p1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/n;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/alimama/mobile/b;->a()Lcom/alimama/mobile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/b;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
