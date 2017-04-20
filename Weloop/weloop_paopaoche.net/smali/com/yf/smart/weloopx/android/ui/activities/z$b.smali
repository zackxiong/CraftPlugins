.class abstract Lcom/yf/smart/weloopx/android/ui/activities/z$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/z;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$b;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z$b;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/widget/CompoundButton;Z)V
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z$b;->b:Lcom/yf/smart/weloopx/android/ui/activities/z;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->I(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    :goto_0
    return-void

    .line 1445
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/z$b;->a(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method
