.class Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;
.super Lcom/yf/gattlib/http/afinal/core/AsyncTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;
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
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {p0}, Lcom/yf/gattlib/http/afinal/core/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Lcom/yf/smart/weloopx/android/ui/activities/ce;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 411
    .line 414
    :try_start_0
    const-string v0, "myFirm.bin"

    .line 415
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Lcom/yf/gattlib/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->l()Lcom/yf/gattlib/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/yf/gattlib/c/b;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/yf/gattlib/e/d; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 416
    :try_start_1
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 418
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 419
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 420
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Lcom/yf/gattlib/e/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 427
    if-eqz v1, :cond_0

    .line 429
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 435
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 437
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 443
    :cond_1
    :goto_3
    return-void

    .line 423
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v3, v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/yf/gattlib/e/d; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 427
    if-eqz v1, :cond_3

    .line 429
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 435
    :cond_3
    :goto_4
    if-eqz v2, :cond_1

    .line 437
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 438
    :catch_1
    move-exception v0

    .line 439
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 430
    :catch_2
    move-exception v0

    .line 431
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 430
    :catch_3
    move-exception v0

    .line 431
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 438
    :catch_4
    move-exception v0

    .line 439
    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 427
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_4

    .line 429
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 435
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 437
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 440
    :cond_5
    :goto_7
    throw v0

    .line 430
    :catch_5
    move-exception v1

    .line 431
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 438
    :catch_6
    move-exception v1

    .line 439
    invoke-static {v1}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 427
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 424
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
    .line 396
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a()V

    .line 397
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->s(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Ljava/lang/String;

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
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->f()V

    .line 403
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->t(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const v2, 0x7f0700e0

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->a(Ljava/lang/String;)V

    .line 392
    return-void
.end method
