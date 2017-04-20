.class Lcom/yf/smart/weloopx/android/ui/activities/co;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/cn;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/cn;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/co;->a:Lcom/yf/smart/weloopx/android/ui/activities/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/co;->a:Lcom/yf/smart/weloopx/android/ui/activities/cn;

    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/activities/cn;->a:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    const v1, 0x7f0700db

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void
.end method
