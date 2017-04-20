.class final Lorg/acra/x;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Z

.field private final d:Lorg/acra/e;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/c;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    new-instance v0, Lorg/acra/e;

    invoke-direct {v0}, Lorg/acra/e;-><init>()V

    iput-object v0, p0, Lorg/acra/x;->d:Lorg/acra/e;

    .line 61
    iput-object p1, p0, Lorg/acra/x;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lorg/acra/x;->e:Ljava/util/List;

    .line 63
    iput-boolean p3, p0, Lorg/acra/x;->b:Z

    .line 64
    iput-boolean p4, p0, Lorg/acra/x;->c:Z

    .line 65
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    .line 85
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Mark all pending reports as approved."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lorg/acra/f;

    iget-object v1, p0, Lorg/acra/x;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/acra/f;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0}, Lorg/acra/f;->a()[Ljava/lang/String;

    move-result-object v1

    .line 90
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 107
    return-void

    .line 90
    :cond_0
    aget-object v3, v1, v0

    .line 91
    iget-object v4, p0, Lorg/acra/x;->d:Lorg/acra/e;

    invoke-virtual {v4, v3}, Lorg/acra/e;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/acra/x;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    const-string v5, ".stacktrace"

    .line 97
    const-string v6, "-approved.stacktrace"

    .line 96
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 101
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/acra/x;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not rename approved report from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 200
    if-nez v0, :cond_0

    .line 201
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not delete error report : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 120
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "#checkAndSendReports - start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Lorg/acra/f;

    invoke-direct {v1, p1}, Lorg/acra/f;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v1}, Lorg/acra/f;->a()[Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 127
    array-length v4, v3

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 161
    :cond_0
    :goto_1
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 127
    :cond_1
    aget-object v5, v3, v2

    .line 128
    if-eqz p2, :cond_2

    iget-object v1, p0, Lorg/acra/x;->d:Lorg/acra/e;

    invoke-virtual {v1, v5}, Lorg/acra/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 132
    :cond_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 137
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    new-instance v1, Lorg/acra/h;

    invoke-direct {v1, p1}, Lorg/acra/h;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v1, v5}, Lorg/acra/h;->a(Ljava/lang/String;)Lorg/acra/b/c;

    move-result-object v1

    .line 141
    invoke-direct {p0, v1}, Lorg/acra/x;->a(Lorg/acra/b/c;)V

    .line 142
    invoke-direct {p0, p1, v5}, Lorg/acra/x;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/acra/sender/d; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send crash reports for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-direct {p0, p1, v5}, Lorg/acra/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    .line 149
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load crash report for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-direct {p0, p1, v5}, Lorg/acra/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :catch_2
    move-exception v1

    .line 154
    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to send crash report for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private a(Lorg/acra/b/c;)V
    .locals 6

    .prologue
    .line 175
    invoke-static {}, Lorg/acra/ACRA;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lorg/acra/x;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    :cond_1
    return-void

    .line 177
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/sender/c;

    .line 179
    :try_start_0
    invoke-interface {v0, p1}, Lorg/acra/sender/c;->a(Lorg/acra/b/c;)V
    :try_end_0
    .catch Lorg/acra/sender/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    const/4 v0, 0x1

    move v1, v0

    .line 183
    goto :goto_0

    :catch_0
    move-exception v3

    .line 184
    if-nez v1, :cond_3

    .line 185
    throw v3

    .line 188
    :cond_3
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ReportSender of class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string v4, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/acra/x;->c:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/acra/x;->a()V

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/acra/x;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lorg/acra/x;->b:Z

    invoke-direct {p0, v0, v1}, Lorg/acra/x;->a(Landroid/content/Context;Z)V

    .line 78
    return-void
.end method
