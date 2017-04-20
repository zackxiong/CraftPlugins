.class Lcom/yf/smart/weloopx/android/ui/a/i$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/a/i$1;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/a/i$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/i$a;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/i$a;->a:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/i$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/a/i$a;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/a/i$a;->b:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/a/i$a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/a/i$a;->a:Landroid/widget/ImageView;

    return-object v0
.end method
