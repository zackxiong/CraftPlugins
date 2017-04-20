.class Lcom/yf/smart/weloopx/android/ui/a/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/yf/smart/weloopx/android/ui/a/j$a;

.field final synthetic e:Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

.field final synthetic f:I

.field final synthetic g:Lcom/yf/smart/weloopx/android/ui/a/j;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/a/j;ZLjava/lang/String;Ljava/lang/String;Lcom/yf/smart/weloopx/android/ui/a/j$a;Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->g:Lcom/yf/smart/weloopx/android/ui/a/j;

    iput-boolean p2, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->a:Z

    iput-object p3, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->d:Lcom/yf/smart/weloopx/android/ui/a/j$a;

    iput-object p6, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->e:Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    iput p7, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->g:Lcom/yf/smart/weloopx/android/ui/a/j;

    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->b:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->d:Lcom/yf/smart/weloopx/android/ui/a/j$a;

    iget-object v2, v2, Lcom/yf/smart/weloopx/android/ui/a/j$a;->e:Landroid/widget/Button;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->e:Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;

    invoke-virtual {v3}, Lcom/yf/smart/weloopx/data/models/MessageNotificationModel;->getMsgTime()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->d:Lcom/yf/smart/weloopx/android/ui/a/j$a;

    iget-object v4, v4, Lcom/yf/smart/weloopx/android/ui/a/j$a;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->d:Lcom/yf/smart/weloopx/android/ui/a/j$a;

    iget-object v5, v5, Lcom/yf/smart/weloopx/android/ui/a/j$a;->d:Landroid/widget/TextView;

    iget v6, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->f:I

    invoke-static/range {v0 .. v6}, Lcom/yf/smart/weloopx/android/ui/a/j;->a(Lcom/yf/smart/weloopx/android/ui/a/j;Ljava/lang/String;Landroid/widget/Button;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 150
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/a/k;->c:Ljava/lang/String;

    goto :goto_0
.end method
