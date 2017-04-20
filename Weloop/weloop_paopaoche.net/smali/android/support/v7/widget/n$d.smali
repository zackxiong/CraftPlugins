.class Landroid/support/v7/widget/n$d;
.super Landroid/database/DataSetObserver;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/n;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/n;)V
    .locals 0

    .prologue
    .line 1703
    iput-object p1, p0, Landroid/support/v7/widget/n$d;->a:Landroid/support/v7/widget/n;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/n;Landroid/support/v7/widget/o;)V
    .locals 0

    .prologue
    .line 1703
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n$d;-><init>(Landroid/support/v7/widget/n;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/support/v7/widget/n$d;->a:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Landroid/support/v7/widget/n$d;->a:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->c()V

    .line 1710
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Landroid/support/v7/widget/n$d;->a:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->a()V

    .line 1715
    return-void
.end method
