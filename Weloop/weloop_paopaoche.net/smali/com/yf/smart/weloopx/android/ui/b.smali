.class public final Lcom/yf/smart/weloopx/android/ui/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/c;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()Lcom/yf/smart/weloopx/android/ui/b;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/b$a;->a:Lcom/yf/smart/weloopx/android/ui/b;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/yf/gattlib/b/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    const/16 v2, 0x88

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    const-class v1, Lcom/yf/gattlib/notification/NLService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    const-class v1, Lcom/yf/gattlib/notification/NLAccessibilityService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/b;->d()V

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/b;->e()V

    .line 76
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 84
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 85
    const v0, 0x7f030070

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(I)V

    .line 86
    const v0, 0x7f0d01a8

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/c;

    invoke-direct {v3, p0, v1}, Lcom/yf/smart/weloopx/android/ui/c;-><init>(Lcom/yf/smart/weloopx/android/ui/b;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0d01a7

    invoke-virtual {v2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/d;

    invoke-direct {v2, p0, v1}, Lcom/yf/smart/weloopx/android/ui/d;-><init>(Lcom/yf/smart/weloopx/android/ui/b;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/b;->a:Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
