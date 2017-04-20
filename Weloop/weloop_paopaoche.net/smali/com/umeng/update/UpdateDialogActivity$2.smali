.class Lcom/umeng/update/UpdateDialogActivity$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/umeng/update/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/umeng/update/UpdateDialogActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/umeng/update/UpdateDialogActivity$2;->a:Lcom/umeng/update/UpdateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/update/UpdateDialogActivity$2;->a:Lcom/umeng/update/UpdateDialogActivity;

    iput-boolean p2, v0, Lcom/umeng/update/UpdateDialogActivity;->c:Z

    .line 90
    return-void
.end method
