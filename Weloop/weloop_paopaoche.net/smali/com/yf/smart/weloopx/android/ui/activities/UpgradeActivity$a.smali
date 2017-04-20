.class Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;
.super Lcom/yf/gattlib/http/afinal/core/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yf/gattlib/http/afinal/core/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Lcom/yf/smart/weloopx/android/ui/activities/gm;)V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " 3. copyFirmwareFile"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 533
    :try_start_0
    const-string v0, "myFirm.bin"

    .line 534
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->c:Lcom/yf/gattlib/a/b;

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->l()Lcom/yf/gattlib/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/yf/gattlib/c/b;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/yf/gattlib/e/d; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 535
    :try_start_1
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 537
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 538
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 539
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Lcom/yf/gattlib/e/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 546
    if-eqz v1, :cond_0

    .line 548
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 554
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 556
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 562
    :cond_1
    :goto_3
    return-void

    .line 542
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v3, v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/yf/gattlib/e/d; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 546
    if-eqz v1, :cond_3

    .line 548
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 554
    :cond_3
    :goto_4
    if-eqz v2, :cond_1

    .line 556
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 557
    :catch_1
    move-exception v0

    .line 558
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 549
    :catch_2
    move-exception v0

    .line 550
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 549
    :catch_3
    move-exception v0

    .line 550
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 557
    :catch_4
    move-exception v0

    .line 558
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 546
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_4

    .line 548
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 554
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 556
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 559
    :cond_5
    :goto_7
    throw v0

    .line 549
    :catch_5
    move-exception v1

    .line 550
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 557
    :catch_6
    move-exception v1

    .line 558
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 546
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 543
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a()V

    .line 508
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->r(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 7. onPostExecute isSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/d/a;->a(ZLjava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onPostExecute\uff08\uff09 \u6309\u94ae\u70b9\u51fb\u6267\u884ctryOta()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->b(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->s(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)V

    .line 524
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b(I)V

    .line 522
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 491
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 491
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 1. onPreExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->q(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;

    const v2, 0x7f0700e0

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/UpgradeActivity;->a(Ljava/lang/String;)V

    .line 500
    return-void
.end method
