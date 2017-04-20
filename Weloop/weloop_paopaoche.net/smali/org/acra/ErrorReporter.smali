.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static k:Z

.field private static l:I


# instance fields
.field private a:Z

.field private final b:Landroid/app/Application;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lorg/acra/b/d;

.field private final f:Lorg/acra/e;

.field private final g:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private h:Ljava/lang/Thread;

.field private i:Ljava/lang/Throwable;

.field private transient j:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lorg/acra/ErrorReporter;->k:Z

    .line 115
    const/4 v0, 0x0

    sput v0, Lorg/acra/ErrorReporter;->l:I

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Landroid/content/SharedPreferences;Z)V
    .locals 4

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->a:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    .line 95
    new-instance v0, Lorg/acra/e;

    invoke-direct {v0}, Lorg/acra/e;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter;->f:Lorg/acra/e;

    .line 130
    iput-object p1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    .line 131
    iput-object p2, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    .line 132
    iput-boolean p3, p0, Lorg/acra/ErrorReporter;->a:Z

    .line 135
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-static {v0}, Lorg/acra/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 141
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 143
    invoke-static {}, Lorg/acra/b/a;->a()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 145
    new-instance v2, Lorg/acra/i;

    invoke-direct {v2, p0}, Lorg/acra/i;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-static {p1, v2}, Lorg/acra/c/a/a/a/c;->a(Landroid/app/Application;Lorg/acra/c/a/a/a/a;)V

    .line 196
    :cond_0
    new-instance v2, Lorg/acra/b/d;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v2, v3, p2, v1, v0}, Lorg/acra/b/d;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/text/format/Time;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/b/d;

    .line 200
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 201
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 204
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->c()V

    .line 205
    return-void
.end method

