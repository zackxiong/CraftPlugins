.class Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;Lcom/yf/smart/weloopx/android/ui/activities/ej;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity$a;->a:Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 105
    return-void
.end method
