.class Lcom/yf/smart/weloopx/android/ui/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/b;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/b;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/d;->b:Lcom/yf/smart/weloopx/android/ui/b;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/d;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/d;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 118
    return-void
.end method
