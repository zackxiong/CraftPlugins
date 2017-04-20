.class Lcom/yf/smart/weloopx/android/ui/a/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/data/models/RemindersModel;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/a/n;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/a/n;Lcom/yf/smart/weloopx/data/models/RemindersModel;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/o;->b:Lcom/yf/smart/weloopx/android/ui/a/n;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/a/o;->a:Lcom/yf/smart/weloopx/data/models/RemindersModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/o;->b:Lcom/yf/smart/weloopx/android/ui/a/n;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/o;->a:Lcom/yf/smart/weloopx/data/models/RemindersModel;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/a/n;->a(Lcom/yf/smart/weloopx/android/ui/a/n;Lcom/yf/smart/weloopx/data/models/RemindersModel;)V

    .line 125
    return-void
.end method
