.class final Lcom/yf/lib/ui/fragments/FragmentTabHost$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/ui/fragments/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;

.field private d:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->b:Ljava/lang/Class;

    .line 44
    iput-object p3, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->c:Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->d:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->d:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/lib/ui/fragments/FragmentTabHost$b;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yf/lib/ui/fragments/FragmentTabHost$b;->c:Landroid/os/Bundle;

    return-object v0
.end method
