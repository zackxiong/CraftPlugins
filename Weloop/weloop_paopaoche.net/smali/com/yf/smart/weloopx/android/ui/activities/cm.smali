.class Lcom/yf/smart/weloopx/android/ui/activities/cm;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cm;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    iput p2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/cm;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->f(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/cm;->b:Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/cm;->a:I

    invoke-static {v1, v2}, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;->d(Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    return-void
.end method
