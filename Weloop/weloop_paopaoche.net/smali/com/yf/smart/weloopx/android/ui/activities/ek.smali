.class Lcom/yf/smart/weloopx/android/ui/activities/ek;
.super Landroid/webkit/WebChromeClient;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ek;->a:Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ek;->a:Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/MsgDetailActivity;->v:Lcom/yf/smart/weloopx/android/ui/c/aw;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 76
    :cond_0
    return-void
.end method