.method static synthetic a(Lorg/acra/ErrorReporter;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    return-object v0
.end method

.method private a(Lorg/acra/b/c;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 807
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 808
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 809
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 810
    sget-object v2, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v2}, Lorg/acra/b/c;->a(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_0

    sget-object v0, Lorg/acra/d;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 812
    const-string v1, ".stacktrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 811
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 850
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 851
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    .line 857
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    .line 859
    :goto_1
    return-object v0

    .line 852
    :cond_0
    iget-object v1, p0, Lorg/acra/ErrorReporter;->f:Lorg/acra/e;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/acra/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 853
    aget-object v0, p1, v0

    goto :goto_1

    .line 851
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 859
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lorg/acra/b/c;)V
    .locals 3

    .prologue
    .line 832
    :try_start_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing crash report file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v0, Lorg/acra/h;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/h;-><init>(Landroid/content/Context;)V

    .line 834
    invoke-virtual {v0, p2, p1}, Lorg/acra/h;->a(Lorg/acra/b/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while writing the report file..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;ZZ)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 605
    iget-boolean v1, p0, Lorg/acra/ErrorReporter;->a:Z

    if-nez v1, :cond_0

    .line 742
    :goto_0
    return-void

    .line 610
    :cond_0
    if-nez p2, :cond_7

    .line 613
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object p2

    move v5, v0

    .line 625
    :goto_1
    if-nez p1, :cond_1

    .line 626
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Report requested by developer"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 629
    :cond_1
    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq p2, v1, :cond_8

    .line 630
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->C()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq p2, v1, :cond_8

    sget-object v1, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-eq p2, v1, :cond_8

    :cond_2
    move v1, v0

    .line 632
    :goto_2
    if-eqz v1, :cond_3

    .line 633
    new-instance v2, Lorg/acra/j;

    invoke-direct {v2, p0}, Lorg/acra/j;-><init>(Lorg/acra/ErrorReporter;)V

    .line 647
    invoke-virtual {v2}, Lorg/acra/j;->start()V

    .line 653
    :cond_3
    iget-object v2, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/b/d;

    .line 654
    iget-object v4, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/Thread;

    .line 653
    invoke-virtual {v2, p1, p3, v4}, Lorg/acra/b/d;->a(Ljava/lang/Throwable;ZLjava/lang/Thread;)Lorg/acra/b/c;

    move-result-object v2

    .line 658
    invoke-direct {p0, v2}, Lorg/acra/ErrorReporter;->a(Lorg/acra/b/c;)Ljava/lang/String;

    move-result-object v4

    .line 659
    invoke-direct {p0, v4, v2}, Lorg/acra/ErrorReporter;->a(Ljava/lang/String;Lorg/acra/b/c;)V

    .line 661
    const/4 v2, 0x0

    .line 663
    sget-object v6, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq p2, v6, :cond_4

    .line 664
    sget-object v6, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq p2, v6, :cond_4

    .line 665
    iget-object v6, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    const-string v7, "acra.alwaysaccept"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 668
    :cond_4
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "About to start ReportSenderWorker from #handleException"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0, v5, v3}, Lorg/acra/ErrorReporter;->a(ZZ)Lorg/acra/x;

    move-result-object v2

    .line 674
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 679
    sput-boolean v0, Lorg/acra/ErrorReporter;->k:Z

    .line 680
    new-instance v1, Lorg/acra/k;

    invoke-direct {v1, p0}, Lorg/acra/k;-><init>(Lorg/acra/ErrorReporter;)V

    .line 701
    invoke-virtual {v1}, Lorg/acra/k;->start()V

    .line 708
    :cond_6
    sget-object v1, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne p2, v1, :cond_a

    .line 709
    iget-object v1, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    const-string v5, "acra.alwaysaccept"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    .line 711
    :goto_4
    new-instance v0, Lorg/acra/l;

    move-object v1, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/acra/l;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/x;ZLjava/lang/String;Z)V

    .line 741
    invoke-virtual {v0}, Lorg/acra/l;->start()V

    goto/16 :goto_0

    .line 619
    :cond_7
    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne p2, v1, :cond_b

    .line 620
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    sget-object v2, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v1, v2, :cond_b

    move v5, v3

    .line 621
    goto/16 :goto_1

    :cond_8
    move v1, v3

    .line 629
    goto :goto_2

    .line 670
    :cond_9
    sget-object v5, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne p2, v5, :cond_5

    .line 671
    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Notification will be created on application start."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    move v3, v0

    .line 708
    goto :goto_4

    :cond_b
    move v5, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lorg/acra/ErrorReporter;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/acra/ErrorReporter;->j:Landroid/app/Activity;

    return-void
.end method

