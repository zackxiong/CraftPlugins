.class Lcom/yf/smart/weloopx/view/p;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/o;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/o;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/p;->a:Lcom/yf/smart/weloopx/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/p;->a:Lcom/yf/smart/weloopx/view/o;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/o;->dismiss()V

    .line 41
    return-void
.end method
