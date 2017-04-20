.class abstract Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;


# direct methods
.method private constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;Lcom/yf/smart/weloopx/android/ui/activities/cw;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/widget/CompoundButton;Z)V
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity$a;->b:Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;->n(Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/DisturbActivity$a;->a(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method