.method private a(ZZI)V
    .locals 8

    .prologue
    .line 877
    new-instance v0, Lorg/acra/f;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v0, v1}, Lorg/acra/f;-><init>(Landroid/content/Context;)V

    .line 878
    invoke-virtual {v0}, Lorg/acra/f;->a()[Ljava/lang/String;

    move-result-object v1

    .line 879
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 880
    if-eqz v1, :cond_0

    .line 881
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    sub-int/2addr v2, p3

    if-lt v0, v2, :cond_1

    .line 893
    :cond_0
    return-void

    .line 882
    :cond_1
    aget-object v2, v1, v0

    .line 883
    iget-object v3, p0, Lorg/acra/ErrorReporter;->f:Lorg/acra/e;

    invoke-virtual {v3, v2}, Lorg/acra/e;->b(Ljava/lang/String;)Z

    move-result v3

    .line 884
    if-eqz v3, :cond_2

    if-nez p1, :cond_3

    :cond_2
    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    .line 885
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 886
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Deleting file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lorg/acra/d/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 888
    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not delete report : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 775
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    .line 776
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 775
    check-cast v0, Landroid/app/NotificationManager;

    .line 778
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    .line 781
    invoke-interface {v1}, Lorg/acra/a/a;->y()I

    move-result v2

    .line 783
    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/a/a;->A()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 785
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 787
    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/a/a;->B()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 788
    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-interface {v1}, Lorg/acra/a/a;->z()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 790
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    const-class v5, Lorg/acra/CrashReportDialog;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 791
    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Creating Notification for "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v4, "REPORT_FILE_NAME"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    sget v5, Lorg/acra/ErrorReporter;->l:I

    add-int/lit8 v7, v5, 0x1

    sput v7, Lorg/acra/ErrorReporter;->l:I

    const/high16 v7, 0x8000000

    invoke-static {v4, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 795
    iget-object v4, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v6, v4, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 797
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    const-class v3, Lorg/acra/CrashReportDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 798
    const-string v2, "FORCE_CANCEL"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 799
    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 800
    iput-object v1, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 803
    const/16 v1, 0x29a

    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 804
    return-void
.end method

.method static synthetic b(Lorg/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lorg/acra/ErrorReporter;->f()V

    return-void
.end method

.method private b([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 905
    array-length v2, p1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 910
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 905
    :cond_1
    aget-object v3, p1, v1

    .line 906
    iget-object v4, p0, Lorg/acra/ErrorReporter;->f:Lorg/acra/e;

    invoke-virtual {v4, v3}, Lorg/acra/e;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 905
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic c(Z)V
    .locals 0

    .prologue
    .line 110
    sput-boolean p0, Lorg/acra/ErrorReporter;->k:Z

    return-void
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lorg/acra/ErrorReporter;->k:Z

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 386
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v1, :cond_0

    .line 387
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lorg/acra/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/Thread;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->i:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 413
    :goto_0
    return-void

    .line 396
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " fatal error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter;->i:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lorg/acra/ErrorReporter;->i:Ljava/lang/Throwable;

    .line 396
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    iget-object v0, p0, Lorg/acra/ErrorReporter;->j:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 404
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Finishing the last Activity prior to killing the Process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lorg/acra/ErrorReporter;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 406
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finished "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/ErrorReporter;->j:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/acra/ErrorReporter;->j:Landroid/app/Activity;

    .line 410
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 411
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method


# virtual methods
.method a(ZZ)Lorg/acra/x;
    .locals 3

    .prologue
    .line 457
    new-instance v0, Lorg/acra/x;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/acra/x;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    .line 458
    invoke-virtual {v0}, Lorg/acra/x;->start()V

    .line 459
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 327
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 753
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating Dialog for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    const-class v2, Lorg/acra/CrashReportDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 755
    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 758
    return-void
.end method

.method public a(Lorg/acra/sender/c;)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/acra/ErrorReporter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 443
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "ACRA is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iput-boolean p1, p0, Lorg/acra/ErrorReporter;->a:Z

    .line 445
    return-void

    .line 443
    :cond_0
    const-string v0, "disabled"

    goto :goto_0
.end method

.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lorg/acra/ErrorReporter;->e:Lorg/acra/b/d;

    invoke-virtual {v0, p1, p2}, Lorg/acra/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/acra/ErrorReporter;->a(ZZI)V

    .line 467
    return-void
.end method

.method public b(Lorg/acra/sender/c;)V
    .locals 0

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->a()V

    .line 338
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->a(Lorg/acra/sender/c;)V

    .line 339
    return-void
.end method

.method b(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    if-eqz p1, :cond_0

    move v0, v1

    .line 555
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lorg/acra/ErrorReporter;->a(ZZI)V

    .line 556
    return-void

    :cond_0
    move v0, v2

    .line 554
    goto :goto_0
.end method

.method public c()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 477
    iget-object v0, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    const-string v3, "acra.lastVersionNr"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    .line 478
    new-instance v0, Lorg/acra/e/g;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v0, v3}, Lorg/acra/e/g;-><init>(Landroid/content/Context;)V

    .line 479
    invoke-virtual {v0}, Lorg/acra/e/g;->a()Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 480
    if-eqz v3, :cond_7

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-lez v0, :cond_7

    move v0, v1

    .line 481
    :goto_0
    if-eqz v0, :cond_1

    .line 482
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->b()V

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 486
    const-string v4, "acra.lastVersionNr"

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 490
    :cond_1
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v3, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v3, :cond_2

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v3, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v0, v3, :cond_3

    .line 491
    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {p0, v1}, Lorg/acra/ErrorReporter;->b(Z)V

    .line 501
    :cond_3
    new-instance v0, Lorg/acra/f;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-direct {v0, v3}, Lorg/acra/f;-><init>(Landroid/content/Context;)V

    .line 502
    invoke-virtual {v0}, Lorg/acra/f;->a()[Ljava/lang/String;

    move-result-object v3

    .line 504
    if-eqz v3, :cond_6

    array-length v3, v3

    if-lez v3, :cond_6

    .line 512
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v3

    .line 514
    invoke-virtual {v0}, Lorg/acra/f;->a()[Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->b([Ljava/lang/String;)Z

    move-result v4

    .line 517
    sget-object v5, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v3, v5, :cond_4

    .line 518
    sget-object v5, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v3, v5, :cond_4

    .line 519
    if-eqz v4, :cond_8

    sget-object v5, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v3, v5, :cond_4

    sget-object v5, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v3, v5, :cond_8

    .line 521
    :cond_4
    sget-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v3, v0, :cond_5

    if-nez v4, :cond_5

    .line 524
    iget-object v0, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/b;->C()I

    move-result v3

    invoke-static {v0, v3, v1}, Lorg/acra/e/i;->a(Landroid/content/Context;II)V

    .line 527
    :cond_5
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p0, v2, v2}, Lorg/acra/ErrorReporter;->a(ZZ)Lorg/acra/x;

    .line 542
    :cond_6
    :goto_1
    return-void

    :cond_7
    move v0, v2

    .line 480
    goto/16 :goto_0

    .line 529
    :cond_8
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    sget-object v2, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v1, v2, :cond_9

    .line 533
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :cond_9
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    sget-object v0, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    goto :goto_1
.end method

.method public d()V
    .locals 4

    .prologue
    .line 918
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    .line 919
    invoke-static {}, Lorg/acra/ACRA;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 920
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->a()V

    .line 924
    const-string v2, ""

    invoke-interface {v0}, Lorg/acra/a/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 925
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v0, Lorg/acra/sender/a;

    invoke-direct {v0, v1}, Lorg/acra/sender/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->b(Lorg/acra/sender/c;)V

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    new-instance v2, Lorg/acra/e/g;

    invoke-direct {v2, v1}, Lorg/acra/e/g;-><init>(Landroid/content/Context;)V

    .line 931
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Lorg/acra/e/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 937
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    const-string v1, " should be granted permission "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 940
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 941
    const-string v2, " if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    :cond_2
    invoke-interface {v0}, Lorg/acra/a/a;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-interface {v0}, Lorg/acra/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 948
    new-instance v0, Lorg/acra/sender/HttpSender;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->O()Lorg/acra/sender/HttpSender$Method;

    move-result-object v1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/b;->P()Lorg/acra/sender/HttpSender$Type;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->b(Lorg/acra/sender/c;)V

    goto :goto_0

    .line 954
    :cond_3
    invoke-interface {v0}, Lorg/acra/a/a;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-interface {v0}, Lorg/acra/a/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Lorg/acra/sender/b;

    invoke-direct {v0}, Lorg/acra/sender/b;-><init>()V

    invoke-virtual {p0, v0}, Lorg/acra/ErrorReporter;->a(Lorg/acra/sender/c;)V

    goto/16 :goto_0
.end method

.method public handleSilentException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 426
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->a:Z

    if-eqz v0, :cond_0

    .line 427
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/acra/ErrorReporter;->a(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;ZZ)V

    .line 428
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA sent Silent report."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA is disabled. Silent report not sent."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 352
    :try_start_0
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->a:Z

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 354
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA is disabled for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    const-string v2, " - forwarding uncaught Exception on to default ExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA is disabled for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string v2, " - no default ExceptionHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 376
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/acra/ErrorReporter;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 364
    :cond_2
    :try_start_1
    iput-object p1, p0, Lorg/acra/ErrorReporter;->h:Ljava/lang/Thread;

    .line 365
    iput-object p2, p0, Lorg/acra/ErrorReporter;->i:Ljava/lang/Throwable;

    .line 367
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACRA caught a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/ErrorReporter;->b:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    const-string v2, ". Building report."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->r()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/acra/ErrorReporter;->a(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
