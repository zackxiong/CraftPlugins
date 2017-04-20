.class Landroid/support/v7/widget/n$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/n;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/n;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Landroid/support/v7/widget/n$c;->a:Landroid/support/v7/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/n;Landroid/support/v7/widget/o;)V
    .locals 0

    .prologue
    .line 1718
    invoke-direct {p0, p1}, Landroid/support/v7/widget/n$c;-><init>(Landroid/support/v7/widget/n;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/support/v7/widget/n$c;->a:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/widget/n;->e()V

    .line 1721
    return-void
.end method
