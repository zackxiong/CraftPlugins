.class public Lcom/yf/gattlib/notification/NLAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "ProGuard"


# instance fields
.field private a:Lcom/yf/gattlib/notification/f;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method private a(Landroid/view/accessibility/AccessibilityEvent;)Lcom/yf/gattlib/notification/m;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Notification;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    check-cast v0, Landroid/app/Notification;

    .line 66
    new-instance v1, Lcom/yf/gattlib/notification/m;

    invoke-direct {v1}, Lcom/yf/gattlib/notification/m;-><init>()V

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/yf/gattlib/notification/m;->a(I)V

    .line 68
    invoke-virtual {v1, v2}, Lcom/yf/gattlib/notification/m;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/yf/gattlib/notification/m;->a(Landroid/app/Notification;)V

    move-object v0, v1

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->a:Lcom/yf/gattlib/notification/f;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->a:Lcom/yf/gattlib/notification/f;

    const-string v1, "NLAccessibilityService"

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0, p1}, Lcom/yf/gattlib/notification/NLAccessibilityService;->a(Landroid/view/accessibility/AccessibilityEvent;)Lcom/yf/gattlib/notification/m;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->a:Lcom/yf/gattlib/notification/f;

    const-string v2, "posted"

    invoke-static {v1, v0, v2}, Lcom/yf/gattlib/notification/a;->a(Lcom/yf/gattlib/notification/f;Lcom/yf/gattlib/notification/m;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 86
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->a:Lcom/yf/gattlib/notification/f;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->a:Lcom/yf/gattlib/notification/f;

    invoke-virtual {v0}, Lcom/yf/gattlib/notification/f;->b()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->a:Lcom/yf/gattlib/notification/f;

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->b:Z

    .line 81
    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->b:Z

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/notification/f;->a()Lcom/yf/gattlib/notification/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->a:Lcom/yf/gattlib/notification/f;

    .line 47
    iget-object v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->a:Lcom/yf/gattlib/notification/f;

    const-string v1, "NLAccessibilityService"

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/notification/f;->a(Ljava/lang/String;)Z

    .line 48
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 49
    const/16 v1, 0x40

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 50
    const/16 v1, 0x10

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 51
    invoke-virtual {p0, v0}, Lcom/yf/gattlib/notification/NLAccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/notification/NLAccessibilityService;->b:Z

    goto :goto_0
.end method
