.class Lcom/yf/smart/weloopx/android/ui/activities/gz;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/client/b/bk;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 592
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "is upgrading"

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStart() put GattSettingKeys.KEY_IS_UPGRADING = true "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStart() put GattSettingKeys.KEY_IS_UPGRADING = true "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->u(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 596
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->v(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 597
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->w(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Z)Z

    .line 599
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Z)Z

    .line 600
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->d()V

    .line 602
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;II)V

    .line 607
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)I

    .line 608
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;I)I

    .line 609
    mul-int/lit16 v0, p2, 0x168

    div-int/2addr v0, p1

    .line 610
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d:I

    if-le v0, v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iput v0, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->d:I

    .line 612
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->x(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 614
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c:Lcom/yf/gattlib/a/b;

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 671
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->F(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 676
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Z)Z

    .line 674
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/client/f;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 618
    const-string v0, " OTA onFinished "

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OTA onFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/yf/gattlib/c/c;

    move-result-object v0

    sget-object v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 622
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "is upgrading"

    invoke-virtual {v0, v1, v4}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onFinished() put GattSettingKeys.KEY_IS_UPGRADING = false "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onFinished() put GattSettingKeys.KEY_IS_UPGRADING = false "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 625
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->y(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 626
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->z(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 627
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Z)Z

    .line 628
    invoke-static {}, Lcom/yf/gattlib/client/f;->a()Lcom/yf/gattlib/client/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yf/gattlib/client/f;->a(Z)V

    .line 630
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "FIRMER_UPDATE_DATE"

    invoke-static {}, Lcom/yf/gattlib/p/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->A(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z

    move-result v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OTA finish and Reset ? = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 637
    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_RESET_DEVICE_WHEN_CONNECTED"

    invoke-virtual {v0, v1, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iput v3, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->e:I

    .line 643
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "need set calories"

    invoke-virtual {v0, v1, v3}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OTA finish and setup total data ? = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Lcom/yf/gattlib/c/c;

    move-result-object v1

    const-string v2, "need set calories"

    invoke-virtual {v1, v2, v4}, Lcom/yf/gattlib/c/c;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->B(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 649
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->C(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->D(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    sput-boolean v3, Lcom/yf/smart/weloopx/android/ui/activities/z;->c:Z

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->C(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->E(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    sput-boolean v3, Lcom/yf/smart/weloopx/android/ui/activities/z;->c:Z

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v3.32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6709\u5fc5\u8981\u5173\u95ed\u96f6\u70b9\u95f9\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 661
    sput-boolean v3, Lcom/yf/smart/weloopx/android/ui/activities/z;->d:Z

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6ca1\u6709\u5fc5\u8981\u5173\u95ed\u96f6\u70b9\u95f9\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 571
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 575
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    return-object v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->r(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 583
    :catch_1
    move-exception v0

    .line 584
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not found2 22"

    invoke-static {v0, v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    new-instance v0, Lcom/yf/gattlib/e/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/gz;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->r(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/gattlib/e/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
