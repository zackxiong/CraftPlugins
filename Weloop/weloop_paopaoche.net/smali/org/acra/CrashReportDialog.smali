.class public Lorg/acra/CrashReportDialog;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/AlertDialog;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v7, -0x1

    const/16 v6, 0xa

    .line 80
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 83
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 85
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 87
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 93
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/b;->w()I

    move-result v3

    .line 95
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p0, v3}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->s()I

    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v0, v6, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    .line 111
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 112
    if-eqz p1, :cond_1

    .line 113
    const-string v0, "comment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->t()I

    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v0, v6, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 128
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 132
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 134
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Lorg/acra/b;->D()I

    move-result v3

    .line 134
    invoke-virtual {p0, v0, v3}, Lorg/acra/CrashReportDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/content/SharedPreferences;

    .line 136
    const/4 v0, 0x0

    .line 137
    if-eqz p1, :cond_3

    .line 138
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_3
    if-eqz v0, :cond_5

    .line 141
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    :cond_4
    return-object v1

    .line 143
    :cond_5
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/acra/CrashReportDialog;->c:Landroid/content/SharedPreferences;

    const-string v4, "acra.user.email"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->b(Z)V

    .line 171
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 175
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lorg/acra/CrashReportDialog;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 182
    const-string v3, "acra.user.email"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    :goto_1
    new-instance v2, Lorg/acra/h;

    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/acra/h;-><init>(Landroid/content/Context;)V

    .line 190
    :try_start_0
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Add user comment to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/acra/h;->a(Ljava/lang/String;)Lorg/acra/b/c;

    move-result-object v3

    .line 192
    sget-object v4, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    invoke-virtual {v3, v4, v0}, Lorg/acra/b/c;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    invoke-virtual {v3, v0, v1}, Lorg/acra/b/c;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/acra/h;->a(Lorg/acra/b/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_2
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start SenderWorker from CrashReportDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lorg/acra/ErrorReporter;->a(ZZ)Lorg/acra/x;

    .line 204
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/b;->v()I

    move-result v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lorg/acra/e/i;->a(Landroid/content/Context;II)V

    .line 208
    :cond_0
    return-void

    .line 175
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 185
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "User comment not added: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 156
    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 157
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 162
    invoke-direct {p0}, Lorg/acra/CrashReportDialog;->c()V

    .line 166
    :goto_0
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 167
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lorg/acra/CrashReportDialog;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FORCE_CANCEL"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Forced reports deletion."

    invoke-interface {v0, v1, v2}, Lorg/acra/d/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lorg/acra/CrashReportDialog;->b()V

    .line 51
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 77
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    .line 56
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening CrashReportDialog for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 60
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->x()I

    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/b;->u()I

    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 69
    :cond_3
    invoke-direct {p0, p1}, Lorg/acra/CrashReportDialog;->a(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 70
    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->a()V

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/app/AlertDialog;

    .line 74
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 229
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "comment"

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "email"

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    return-void
.end method
