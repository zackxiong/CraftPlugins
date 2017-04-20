.class Lcom/yf/smart/weloopx/commons/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yf/smart/weloopx/commons/d;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yf/smart/weloopx/commons/d;->a:Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/commons/WhiteListChoiceAppActivity;->finish()V

    .line 93
    return-void
.end method
