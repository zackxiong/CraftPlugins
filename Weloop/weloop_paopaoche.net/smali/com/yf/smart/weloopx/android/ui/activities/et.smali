.class Lcom/yf/smart/weloopx/android/ui/activities/et;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/el;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/el;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/et;->b:Lcom/yf/smart/weloopx/android/ui/activities/el;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/et;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/et;->b:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->n(Lcom/yf/smart/weloopx/android/ui/activities/el;)V

    .line 718
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/et;->b:Lcom/yf/smart/weloopx/android/ui/activities/el;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/el;->a(Lcom/yf/smart/weloopx/android/ui/activities/el;)Lcom/yf/gattlib/c/c;

    move-result-object v0

    const-string v1, "KEY_WAR_BIND_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/c/c;->a(Ljava/lang/String;Z)V

    .line 719
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/et;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 720
    return-void
.end method
