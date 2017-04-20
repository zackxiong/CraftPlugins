.class public Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;
.super Landroid/app/Fragment;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/activitys/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string v1, "1"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    new-instance v1, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;-><init>()V

    .line 113
    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->setArguments(Landroid/os/Bundle;)V

    .line 114
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 121
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    const v0, 0x7f0300b5

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->a:Landroid/view/View;

    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    const v0, 0x7f0300b7

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->a:Landroid/view/View;

    goto :goto_0

    .line 130
    :pswitch_1
    const v0, 0x7f0300b6

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/activitys/WelcomeActivity$b;->a:Landroid/view/View;

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
