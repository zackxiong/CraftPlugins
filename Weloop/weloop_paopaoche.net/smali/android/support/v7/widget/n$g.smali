.class Landroid/support/v7/widget/n$g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/n;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/n;)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Landroid/support/v7/widget/n$g;->a:Landroid/support/v7/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/n;Landroid/support/v7/widget/o;)V
    .locals 0

    .prologue
    .line 1724
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n$g;-><init>(Landroid/support/v7/widget/n;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1726
    iget-object v0, p0, Landroid/support/v7/widget/n$g;->a:Landroid/support/v7/widget/n;

    invoke-static {v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/n;)Landroid/support/v7/widget/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n$g;->a:Landroid/support/v7/widget/n;

    invoke-static {v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/n;)Landroid/support/v7/widget/n$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/n$a;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/n$g;->a:Landroid/support/v7/widget/n;

    invoke-static {v1}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/n;)Landroid/support/v7/widget/n$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/n$a;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n$g;->a:Landroid/support/v7/widget/n;

    invoke-static {v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/n;)Landroid/support/v7/widget/n$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/n$a;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/n$g;->a:Landroid/support/v7/widget/n;

    iget v1, v1, Landroid/support/v7/widget/n;->b:I

    if-gt v0, v1, :cond_0

    .line 1728
    iget-object v0, p0, Landroid/support/v7/widget/n$g;->a:Landroid/support/v7/widget/n;

    invoke-static {v0}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/n;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1729
    iget-object v0, p0, Landroid/support/v7/widget/n$g;->a:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->c()V

    .line 1731
    :cond_0
    return-void
.end method
