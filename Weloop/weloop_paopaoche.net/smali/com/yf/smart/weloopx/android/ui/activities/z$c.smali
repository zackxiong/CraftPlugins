.class abstract Lcom/yf/smart/weloopx/android/ui/activities/z$c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$c;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V
    .locals 0

    .prologue
    .line 1425
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z$c;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$c;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->I(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    :goto_0
    return-void

    .line 1433
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z$c;->a(Landroid/view/View;)V

    goto :goto_0
.end method
