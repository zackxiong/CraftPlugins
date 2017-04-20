.class Lcom/yf/smart/weloopx/view/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/view/l;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/view/l;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yf/smart/weloopx/view/m;->a:Lcom/yf/smart/weloopx/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yf/smart/weloopx/view/m;->a:Lcom/yf/smart/weloopx/view/l;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/view/l;->dismiss()V

    .line 40
    return-void
.end method
