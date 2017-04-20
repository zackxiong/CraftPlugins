.class Lcom/yf/smart/weloopx/android/ui/activities/fs;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fs;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/fs;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;)Lcom/yf/smart/weloopx/android/ui/a/n;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yf/smart/weloopx/android/ui/a/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/data/models/RemindersModel;

    .line 232
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/fs;->a:Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;

    invoke-static {v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/RemindersActivity;Lcom/yf/smart/weloopx/data/models/RemindersModel;)V

    .line 235
    return-void
.end method
