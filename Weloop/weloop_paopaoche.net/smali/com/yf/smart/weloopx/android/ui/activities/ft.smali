.class Lcom/yf/smart/weloopx/android/ui/activities/ft;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/ft;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ft;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-static {v0, p2}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ft;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-static {v0, p3}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->b(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/ft;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;

    invoke-static {v0, p4}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->c(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemindersAddActivity \u9009\u62e9\u7684\u5e74 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u6708 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \u65e5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 137
    return-void
.end method
