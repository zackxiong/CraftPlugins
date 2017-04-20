.class Landroid/support/v13/app/a$c;
.super Landroid/support/v13/app/a$a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v13/app/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Fragment;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p1, p2}, Landroid/support/v13/app/b;->a(Landroid/app/Fragment;Z)V

    .line 42
    return-void
.end method
